@extends('web.layout.index')
@section('css')
<link href="web_assets/css/cart.css" rel="stylesheet">
@endsection
@section('content')
<?php
use Gloudemans\Shoppingcart\Facades\Cart;
$carts = Cart::content(); 
// Cart::destroy();

// dd($carts);
?>
<style>
    .numbers-cart {
    position: relative;
    width: 100%;
    height: 40px;
    overflow: visible;
    border: 1px solid #dddddd;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -ms-border-radius: 3px;
    border-radius: 3px;
    background-color: #fff;
    text-align: left !important;
}
.button_cart {
    cursor: pointer;
    position: absolute;
    width: 33px;
    height: 40px;
    line-height: 38px;
    text-align: center;
    z-index: 2;
    font-size: 26px;
    font-weight: 300!important;
    color: #999;
}
</style>
<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="/">{{__("Home")}}</a></li>
                    <li>{{__("Cart")}}</li>
                </ul>
            </div>
            <h1>{{__("Cart")}}</h1>
        </div>
        <!-- /page_header -->
   
            <table class="table table-striped cart-list">
                <thead>
                    <tr>
                        <th>
                            {{__("Products")}}
                        </th>
                        <th>
                            {{__("Unit Price")}}
                        </th>
                        <th>
                            {{__("Quantity")}}
                        </th>
                        <th>
                            {{__("Subtotal")}}
                        </th>
                        <th>

                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($carts as $key =>$cart)
                    <tr>
                        <td>
                            <div class="thumb_cart">
                                @if(strstr($cart->image,"https") == "")
                                <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$cart->options->image}}.jpg" class="lazy" alt="Image">
                                @else
                                <img src="{{$cart->options->image}}" class="lazy" alt="Image">
                                @endif
                            </div>
                            <span class="item_cart">{{$cart->name}}</span>
                            <input type="hidden" name="cartId" value="{{$cart->id}}"/>
                        </td>
                        <td>
                            <strong>
                                @if($cart->options->price_new)
                                    {{number_format($cart->options->price_new,0,",",".")}}
                                @else
                                    {{number_format($cart->price,0,",",".")}}
                                @endif
                            </strong>
                        </td>
                        <td>
                            <div class="numbers-cart">
                                <input type="text" value="{{$cart->qty}}" id="quantity_1" class="qty2" name="quantity">
                                <div class="inc button_cart" data-id="{{$cart->rowId}}" data-priceNew="{{$cart->options->price_new}}" data-priceOld="{{$cart->price}}">+</div>
                                <div class="dec button_cart" data-id="{{$cart->rowId}}"data-priceNew="{{$cart->options->price_new}}" data-priceOld="{{$cart->price}}">-</div>
                            </div>
                        </td>
                        <td>
                            <strong id="subtotal_{{$cart->rowId}}">
                               <?php
                                if($cart->options->price_new ){
                                    $cart->price = $cart->options->price_new;
                                    $sum = $cart->price * $cart->qty;
                                }else{
                                    $sum = $cart->price * $cart->qty;
                                }
                               ?>
                               {{number_format($sum,0,',','.')}}
                            </strong>
                        </td>
                        <td class="options">
                            <a href="javascript:void(0)" class="delete-cart" data-id="{{$cart->rowId}}">
                                <i class="ti-trash"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

            <!-- <div class="row add_top_30 flex-sm-row-reverse cart_actions">
                <div class="col-sm-4 text-end">
                    <button type="submit" class="btn_1 gray">{{__("Update Cart")}}</button>
                </div>
                <div class="col-sm-8 text-start">
                    <div class="apply-coupon">
                        <div class="form-group">
                            <div class="row g-2">
                                <div class="col-md-6"><input type="text" name="coupon-code" value="" placeholder="{{__('Promo code')}}" class="form-control"></div>
                                <div class="col-md-4"><button type="button" class="btn_1 outline">{{__("Apply Coupon")}}</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
     
        <!-- /cart_actions -->

    </div>
    <!-- /container -->

    <div class="box_cart">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <ul>
                        <li>
                            <span>{{__("Subtotal")}}</span> 
                            
                            <p id="sumSubtotal">
                            {{Cart::subtotal(0,',','.');}}
                            </p>
                        </li>
                        <!-- <li>
                            <span >{{__("Tax")}}</span> $7.00
                        </li> -->
                        <li>
                            <span>{{__("Total")}}</span> 

                            <p id="total">$247.00</p>
                        </li>
                    </ul>
                    <a href="cart-2.html" class="btn_1 full-width cart">{{__("Proceed to Checkout")}}</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /box_cart -->

</main>
@endsection

@section('scripts')
<script>
    $(document).ready(function() {
        $(".button_cart").on("click", function () {
            var $button = $(this);
            var oldValue = $button.parent().find("input").val();
            if ($button.text() == "+") {
                var newVal = parseFloat(oldValue) + 1;
                // alert(newVal);
            } else {
                // Don't allow decrementing below zero
                if (oldValue > 1) {
                    var newVal = parseFloat(oldValue) - 1;
                    // alert(newVal);
                } else {
                    newVal = 1;
                }
            }
            $button.parent().find("input").val(newVal);
            var cartId = $(this).data('id');
                // alert(cartid);
            var priceNew = $(this).data('priceNew');
            var priceOld = $(this).data('priceOld');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{
                    cartId:cartId,
                    qty:newVal
                },
                url:'/updateCart',
                type: "post",
                success: function(data){
                    $("#subtotal_"+ cartId).text(data.subtotal.toLocaleString('vi-VN'));
                    // alert($s);
                    $('#sumSubtotal').text(data.sum.toLocaleString('vi-VN'));
                },error: function(){
                    alert("error");
                }
            });
          
        });

    });
</script>
<script>
    $(document).ready(function(){
        $('.delete-cart').on('click',function(){
            var Obj = $(this);
            // alert(Obj);
            var cartId = $(this).data('id');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url:'/deleteCart',
                type:'DELETE',
                data:{
                    cartId:cartId
                },
                dataType: 'json',
                success: function(data){
                    // alert('ok')
                    Obj.parents('tr').remove();
                    $('#sumSubtotal').text(data.sum.toLocaleString('vi-VN'));
                },error: function(){
                    alert("error");

                }
            })
        });
    });
</script>
@endsection