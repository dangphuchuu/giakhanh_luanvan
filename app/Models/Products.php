<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;
    protected $fillable = [
        'cat_id',
        'users_id',
        'brands_id',
        'sub_id',
        'name',
        'image',
        'youtube_path',
        'price',
        'price_new',
        'content',
        'featured_product',
        'status'
    ];
    public function categories()
    {
        return $this->belongsTo(Categories::class,'cat_id','id');
    }
    public function users()
    {
        return $this->belongsTo(User::class,'users_id','id');
    }
    public function brands()
    {
        return $this->belongsTo(Brands::class,'brands_id','id');
    }
    public function subcategories() {
        return $this->belongsTo(Subcategories::class, 'sub_id', 'id');
    }
    public function Productslibrary()
    {
        return $this->hasMany(ProductsLibrary::class,'products_id','id');
    }
}
