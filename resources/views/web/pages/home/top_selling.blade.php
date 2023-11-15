<div class="container margin_60_35">
				<div class="main_title mb-4">
				<a href="/list">
					<h2>{{__("Top Selling")}}</h2>
					<span>{{__("Top Selling")}}</span>
				</a>
					<!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p> -->
				</div>
				<div class="isotope-wrapper">
					<div class="row small-gutters">
						@foreach($top_selling as $pro)
							@foreach($pro->ProductsImage as $img)
								@if($loop ->first)
									@if(isset($pro->price) && isset($pro->price_new))
									<div class="col-6 col-md-4 col-xl-3 isotope-item sale">
										<div class="grid_item">
											<figure>
												<span class="ribbon off">-{{round((($pro->price - $pro->price_new)/$pro->price)*100,0) }} %</span>
												<a href="/detail/{{$pro->id}}">
												@if(strstr($img->image,"https") == "")
													<img style="width:270px; height:250px" class="img-fluid lazy" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
													<img style="width:270px; height:250px" class="img-fluid lazy" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
												@else
													<img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}" alt="">
													<img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}" alt="">
												@endif
												</a>
												<!-- <div data-countdown="2013/12/12" class="countdown"></div> -->
											</figure>
											<!-- <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div> -->
											<a href="/detail/{{$pro->id}}">
											<h3 class="d-block" style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$pro->name}}</h3>
											</a>
											<div class="price_box">
												<span class="new_price">{{number_format($pro->price_new,0,",",".")}} Vnđ</span>
												<span class="old_price">{{number_format($pro->price,0,",",".")}} Vnđ</span>
											</div>
											<ul>
												<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to favorites')}}"><i class="ti-heart"></i><span>{{__('Add to favorites')}}</span></a></li>
												<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to compare')}}"><i class="ti-control-shuffle"></i><span>{{__('Add to compare')}}</span></a></li>
												@if($pro->price || $pro->price_new)
												<li>
													<form action="/cart" method="post" id="formSubmitCart_{{$pro->id}}">
														@csrf
															@if(Auth::check())
																<a href="javascript:void(0)"  onclick="document.getElementById('formSubmitCart_{{$pro->id}}').submit();" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to cart')}}"><i class="ti-shopping-cart"></i><span>{{__('Add to cart')}}</span></a>
															@else
																<a href="/signin_signup" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to cart')}}"><i class="ti-shopping-cart"></i><span>{{__('Add to cart')}}</span></a>
															@endif
															<input type="hidden" name="products_id" value="{{$pro->id}}"/>
															<input type="hidden" name="quantity" value="1"/>
													</form>
												</li>
												@endif
											</ul>
										</div>
										<!-- /grid_item -->
									</div>
									@endif
								@endif
							@endforeach
						@endforeach
					</div>
					<!-- /row -->
				</div>
				<!-- /isotope-wrapper -->
			</div>