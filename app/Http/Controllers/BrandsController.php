<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use Illuminate\Http\Request;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;

class BrandsController extends Controller
{
    public function index(){
        $brands = Brands::all();
        return view('admin/pages/brands/index',['brands' => $brands]);
    }
    public function create(Request $request){
        if ($request->hasFile('Image')) {
            $img = $request->file('Image');
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'brands',
                'format' => 'jpg',

            ])->getPublicId();
            $brands = new Brands(
                [
                    'name'=>$request->name,
                    'image' => $cloud
                ]
            );
            $brands->save();
        }
        elseif(!$request->hasFile('Image')){
            $brands = new Brands(
                [
                    'name'=>$request->name
                ]
            );
            $brands->save();
            return redirect()->back();
        }
        else{
            return redirect()->back()->with('warning','vui lòng nhập ảnh');
        }
       
        return redirect()->back();
    }
    public function edit(Request $request,$id){
        $brands = Brands::find($id);
        $request->validate([
            'name' =>'required'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục"
        ]);
        if ($request->hasFile('Image')) {
            $img = $request->file('Image');
            if($brands->image !=''){
                Cloudinary::destroy($brands->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'brands',
                'format' => 'jpg',

            ])->getPublicId();
            $brands->image= $cloud;
        }
        $brands->name = $request->name;
        $brands->save();
        return redirect()->back();
    }
    public function destroy($id){
        $brands = Brands::find($id);
        Cloudinary::destroy($brands->image);
        $brands->delete();
        return redirect()->back();
    }
    public function status(Request $request){
        $brands = Brands::find($request->status_id);
        $brands->status = $request->active;
        $brands->save();
        return response('success',200);
    }
}
