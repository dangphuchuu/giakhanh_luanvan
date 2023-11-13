@extends('web.layout.index')
@section('css')
<link href="web_assets/css/account.css" rel="stylesheet">
@endsection
@section('content')
<main class="bg_gray">
		<div class="container margin_30">
			<div class="page_header">
				<div class="breadcrumbs">
					<ul>
						<li><a href="#">{{__('Home')}}</a></li>
						<li>{{__('Sign In & Sign Up')}}</li>
					</ul>
			</div>
			<h1>{{__("Sign In or Sign Up")}}</h1>
		</div>
		<!-- /page_header -->
			<div class="row justify-content-center">
			<!-- Sign In -->
				<div class="col-xl-6 col-lg-6 col-md-8">
					<div class="box_account">
						<h3 class="client">{{__("Sign In")}}</h3>
						<div class="form_container">
							<div class="row no-gutters">
								<div class="col-lg-6 pr-lg-1">
									<a href="#0" class="social_bt facebook">{{__("Login with Facebook")}}</a>
								</div>
								<div class="col-lg-6 pl-lg-1">
									<a href="#0" class="social_bt google">{{__("Login with Google")}}</a>
								</div>
							</div>
							<div class="divider"><span>{{__("OR")}}</span></div>
							<form action="/handle_login" method="post">
								@csrf
								<div class="form-group">
									<input type="text" class="form-control" 
									@if(session()->has('username_client'))
									value="{{session()->get('username_client')}}"
									@endif
									name="username" id="email" placeholder="{{__('Username')}}*">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" 
									@if(session()->has('password_client'))
									value="{{session()->get('password_client')}}"
									@endif
									name="password" id="password" placeholder="{{__('Password')}}*">
								</div>
								<div class="clearfix add_bottom_15">
									<div class="checkboxes float-start">
										<label class="container_check">{{__("Remember me")}}
											<input type="checkbox"
												@if(session()->has('username_client'))
												checked
												@endif
												name="rememberme"
											>
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="float-end"><a id="forgot" href="javascript:void(0);">{{__("Forgot Password?")}}</a></div>
								</div>
								<div class="text-center"><input type="submit" value="{{__('Sign In')}}" class="btn_1 full-width"></div>
							</form>
							@include('web.common.forgot_password')
						</div>
						<!-- /form_container -->
					</div>
				</div>

				<!-- Sign Up -->
				<div class="col-xl-6 col-lg-6 col-md-8">
					<div class="box_account">
						<h3 class="new_client">{{__("Sign Up")}}</h3> <small class="float-right pt-2 ">* {{__('Required Fields')}}</small>
						<div class="form_container">
							<form action="/register" method="POST">
							@csrf
							<div class="form-group">
								<input type="text" class="form-control" name="username" id="username" placeholder="{{__('Username')}}*">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password" id="password_in_2" value="" placeholder="{{__('Password')}}*">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="repassword" id="password_in_2" value="" placeholder="{{__('Confirm Password')}}*">
							</div>
							<div class="form-group">
								<input type="email" class="form-control" name="email" id="email_2" placeholder="{{__('Email')}}*">
							</div>
							<hr>
							<div class="private box">
								<div class="row no-gutters">
									<div class="col-6 pr-1">
										<div class="form-group">
											<input type="text" name="firstname" class="form-control" placeholder="{{__('First Name')}}*">
										</div>
									</div>
									<div class="col-6 pl-1">
										<div class="form-group">
											<input type="text" name="lastname" class="form-control" placeholder="{{__('Last Name')}}*">
										</div>
									</div>
									<div class="col-">
										<div class="form-group">
											<input type="text" name="address" class="form-control" placeholder="{{__('Address')}}">
										</div>
									</div>
								</div>
								<!-- /row -->
								<div class="row no-gutters">
									<div class="col-6 pr-1">
										<div class="form-group">
											<input type="text" name="district" class="form-control" placeholder="{{__('District')}}">
										</div>
									</div>
									<div class="col-6 pl-1">
										<div class="form-group">
											<input type="text" name="city" class="form-control" placeholder="{{__('City')}}">
										</div>
									</div>
								</div>
								<!-- /row -->
								
								<div class="row no-gutters">
									<div class="col-8 pl-1">
										<div class="form-group">
											<input type="text" name="phone" class="form-control" placeholder="{{__('Telephone')}}">
										</div>
									</div>
								</div>
								<!-- /row -->
					
							</div>
							<hr>

							<div class="text-center"><input type="submit" value="{{__('Sign Up')}}" class="btn_1 full-width"></div>
							</form>
						</div>
						<!-- /form_container -->
					</div>
					<!-- /box_account -->
				</div>
			</div>
			<!-- /row -->
			</div>
			<!-- /container -->
		</main>
		<!--/main-->
@endsection