<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;

class NewsController extends Controller
{
    public function index(){
        $news = News::all();
        return view('admin/pages/news/index',['news' => $news]);
    }
    public function create(Request $request){
        if ($request->hasFile('Image')) {

            foreach($request->file('Image') as $file){
                $img = $file;
                $cloud = Cloudinary::upload($img->getRealPath(), [
                    'folder' => 'news',
                    'format' => 'jpg',
                ])->getPublicId();

                $news = new News(
                    [
                        'image' => $cloud
                    ]
                );
                $news->save();
            }
           
        }
       
        return redirect()->back()->with('toast_success',__("Create successfully"));
    }
    public function edit(Request $request,$id){
        $news = News::find($id);
        if ($request->hasFile('Image')) {
            $img = $request->file('Image');
            if($news->image !=''){
                Cloudinary::destroy($news->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'news',
                'format' => 'jpg',

            ])->getPublicId();
            $news->image= $cloud;
            $news->save();
        }
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }
    public function destroy($id){
        $news = News::find($id);
        Cloudinary::destroy($news->image);
        $news->delete();
        return redirect()->back()->with('toast_success',__("Delete Successfully"));
    }
    public function status(Request $request){
        $news = News::find($request->status_id);
        $news->status = $request->active;
        $news->save();
        return response('success',200);
    }
}
