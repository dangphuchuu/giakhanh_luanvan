<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $fillable=[
        'title',
        'image',
        'content',
        'status'
    ];
    public function users()
    {
        return $this->belongsTo(User::class, 'users_id', 'id');
    }
}
