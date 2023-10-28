<?php

namespace App\Http\Controllers;

use App\Models\Subcategories;
use App\Models\Categories;
use App\Models\Products;
use Illuminate\Http\Request;

class SubCategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $subcategories = Subcategories::all();
        $categories = Categories::all();
        return view('admin/pages/subcategories/index',['subcategories' => $subcategories,'categories'=>$categories]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $request->validate([
            'name' =>'required|unique:subcategories'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục con",
            'name.unique' =>'Tên danh mục con này đã tồn tại'
        ]);
        $subcategories = new Subcategories([
            'name'=> $request->name,
            'cat_id'=>$request->cat_id
        ]);
        $subcategories->save();
        return redirect()->back();
    }

    public function edit(Request $request, $id)
    {
        $subcategories = Subcategories::find($id);
        $request->validate([
            'name' =>'required'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục con"
        ]);
        $subcategories->name= $request->name;
        $subcategories->cat_id= $request->cat_id;
        $subcategories->update();
        return redirect()->back();
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    public function destroy($id)
    {
        $subcategories = SubCategories::find($id);
        $check = count(Products::where('sub_id',$id)->get());
        if($check ==0){
            $subcategories::destroy($id);
            return redirect()->back();
        }else{
            return redirect()->back()->with('error',"Lỗi");
        }
       
    }
    public function status(Request $request)
    {
        $subcategories = SubCategories::find($request->status_id);
        $subcategories->status = $request->active;
        $subcategories->save();
        return response('success',200);
    }
}
