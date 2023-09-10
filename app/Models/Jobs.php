<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Jobs extends Model
{
    protected $fillable = ['title', 'duration', 'difficulty'];

    public function developers(): BelongsToMany
    {
        return $this->belongsToMany(Developer::class)
            ->withPivot('assigned_hours')
            ->withTimestamps();
    }
}

