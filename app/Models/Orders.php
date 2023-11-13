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
        'total',
        'status'
    ];
    public function user(){
        return $this->belongsTo(User::class,'users_id','id');
    }
    public function orders_details(){
        return $this->hasMany(Orders_Detail::class,'id','orders_id');
    }
}
