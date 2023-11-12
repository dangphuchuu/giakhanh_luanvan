@extends('web.layout.index')
@section('css')
<link href="web_assets/css/checkout.css" rel="stylesheet">
@endsection
@section('content')
<?php
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;

$carts = Cart::instance(Auth::user()->id); 
?>
<main class="bg_gray">
	
	<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="/">{{__("Home")}}</a></li>
					<li><a href="/cart">{{__("Cart")}}</a></li>
					<li>{{__("Checkout")}}</li>
				</ul>
		</div>
		<h1>{{__("Checkout")}}</h1>
			
	</div>
	<!-- /page_header -->
        <form action="/checkout" id="confirmCheckout" method="post">
            @csrf
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="step first">
						<h3>1. {{__("User info and Delivery address")}}</h3>
                        <div class="tab-content checkout">
                            <div class="tab-pane fade show active" id="tab_1" role="tabpanel" aria-labelledby="tab_1">
                                
                                    <div class="row no-gutters">
                                        <div class="col-6 form-group pl-1">
                                            <input type="text" value="{{Auth::user()->lastname}}" name="lastname" class="form-control" placeholder="{{__('Last Name')}}">
                                        </div>

                                        <div class="col-6 form-group pr-1">
                                            <input type="text" value="{{Auth::user()->firstname}}" name="firstname" class="form-control" placeholder="{{__('First Name')}}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <input type="email" value="{{Auth::user()->email}}" name="email" class="form-control" placeholder="Email">
                                    </div>

                                    <hr>
                                
                                    <!-- /row -->
                                    <div class="form-group">
                                        <input type="text" value="{{Auth::user()->address}}" name="address" class="form-control" placeholder="{{__('Address')}}">
                                    </div>
                                    <div class="row no-gutters">
                                        <div class="col-6 form-group pl-1">
                                            <input type="text" value="{{Auth::user()->district}}" name="district" class="form-control" placeholder="{{__('District')}}">
                                        </div>
                                        <div class="col-md-6 form-group pr-1">
                                            <div class="custom-select-form">
                                                <select class="wide add_bottom_15" name="city" id="country">
                                                    <option value="" selected>{{__("City")}}</option>
                                                    <option value="hcm">Hồ Chí Minh</option>
                                                    <option value="hn">Hà Nội</option>
                                                    <option value="dn">Đà Nẵng</option>
                                                    <option value="vt">Vũng Tàu</option>
                                                    <option value="ct">Cần Thơ</option>
                                                    <option value="bd">Bình Dương</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /row -->
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="{{Auth::user()->phone}}" name="phone" placeholder="{{__('Telephone')}}">
                                    </div>
                              
                            </div>
                            <!-- /tab_1 -->
                        </div>
					</div>
					<!-- /step -->
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="step last">
						<h3>2. {{__("Order Summary")}}</h3>
					<div class="box_general summary">
						<ul>
                            @foreach($carts->content() as $key => $cart)
							<li class="clearfix">
                                <a href="/detail/{{$cart->id}}" style="color:black !important;">
                                <em style="max-width: 300px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">  
                                    @if(strstr($cart->image,"https") == "")
                                    <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$cart->options->image}}.jpg" width="50" height="50" class="lazy" alt="Image">
                                    @else
                                    <img src="{{$cart->options->image}}" width="50" height="50" class="lazy" alt="Image">
                                    @endif
                                    {{$cart->qty}}x {{$cart->name}}
                                </em>  
                                </a>
                                <span style="margin-top:15px">
                                    @if($cart->options->price_new)
                                        {{number_format($cart->options->price_new,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                    @else
                                        {{number_format($cart->price,0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                    @endif
                                </span>
                            </li>
							@endforeach
						</ul>
						<ul>
							<li class="clearfix">
                                <em>
                                    <strong>{{__("Subtotal")}}</strong>
                                </em> 
                                <span>{{$carts->subtotal(0,',','.');}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                            </li>
                            
							<li class="clearfix">
                                <em>
                                    <strong>{{__("Tax")}}</strong>
                                </em> 
                                <span>{{$carts->tax(0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                            </li>

							<li class="clearfix">
                                <em>
                                    <strong>{{__("Shipping")}}</strong>
                                </em>
                                <span>{{__("Free")}}</span>
                            </li>
							
						</ul>
						<div class="total clearfix">{{__("Total")}} 
                            <span>{{$carts->total(0,',','.')}}<sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup></span>
                        </div>
						<a href="javascript:void(0)" onclick="document.getElementById('confirmCheckout').submit();" class="btn_1 full-width">{{__("Confirm and Pay")}}</a>
					</div>
					<!-- /box_general -->
					</div>
					<!-- /step -->
				</div>
			</div>
        </form>
			<!-- /row -->
	</div>
		<!-- /container -->
	</main>
	<!--/main-->
@endsection
@section('scripts')
<script>
    	// Other address Panel
		$('#other_addr input').on("change", function (){
	        if(this.checked)
	            $('#other_addr_c').fadeIn('fast');
	        else
	            $('#other_addr_c').fadeOut('fast');
	    });
	</script>
@endsection