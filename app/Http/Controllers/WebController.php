<?php

namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\BannersFeatured;
use App\Models\Brands;
use App\Models\Categories;
use App\Models\Products;
use App\Models\Subcategories;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function __construct(){
        // $categories = Categories::all();
        // $subcategories = Subcategories::all();
        // $brands = Brands::all();
        // view()->share('categories',$categories);
        // view()->share('subcategories',$subcategories);
        // view()->share('brands',$brands);
    }
    public function index()
    {
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(4);
        $categories = Categories::all()->where('status',1);
        $subcategories = Subcategories::all()->where('status',1);
        $brands = Brands::all()->where('status',1);
        $banners = Banners::all()->where('status',1);
        $bannersfeatured = BannersFeatured::all()->where('status',1)->take(3);
        $products_featured = Products::all()->where('status',1)->where('featured_product',1);
        return view('web/pages/home/index',[
            'categories' => $categories,
            'subcategories' => $subcategories,
            'brands'=>$brands,
            'products' => $products,
            'banners'=>$banners,
            'bannersfeatured'=>$bannersfeatured,
            'products_featured'=>$products_featured
        ]);
    }

}
