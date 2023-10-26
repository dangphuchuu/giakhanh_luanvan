<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Categories;
use App\Models\Products;
use App\Models\ProductsLibrary;
use App\Models\Subcategories;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Products::all();
        $categories = Categories::all();
        $subcategories = Subcategories::all();
        $brands = Brands::all();
        return view('admin/pages/products/index',
        [
            'products' => $products,
            'categories' => $categories,
            'subcategories' => $subcategories,
            'brands' => $brands
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|min:1',
        ], [
            'name.required' => 'Vui lòng nhập tên sản phẩm',
            'name.min' => 'Tên sản phẩm ít nhất 1 ký tự',
        ]);
        $request['users_id'] = Auth::user()->id;
        if($request->hasFile('Image')){
            $file = $request->file('Image');
            $img = $request['image'] = $file;
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'products',
                'format' => 'jpg',
            ])->getPublicId();
            $products = new Products(
                [
                    'cat_id' => $request->cat_id,
                    'users_id'=>$request->users_id,
                    'brands_id'=>$request->brands_id,
                    'sub_id'=>$request->sub_id,
                    'name'=>$request->name,
                    'image'=>$cloud,
                    'youtube_path'=>$request->youtube_path,
                    'price'=>$request->price,
                    'price_new'=>$request->price_new,
                    'content'=>$request->content,
                ]
            );
            $products->save();
            if($request->hasFile('Productslibrary'))
            {
                foreach($request->file('Productslibrary') as $file){
                    $img = $file;
                    $cloud = Cloudinary::upload($img->getRealPath(), [
                        'folder' => 'Productslibrary',
                        'format' => 'jpg',
                    ])->getPublicId();
                    $request['products_id'] = $products->id;
                    $request['image_library'] = $cloud;
                    ProductsLibrary::create([
                        'products_id'=>$request['products_id'],
                        'image_library'=>$request['image_library']
                    ]);
                }
            }
        }
        return redirect()->back();
    }

    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
    public function status(Request $request){
        $products = Products::find($request->status_id);
        $products->status = $request->active;
        $products->save();
        return response('success',200);
    }
    public function featured(Request $request){
        $products = Products::find($request->featured_id);
        $products->featured_product = $request->active;
        $products->save();
        return response('success',200);
    }
    public function getSubCategories($cat_id){
        $subcategories = Subcategories::where('cat_id', $cat_id)->get();
        foreach ($subcategories as $sub) {
            echo '<option value="' . $sub->id . '">' . $sub->name . '</option>';
        }
    }
}
