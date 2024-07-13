<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory;
    protected $table = "cars";

    protected $fillable = [
        'title', 'content', 'luggage', 'door', 'passengers', 'price', 'image', 'active', 'category_id', 'user_id'
    ];

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

}
