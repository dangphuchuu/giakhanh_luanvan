<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Orders;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Carbon;
class AdminController extends Controller
{
    
    public function index()
    {
        $sum = 0;
        $sum_today = 0;
        $orders = Orders::all()->where('status',3);
        $new_orders = Orders::orderBy('id', 'DESC')->take(3)->get();
        $orders_today = Orders::whereDate('created_at', Carbon::today())->get();

        foreach ($orders as $order) {
            $sum += $order->total;
        }

        foreach($orders_today->where('status',3) as $today){
            $sum_today += $today->total;
        }
        return view('admin.pages.home.index',[
            'orders' => $orders,
            'sum' => $sum,
            'orders_today'=>$orders_today,
            'sum_today'=>$sum_today,
            'new_orders'=>$new_orders
        ]);
    }

    public function login(){
        return view('admin.pages.auth.login');
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

    public function clients(){
        $user = User::role('client')->orderBy('id', 'DESC')->get();
        return view('admin.pages.clients.index',[
            'user'=>$user
        ]);
    }

    public function status_clients(Request $request){
        $user = User::find($request->status_id);
        $user->status = $request->active;
        $user->save();
        return response('success',200);
    }
}
