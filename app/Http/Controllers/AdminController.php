<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin/pages/home/index');
    }
    public function login(){
        return view('admin/pages/auth/login');
    }
    public function handle_login(Request $request){
        $credentials = Validator::make($request->all(),[
            'username' => 'required',
            'password' => 'required',
        ],
        [
            'username.required'=>__("the username field is required"),
            'password.required'=>__("the passwords field is required")
        ]);
        if($credentials->fails()){
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }
        if(Auth::attempt(['username' => $request['username'], 'password' => $request['password']])){
            toast(__("Login Successfully"),'success');
            return redirect('admin');
        }
        return back()->with('toast_error',__("Wrong username or password. Please try again"));
    }
    public function logout(){
        Auth::logout();
        return redirect('admin/login');
    }
}
