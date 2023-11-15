@extends('admin.layout.index')
@section('manage_orders')
active
@endsection
@section('css')
<link rel="stylesheet" href="admin_assets/vendors/simple-datatables/style.css">
@endsection
@section('content')
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>{{__("Orders")}}</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/admin">{{__("Dashboard")}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{__("Orders")}}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">

            <div class="card-body">
                <table class='table table-striped text-nowrap' id="table1">
                    <thead>
                        <tr>
                            <th>{{__("Order Number")}}</th>
                            <th>{{__("Name")}}</th>
                            <th>Email</th>
                            <th>{{__("Phone")}}</th>
                            <!-- <th>{{__("Content")}}</th> -->
                            <th>{{__("Status")}}</th>
                            <th>{{__("Detail")}}</th>
                            <th>{{__("Update Date")}}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($orders as $key => $order)
                        <tr>
                            <td>{{$order->id}}</td>
                            <td>{{$order->firstname}}</td>
                            <td>{{$order->email}}</td>
                            <td>{{$order->phone}}</td>
                            <!-- <td>{{$order->content}}</td> -->
                            <td id="status{{$order->id}}">
                                @if($order->status == 1)
                                <a href="javascript:void(0)" onclick="status({{$order->id}},2)"><span class="badge bg-warning">{{__("In Progress")}}</span></a>
                                @elseif($order->status == 2)
                                <a href="javascript:void(0)" onclick="status({{$order->id}},3)"><span class="badge bg-info">{{__("Delivery in Progress")}}</span></a>
                                @elseif($order->status == 3)
                                <a href="javascript:void(0)" onclick="status({{$order->id}},0)"><span class="badge bg-success">{{__("Delivered")}}</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="status({{$order->id}},1)"><span class="badge bg-danger">{{__("Cancelled")}}</span></a>
                                @endif
                            </td>
                            <td>
                                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#order_detail{{$order->id}}">
                                    <i data-feather="search"></i>
                                </a>
                                @include('admin/pages/orders/detail')
                            </td>
                            <td>{{$order->updated_at->format('d/m/Y - H:i')}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>
@endsection
@section('scripts')
<script src="admin_assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="admin_assets/js/vendors.js"></script>
<script>
    function status(status_id, active) {
        if (active === 1) {
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',2)">\
                <span class="badge bg-warning">{{__("In Progress")}}</span>\
            </a>')
        }else if(active === 2){
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',3)">\
                <span class="badge bg-info">{{__("Delivery in Progress")}}</span>\
            </a>')
        } else if(active === 3){
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',0)">\
                <span class="badge bg-success">{{__("Delivered")}}</span>\
            </a>')
        }else{
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',1)">\
                <span class="badge bg-danger">{{__("Cancelled")}}</span>\
            </a>')
        }
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: "/admin/orders/status",
            type: 'GET',
            dataType: 'json',
            data: {
                'active': active,
                'status_id': status_id
            },
            success: function(data) {
                if (data['success']) {
                    // alert(data.success);
                } else if (data['error']) {
                    alert(data.error);
                }
            }
        });
    }
</script>
@endsection