<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class developer_jobs extends Model
{
    use HasFactory;

    protected $table = 'developer_jobs';

    protected $fillable = [
        'assigned_hours',
        'created_at',
        'developer_id ',
        'jobs_id ',
        'updated_at'
    ];

    public function developer()
        {
            return $this->belongsTo(Developer::class, 'developer_id');
        }

    public function job()
    {
        return $this->belongsTo(Jobs::class, 'jobs_id');
    }
}
