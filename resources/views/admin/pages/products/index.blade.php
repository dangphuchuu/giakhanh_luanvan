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
                            <th>Staff</th>
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
                                @if($pro->image == NULL)
                                    <img style="width: 150px">
                                @else
                                    @if(strstr($pro->image,"https") == "")
                                        <img style="width: 150px" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$pro->image}}.jpg" >
                                    @elseif(strstr($pro->image,"https") != "")
                                        <img style="width: 150px" src="{{$pro->image}}" >
                                    @endif
                                @endif 
                            </td>
                            <td class="text-truncate" style="max-width: 130px;">{{$pro->name}}</td>
                            <td>{{$pro->categories->name}}</td>
                            <td>{{$pro->subcategories->name}}</td>
                            <td>{{$pro->brands->name}}</td>
                            <td>{{$pro->users->firstname}}</td>
                            <td id="featured{{$pro->id}}">
                                @if($pro->featured_product == 1)
                                <a href="javascript:void(0)" onclick="featured({{$pro->id}},0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="featured({{$pro->id}},1)"><span class="badge bg-danger">Inactive</span></a>
                                @endif
                            </td>
                            <td id="status{{$pro->id}}">
                                @if($pro->status == 1)
                                <a href="javascript:void(0)" onclick="status({{$pro->id}},0)"><span class="badge bg-success">Active</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="status({{$pro->id}},1)"><span class="badge bg-danger">Inactive</span></a>
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
            url: "/admin/products/status",
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
<script>
    function featured(featured_id, active) {
        if (active === 1) {
            $("#featured" + featured_id).html(' <a href="javascript:void(0)" onclick="featured(' + featured_id + ',0)">\
                <span class="badge bg-success">Active</span>\
            </a>')
        } else {
            $("#featured" + featured_id).html(' <a href="javascript:void(0)" onclick="featured(' + featured_id + ',1)">\
                <span class="badge bg-danger">Inactive</span>\
            </a>')
        }
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: "/admin/products/featured",
            type: 'GET',
            dataType: 'json',
            data: {
                'active': active,
                'featured_id': featured_id
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
<script>
     $(document).ready(function(){
        $("#category").change(function(){
            var cat_id = $(this).val();
            $.get("admin/products/subcategory/"+cat_id,function(data){
                $("#subcategory").html(data);
            });
        });
    });
</script>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('.file-uploader .img_products').attr('src', e.target.result).removeClass('d-none');
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $(".image-products").change(function() {
        readURL(this);
    });
</script>
<script>
    $(document).ready(function(){
        $('#checkPrice').change(function(){
        if($(this).is(":checked"))
        {
            $('.new_price').removeAttr('disabled');
        }
        else 
            {
                $('.new_price').attr('disabled','');
                }
        });
    });
</script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.2.1/classic/ckeditor.js"></script>
<script>
ClassicEditor
        .create( document.querySelector( '#content' ) )
        .then( content => {
                console.log( content );
        } )
        .catch( error => {
                console.error( error );
        } );
</script>
@endsection