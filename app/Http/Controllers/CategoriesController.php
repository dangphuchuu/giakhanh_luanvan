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

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, $id) 
    {
        $categories = Categories::find($id);
        $request->validate([
            'name' =>'required|unique:categories'
        ],[
            'name.required'=>"Vui lòng nhập tên danh mục",
            'name.unique' =>'Tên danh mục này đã tồn tại'
        ]);
        $categories['name'] = $request['name'];
        $categories->update();
        
        return redirect()->back();
    }
    public function destroy($id)
    {
        $categories = Categories::find($id);
        $categories::destroy($id);
        return redirect()->back();
    }
}
