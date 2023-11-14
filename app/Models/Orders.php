<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;
    protected $fillable = [
        'users_id',
        'content',
        'tax',
        'subtotal',
        'total',
        'status'
    ];
    public function user(){
        return $this->belongsTo(User::class,'users_id','id');
    }
    public function products(){
        return $this->belongsToMany(Products::class,'orders__details','orders_id','products_id')->withPivot('quantity');
    }
}
