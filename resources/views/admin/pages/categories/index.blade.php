@extends('admin/layout/index')
@section('manage_products')
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
                <h3>Categories</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Categories</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal" data-bs-target="#categories_create">
                       Create
            </button>
            @include('admin/pages/categories/create')
            </div>
            <div class="card-body">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($categories as $key => $cat)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>{{$cat->name}}</td>
                            <td id="status{{$cat->id}}">
                                @if($cat->status == 1)
                                <a href="javascript:void(0)" onclick="status({{$cat->id}},0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="status({{$cat->id}},1)"><span class="badge bg-danger">Inactive</span></a>
                                @endif
                            </td>
                            <td>
                            <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#categories_edit{{$cat->id}}">
                                <i data-feather="edit"></i>
                             </a>
                                @include('admin/pages/categories/edit')
                            </td>
                            <td>
                            <a href="admin/categories/delete/{{$cat->id}}" onclick="return confirm('Are you sure you want to delete this')">
                                    <i data-feather="trash-2"></i>
                             </a> 
                            </td>
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
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',0)">\
                <span class="badge bg-success">Active</span>\
            </a>')
        } else {
            $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',1)">\
                <span class="badge bg-danger">Inactive</span>\
            </a>')
        }
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: "/admin/categories/status",
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