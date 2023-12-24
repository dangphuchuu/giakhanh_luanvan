@extends('admin/layout/index')
@section('css')

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
@endsection
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
                    <!-- <h3 class='card-heading p-1 pl-3'>Sales</h3> -->
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                                <p>{{__("From:")}} <input type="text" id="datepickerFrom" class="form-control" style="width:70%"/>
                                </p>
                                <input id="btn-filter" class="btn btn-primary mt-2" type="button" value="submit"/>
                                <h3 class='mt-5'>Sales</h3>
                                <h1 >$21,102</h1>
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
                        <div class="col-md-2">
                                <p>{{__("To:")}} <input type="text" id="datepickerTo" class="form-control" style="width:70%"/>
                                </p>
                        </div>
                        <div class="col-md-8 col-12">
                            <canvas id="bar"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            @include('admin.pages.home.orders_today')
        </div>
    </div>
</section>
</div>
@endsection
@section('scripts')
<script>
  $( function() {
    $( "#datepickerTo" ).datepicker({
        maxDate: '0',
        dateFormat:"yy-mm-dd",
        duration:"slow"
    });
  });
  $( function() {
    $( "#datepickerFrom" ).datepicker({
        dateFormat:"yy-mm-dd",
        duration:"slow"
    });
  });
</script>
<script>
    $("#btn-filter").click(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var from = $('#datepickerFrom').val();
        var to = $('#datepickerTo').val();
        $.ajjax({
            url:"admin/filter-by-date",
            method:"GET",
            dataType:"json",
            data:{
                from:from,
                to:to
            },
            success:function(data){

            }
        });
    });
</script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
@endsection