<?php

namespace App\Http\Controllers;

use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function index(){
        $info = Info::find(1);
        return view('admin.pages.information.index',[
            'info'=>$info
        ]);
    }
    public function info(Request $request){
        $info = Info::find(1);
        if($request->hasFile('Image')){
            $img = $request->file('Image');
            $format = $img ->getClientOriginalExtension();
            if ($format != 'jpg' && $format != 'png' && $format != 'jpeg') {
                return redirect()->back()->with('toast_warning', __('Not Support ') . $format);
            }
            if ($info->logo != '') {
                unlink('images/favicon/' . $info->logo);
            }
            $img->move('images/favicon/', "logo.png");
            $info->logo =  "logo.png";
        }
        $info->name = $request->name;
        $info->phone = $request->phone;
        $info->email = $request->email;
        $info->facebook = $request->facebook;
        $info->twitter = $request->twitter;
        $info->youtube = $request->youtube;
        $info->address = $request->address;
        $info->worktime = $request->worktime;
        $info->copyright = $request->copyright;
        $info->save();
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }
}
