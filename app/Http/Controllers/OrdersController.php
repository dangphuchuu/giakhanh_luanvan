<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function index(){
        $orders = Orders::all();
        return view('admin.pages.orders.index',[
            'orders' => $orders
        ]);
    }
    
    public function orders(){

    }
}
