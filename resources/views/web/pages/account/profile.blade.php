@extends('web.layout.index')
@section('css')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
@endsection
@section('content')
<style type="text/css">
    body {
        background: #f7f7ff;
    }

    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0 solid transparent;
        border-radius: .25rem;
        margin-bottom: 1.5rem;
        box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
    }

    .me-2 {
        margin-right: .5rem !important;
    }
</style>
<div class="container">
    <div class="main-body ">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <form action="/imageProfile" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="d-flex flex-column align-items-center text-center">
                                @if($user->image == NULL)
                                <img src="images/avatar/avatar.png" class="rounded-circle p-1 bg-primary " width="110">
                                @else
                                    @if(strstr($user->image,"https") == "")
                                    <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$user->image}}.jpg" class="rounded-circle p-1 bg-primary mb-2" height="100" width="100">
                                    @else
                                    <img src="images/avatar/avatar.png" class="rounded-circle p-1 bg-primary" width="110">
                                    @endif
                                @endif
                                <input type="file" name="Image" class="form-control "/>
                                <div class="mt-3">
                                    @if(Session("language") == "en")
                                        <h4>{{$user->firstname}} {{$user->lastname}} </h4>
                                    @else
                                        <h4>{{$user->lastname}} {{$user->firstname}}</h4>
                                    @endif
                                    <p class="text-secondary mb-1">{{__("Username")}}: {{$user->username}}</p>
                                    <!-- <p class="text-secondary mb-1">Email: {{$user->email}}</p>
                                    <p class="text-muted font-size-sm">Phone: {{$user->phone}}</p> -->
                                    <button type="submit" class="btn btn-outline-primary">{{__("Update Image")}}</button>
                                </div>
                            </div>
                        </form>
                        <hr class="my-4">
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <form action="/profile" method="POST">
                        @csrf
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6>{{__("First Name")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="firstname" class="form-control" value="{{$user->firstname}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6>{{__("Last Name")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="lastname" class="form-control" value="{{$user->lastname}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6>Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="email" class="form-control" value="{{$user->email}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6>{{__("Phone")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="phone" class="form-control" value="{{$user->phone}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6>{{__("Address")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="address" class="form-control" value="{{$user->address}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6 class="mb-0">{{__("District")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="district" class="form-control" value="{{$user->district}}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3 mt-2">
                                <h6 class="mt-1">{{__("City")}}</h6>
                            </div>
                            <div class="col-sm-9">
                                <div class="custom-select-form">
                                    <select class="wide add_bottom_15" name="city" id="city">
                                        <option value="">{{__("City")}}</option>
                                        <option @if($user->city == 'hcm') selected @endif value="hcm">Hồ Chí Minh</option>
                                        <option @if($user->city == 'hn') selected @endif value="hn">Hà Nội</option>
                                        <option @if($user->city == 'dn') selected @endif value="dn">Đà Nẵng</option>
                                        <option @if($user->city == 'vt') selected @endif value="vt">Vũng Tàu</option>
                                        <option @if($user->city == 'ct') selected @endif value="ct">Cần Thơ</option>
                                        <option @if($user->city == 'bd') selected @endif value="bd">Bình Dương</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <input type="checkbox" class="checkPassword" name="changepassword">
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">{{__("Password")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="password" class="password form-control" disabled>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">{{__("RePassword")}}</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="repassword" class="password form-control" disabled>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9 text-secondary">
                                <input type="submit" class="btn btn-primary px-4" value="{{__('Save Changes')}}">
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
        
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<!-- <script>
    $(document).ready(function(){
       $("#city option[value='{{$user->city}}']").prop("selected",true);
    });
</script> -->
<script>
    $(document).ready(function(){
        $('.checkPassword').change(function(){
        if($(this).is(":checked"))
        {
            $('.password').removeAttr('disabled');
        }
        else 
        {
            $('.password').attr('disabled','');
        }
        });
    });
</script>

@endsection