<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use Illuminate\Http\Request;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Contracts\Filesystem\Cloud;

class BrandsController extends Controller
{
    public function __construct(){
        $cloud_name = cloud_name();
        view()->share('cloud_name',$cloud_name);
    }
    public function index(){
        $brands = Brands::all();
        return view('admin/pages/brands/index',['brands' => $brands]);
    }
    public function create(Request $request){
        if ($request->hasFile('Image')) {
            $file = $request->file('Image');
            $img = $request['image'] = $file;
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
        }else{
            return redirect()->back()->with('warning','Vui lòng nhập hình ảnh');
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
            $file = $request->file('Image');
            $img = $request['image'] = $file;
            if($brands->image !=''){
                Cloudinary::destroy($brands->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'brands',
                'format' => 'jpg',

            ])->getPublicId();
            $request['image'] = $cloud;
            
        }
        $brands->name = $request->name;
        $brands->update($request->all());
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
