<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function index()
    {
        $orders = Orders::orderBy('id', 'DESC')->get();
        return view('admin.pages.orders.index', [
            'orders' => $orders
        ]);
    }
    public function status(Request $request)
    {
        $order = Orders::find($request->status_id);
        $order->status = $request->active;
        $order->save();
        if ($order->status == 0) {
            foreach ($order->products as $orderPro) {
                $orderPro->quantity = $orderPro->quantity + $orderPro->pivot->quantity;
                $orderPro->save();
            }
        }
        return response('success', 200);
    }
}
