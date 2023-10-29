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
use Illuminate\Support\Facades\Validator;

class ProductsController extends Controller
{
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

    public function create(Request $request)
    {
        $validate = Validator::make($request->all(),[
            'name' =>'required'
        ],[
            'name.required'=>__("Name field is required")
        ]);

        if($validate->fails()){
            return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
        }

        $request['users_id'] = Auth::user()->id;
        if($request->hasFile('Image')){
            $img = $request->file('Image');
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
        }else{
            return redirect()->back()->with('toast_error',__("Please choose image"));
        }
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
      
        return redirect()->back()->with('toast_success',__("Create successfully"));
    }

    public function edit(Request $request,$id)
    {
        $products = Products::find($id);
        $validate = Validator::make($request->all(),[
            'name' =>'required'
        ],[
            'name.required'=>__("Name field is required")
        ]);

        if($validate->fails()){
            return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
        }

        $request['users_id'] = Auth::user()->id;

        if($request->hasFile('Image')){
            $img = $request->file('Image');
            if($products->image !=''){
                Cloudinary::destroy($products->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'products',
                'format' => 'jpg',
            ])->getPublicId();
            // var_dump($cloud);
            $products->image = $cloud;
        }

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
        $products->cat_id = $request->cat_id;
        $products->users_id = $request->users_id;
        $products->brands_id = $request->brands_id;
        $products->sub_id = $request->sub_id;
        $products->name = $request->name;
        $products->youtube_path = $request->youtube_path;
        $products->price = $request->price;
        $products->price_new = $request->price_new;
        $products->content = $request->content;
        $products->save();
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }

    public function destroy($id)
    {
        $products = Products::find($id);
        $productsLibrary= ProductsLibrary::where('products_id',$products->id)->get();
        if($products->status == 0){
            Cloudinary::destroy($products->image);
            foreach($productsLibrary as $productslib){
                Cloudinary::destroy($productslib->image_library);
            }
            $products->delete();
            return redirect()->back()->with('toast_success',__("Delete Successfully"));
        }else{
            return redirect()->back()->with('toast_warning',__("Please change status to Inactive to delete"));
        }
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
    public function getSubCategories_edit($cat_id){
        $subcategories = Subcategories::where('cat_id', $cat_id)->get();
        foreach ($subcategories as $sub) {
            echo '<option value="' . $sub->id . '">' . $sub->name . '</option>';
        }
    }
    public function deleteImages($id){
        $productsLibrary = ProductsLibrary::find($id);
        Cloudinary::destroy($productsLibrary->image_library);
        $productsLibrary->delete();
        return response()->json(['success'=>"Delete successfully"]);
    }
}
