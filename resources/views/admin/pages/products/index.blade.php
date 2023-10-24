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
                <h3>Products</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Products</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal" data-bs-target="#products_create">
                       Create
            </button>
            @include('admin/pages/products/create')
            </div>
            <div class="card-body">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>image</th>
                            <th>Name</th>
                            <th>Categories</th>
                            <th>Subcategories</th>
                            <th>Brands</th>
                            <th>featured</th>
                            <th>Status</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $key => $pro)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>
                                <img style="width: 200px" src="{{$pro->image}}" alt="">
                            </td>
                            <td class="text-truncate" style="max-width: 200px;">{{$pro->name}}</td>
                            <td>{{$pro->categories->name}}</td>
                            <td>{{$pro->subcategories->name}}</td>
                            <td>{{$pro->brands}}</td>
                            <td>
                                @if($pro->featured_product == 1)
                                <a href="javascript:void(0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)"><span class="badge bg-danger">Inactive</span></a>
                                @endif
                            </td>
                            <td>
                                @if($pro->status == 1)
                                <a href="javascript:void(0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)"><span class="badge bg-danger">Inactive</span></a>
                                @endif
                            </td>
                            <td>
                            <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#products_edit{{$pro->id}}">
                                <i data-feather="edit"></i>
                             </a>
                                @include('admin/pages/products/edit')
                            </td>
                            <td>
                            <a href="admin/products/delete/{{$pro->id}}" onclick="return confirm('Are you sure you want to delete this')">
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
@endsection