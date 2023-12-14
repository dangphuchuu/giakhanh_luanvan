@extends('admin/layout/index')
@section('dashboard')
active
@endsection
@section('content')
<div class="main-content container-fluid">
<div class="page-title">
    <h3>{{__("Dashboard")}}</h3>
    <p class="text-subtitle text-muted">{{__("Display your statistics")}}</p>
</div>
<section class="section">
    <div class="row mb-2">
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between'>
                            <h3 class='card-title'>{{__("Sales Today")}}</h3>
                            <div class="card-right d-flex align-items-center text-nowrap">
                                <p>{{$orders_today->count()}} </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas4" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between'>
                            <h3 class='card-title'>{{__("Revenue Today")}}</h3>
                            <div class="card-right d-flex align-items-center text-nowrap">
                                <p>{{number_format($sum_today,0,',','.')}} <sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup> </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas2" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between'>
                            <h3 class='card-title'>{{__("Total Orders")}}</h3>
                            <div class="card-right d-flex align-items-center text-nowrap" >
                                <p>{{$orders->count()}} </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas3" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between '>
                            <h3 class='card-title'>{{__("Total Revenue")}}</h3>
                            <div class="card-right d-flex align-items-center text-nowrap" style="margin-left:2px">
                                <p>{{number_format($sum,0,',','.')}} <sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup> </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas1" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-4">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class='card-heading p-1 pl-3'>Sales</h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4 col-12">
                            <div class="pl-3">
                                <h1 class='mt-5'>$21,102</h1>
                                <p class='text-xs'><span class="text-green"><i data-feather="bar-chart" width="15"></i> +19%</span> than last month</p>
                                <div class="legends">
                                    <div class="legend d-flex flex-row align-items-center">
                                        <div class='w-3 h-3 rounded-full bg-info me-2'></div><span class='text-xs'>Last Month</span>
                                    </div>
                                    <div class="legend d-flex flex-row align-items-center">
                                        <div class='w-3 h-3 rounded-full bg-blue me-2'></div><span class='text-xs'>Current Month</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-12">
                            <canvas id="bar"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="card-title">{{__("Orders Today")}}</h4>
                    <div class="d-flex ">
                        <i data-feather="download"></i>
                    </div>
                </div>
                <div class="card-body px-0 pb-0">
                    <div class="table-responsive">
                        <table class='table mb-0' id="table1">
                            <thead>
                                <tr>
                                    <th>{{__("Name")}}</th>
                                    <th>Email</th>
                                    <th>{{__("Phone")}}</th>
                                    <th>{{__("City")}}</th>
                                    <th>{{__("Status")}}</th>
                                    <th>{{__("Order date")}}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders_today as $order)
                                <tr>
                                    @if(Session("language") == "en")
                                    <td>{{$order->firstname}} {{$order->lastname}}</td>
                                    @else
                                    <td>{{$order->lastname}} {{$order->firstname}}</td>
                                    @endif
                                    <td>{{$order->email}}</td>
                                    <td>{{$order->phone}}</td>
                                    <td>
                                        @if($order->city == "hcm")
                                        Hồ Chí Minh
                                        @elseif($order->city == "hn")
                                        Hà Nội
                                        @elseif($order->city == "dn")
                                        Đà Nẵng
                                        @elseif($order->city == "ct")
                                        Cần Thơ
                                        @elseif($order->city == "bd")
                                        Bình Dương
                                        @elseif($order->city == "vt")
                                        Vũng Tàu
                                        @endif
                                    </td>
                                    <td>
                                        @if($order->status == 1)
                                    <span class="badge bg-warning">{{__("In Progress")}}</span>
                                        @elseif($order->status == 2)
                                    <span class="badge bg-info">{{__("Delivery in Progress")}}</span>
                                        @elseif($order->status == 3)
                                    <span class="badge bg-success">{{__("Delivered")}}</span>
                                        @else
                                    <span class="badge bg-danger">{{__("Cancelled")}}</span>
                                        @endif
                                    </td>
                                    <td>
                                        {{$order->created_at->format('d/m/Y | H:i')}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
@endsection