@extends('web.layout.index')
@section('css')
<link href="web_assets/css/track_order.css" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
@endsection
@section('content')
<div class="container">
    @if($order!=null)
    <article class="card">
        <header class="card-header"> {{__("Tracking Orders")}}</header>
        <div class="card-body">
            <h6>{{__("Order ID")}}: {{$order->id}}</h6>
            <article class="card">
                <div class="card-body row">
                    <div class="col"> <strong>{{__("Estimated Delivery time")}}:</strong> <br>{{$order->updated_at->addDays(7)->format('d/m/Y')}} </div>
                    @if(isset($order->phone_sender) && isset($order->firstname_sender))
                        <div class="col"> <strong>{{__("Sender BY")}}:</strong> <br> 
                        @if(Session("language") == "en")
                        {{$order->firstname_sender}} {{$order->lastname_sender}} 
                        @else
                        {{$order->lastname_sender}} {{$order->firstname_sender}}  
                        @endif
                        | 
                    <i class="fa fa-phone"></i> +{{$order->phone_sender}} </div>
                    @endif  
                    <div class="col">
                        <strong>{{__("Status")}}:</strong> <br>
                        @if($order->status == 1)
                        <span style="color:#fdac41">{{__("In Progress")}}</span>
                        @elseif($order->status == 2)
                        <span style="color:#41b1f9">{{__("Delivery in Progress")}}</span>
                        @elseif($order->status == 3)
                        <span style="color:#39da8a">{{__("Delivered")}}</span>
                        @else
                        <span style="color:#ff5b5c">{{__("Cancelled")}}</span>
                        @endif
                    </div>
                    <div class="col"> <strong>{{__("Tracking")}} #:</strong> <br> {{date('dmY')}}{{$order->id}} </div>
                </div>
            </article>
            <div class="track">
                <div class="step active">
                    <span class="icon">
                        <i class="fa fa-home" style="margin-top: 7px;font-size: 25px;"></i>
                    </span>
                    <span class="text">{{__("In Progress")}}</span>
                </div>
                <div class="step active">
                    <span class="icon">
                        <i class="fa fa-truck" style="margin-top: 7px;font-size: 24px;margin-right: 3px;"></i>
                    </span>
                    <span class="text">{{__("Delivery in Progress")}}</span>
                </div>
                <div class="step active">
                    <span class="icon">
                        <i class="fa fa-check" style="margin-top: 8px;font-size: 24px;"></i>
                    </span>
                    <span class="text">{{__("Delivered")}}</span>
                </div>
            </div>
            <hr>
            <ul class="row">
                @foreach($order->products as $orderPro)
                <li class="col-md-4">
                    <a href="/detail/{{$orderPro->id}}" style="color:black !important;">
                        <figure class="itemside mb-3">
                            <div class="aside"><img
                                    src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$orderPro->ProductsImage->first()->image}}.jpg"
                                    class="img-sm border"></div>
                            <figcaption class="info align-self-center">
                                <p class="title">
                                    {{$orderPro->name}}
                                </p>
                                <span class="text-muted">
                                    @if($orderPro->price_new)
                                    {{number_format($orderPro->price_new,0,',','.')}}<sup
                                        style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                    @else
                                    {{number_format($orderPro->price,0,',','.')}}<sup
                                        style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                    @endif
                                </span>
                            </figcaption>
                        </figure>
                    </a>
                </li>
                @endforeach
            </ul>
            <hr>
        </div>
    </article>
    @else
    <div class="row justify-content-center text-center">
        
    <img src="web_assets/img/no-order.svg" alt="" class="img-fluid add_bottom_15" style="width:50%">
    <p class="text-center " style="font-size:100px; margin-top: -100px;color:red">{{__("Order not found")}}</p>
    </div>
    @endif
</div>
@endsection