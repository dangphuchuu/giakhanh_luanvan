@extends('web.layout.index')
@section('css')
<link href="web_assets/css/checkout.css" rel="stylesheet">
@endsection
@section('content')
<?php
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
$carts = Cart::instance(Auth::user()->id); 
// dd($orders->orders_details);
?>
<main class="bg_gray">	
	<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="/">{{__("Home")}}</a></li>
					<li>{{__("Your Order")}}</li>
				</ul>
		</div>
		<!-- <h1>{{__("Your Order")}}</h1> -->
	</div>
	<!-- /page_header -->
        <form action="/checkout" id="confirmCheckout" method="post">
            @csrf
			<div class="row">
                @foreach($orders as $key => $order)
				<div class="col-lg-12 col-md-12">
					<div class="step first">
						<h3>{{__("Order Number")}}: {{date('d/m/Y')}}-{{$order->id}}</h3>
					<div class="box_general summary">
						<ul>
                            @foreach($order->products as $orderPro)
                                <li class="clearfix">
                                    <a href="/detail/{{$order->id}}" style="color:black !important;">
                                    <em style="max-width: 300px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"> 
                                        <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$orderPro->ProductsImage->first()->image}}.jpg" width="50" height="50" class="lazy" alt="Image">
                                    {{ $orderPro->pivot->quantity}} x {{$orderPro->name}}
                                    </em>  
                                    </a>
                                    <span style="margin-top:15px">
                                            @if($orderPro->price_new)
                                                {{number_format($orderPro->price_new,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                            @else
                                                {{number_format($orderPro->price,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                            @endif
                                    </span>
                                </li>
                            @endforeach
						</ul>
						<ul>
							<li class="clearfix">
                                <em>
                                    <strong>{{__("Quantity")}}</strong>
                                </em> 
                                <span>
                                    <?php 
                                        $sum=0;
                                        foreach($order->products as $orderPro){
                                            $sum+=$orderPro->pivot->quantity;
                                        }
                                        echo $sum;
                                    ?></span>
                            </li>
                            
                            <li class="clearfix">
                                <em>
                                    <strong>{{__("Subtotal")}}</strong>
                                </em> 
                                <span>{{number_format($order->subtotal,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                            </li>

							<li class="clearfix">
                                <em>
                                    <strong>{{__("Tax")}} ({{env('TAX',0)}}%)</strong>
                                </em> 
                                <span>{{number_format($order->tax,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                            </li>

							<li class="clearfix">
                                <em>
                                    <strong>{{__("Shipping")}}</strong>
                                </em>
                                <span>{{__("Free")}}</span>
                            </li>
							
						</ul>
						<div class="total clearfix">{{__("Total")}} 
                            <span>{{number_format($order->total,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                        </div>
					</div>
					<!-- /box_general -->
					</div>
					<!-- /step -->
				</div>
			    @endforeach
			</div>
            <div class="d-flex justify-content-center mt-3">
                    {{$orders->links()}}
            </div>
        </form>
			<!-- /row -->
	</div>
		<!-- /container -->
</main>
@endsection
