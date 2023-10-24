<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use Illuminate\Http\Request;

use function Laravel\Prompts\confirm;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Categories::all();
        return view('admin/pages/categories/index',['categories' => $categories]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $request->validate([
            'name' =>'required|unique:categories'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục",
            'name.unique' =>'Tên danh mục này đã tồn tại'
        ]);
        $categories = new Categories([
            'name'=> $request->name,
        ]);
        $categories->save();
        return redirect()->back();
    }

    public function edit(Request $request, $id) 
    {
        $categories = Categories::find($id);
        $request->validate([
            'name' =>'required|unique:categories'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục",
            'name.unique' =>'Tên danh mục này đã tồn tại'
        ]);
        $categories->name = $request->name;
        $categories->update();
        
        return redirect()->back();
    }
    public function destroy($id)
    {
        $categories = Categories::find($id);
        $categories::destroy($id);
        return redirect()->back();
    }
    public function status(Request $request)
    {
        $categories = Categories::find($request->status_id);
        $categories->status = $request->active;
        $categories->save();
        return response('success',200);
    }
}
