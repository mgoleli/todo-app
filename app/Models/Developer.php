<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Developer extends Model
{
    use HasFactory;

    protected $table = 'developer_skills';

    protected $fillable = [
        'name',
        'weekly_work_hours',
        'skill_level',
    ];

    public function jobs()
    {
        return $this->belongsToMany(Jobs::class)
            ->withPivot('assigned_hours')
            ->withTimestamps();
    }

    public function canHandleJob($job, $developer)
    {
        if ($developer->weekly_work_hours >= $job->duration && $developer->skill_level >= $job->difficulty) {
            return true;
        }
        return false;
    }

    public function assignJob($job, $developer, $hours)
    {
        $developer->jobs()->attach($job->id, ['assigned_hours' => $hours]);
        $developer->weekly_work_hours -= $hours; 
        $this->save();
    }
}
