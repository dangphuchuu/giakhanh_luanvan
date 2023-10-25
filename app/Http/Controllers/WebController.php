<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Categories;
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
        $categories = Categories::all();
        $subcategories = Subcategories::all();
        $brands = Brands::all();
        return view('web/pages/home/index',[
            'categories' => $categories,
            'subcategories' => $subcategories,
            'brands'=>$brands
        ]);
    }

}
