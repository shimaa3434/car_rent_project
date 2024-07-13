<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonials extends Model
{
    use HasFactory;
    protected $table = "testimonials";

    protected $fillable = [
        'name', 'position', 'image', 'content', 'published'
    ];

    // Ensure published is always treated as a boolean
    protected $casts = [
        'published' => 'boolean',
    ];
}
