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
                <h3>Subcategories</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Subcategories</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                 <a href="#">Create</a>
            </div>
            
            <div class="card-body">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>Categories</th>
                            <th>Subcategories</th>
                            <th>Status</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($subcategories as $sub)
                        <tr>
                            <td>{{$sub['categories']['name']}}</td>
                            <td>{{$sub['name']}}</td>
                            <td>
                                @if($sub['status'] == 1)
                                <a href="javascript:void(0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)"><span class="badge bg-danger">Inactive</span></a>
                                @endif
                            </td>
                            <td>
                                <i data-feather="edit"></i>
                            </td>
                            <td>
                                <i data-feather="trash-2"></i>
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
@endsection