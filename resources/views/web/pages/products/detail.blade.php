@extends('web.layout.index')
@section('css')
<link href="web_assets/css/product_page.css" rel="stylesheet">
@endsection
@section('content')
<style>
	#collapse-A img {
    width: 100%;
}
</style>
<main>
	    <div class="container margin_30">
            <div class="row">
	            <div class="col-md-6">
	                <div class="all">
	                    <div class="slider">
	                        <div class="owl-carousel owl-theme main">
                            @foreach($products->ProductsImage as $img)
                                    @if(strstr($img->image,"https") == "")
                                    <div style="background-image: url(https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg);" class="item-box"></div>
                                    @else
                                    <div style="background-image: url($img->image);" class="item-box"></div>
                                    @endif
                            @endforeach
	                        </div>
	                        <div class="left nonl"><i class="ti-angle-left"></i></div>
	                        <div class="right"><i class="ti-angle-right"></i></div>
	                    </div>
	                    <div class="slider-two">
	                        <div class="owl-carousel owl-theme thumbs">
							@foreach($products->ProductsImage as $img)
                                    @if(strstr($img->image,"https") == "")
	                                <div style="background-image: url(https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg);" class="item active"></div>
                                    @else
                                    <div style="background-image: url($img->image);" class="item active"></div>
                                    @endif
                            @endforeach
	                        </div>
							@if(count($products->ProductsImage)>5)
	                        <div class="left-t nonl-t"></div>
	                        <div class="right-t"></div>
							@endif
	                    </div>
	                </div>
	            </div>
	            <div class="col-md-6">
	                <div class="breadcrumbs">
	                    <ul>
	                        <li><a href="/">{{__("Home")}}</a></li>
	                        <li><a href="/category/{{$products->cat_id}}">{{$products->categories->name}}</a></li>
	                        <li><a href="/subcategory/{{$products->sub_id}}">{{$products->subcategories->name}}</a></li>
	                    </ul>
	                </div>
	                <!-- /page_header -->
					<form action="/cart" method="post">
						@csrf
						<div class="prod_info">
							<h1>{{$products->name}}</h1>
							<!-- <span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i><em>4 reviews</em></span> -->
							<p><small>{{$products->categories->name}}: {{$products->subcategories->name}}-{{$products->id}}</small>
							<!-- <br>Sed ex labitur adolescens scriptorem. Te saepe verear tibique sed. Et wisi ridens vix, lorem iudico blandit mel cu. Ex vel sint zril oportere, amet wisi aperiri te cum. -->
							</p>
							@if(isset($products->price) || isset($products->price_new))
							<div class="prod_options">
								<div class="row">
									<label class="col-xl-5 col-lg-5  col-md-6 col-6"><strong>{{__("Quantity")}}</strong></label>
									<div class="col-xl-4 col-lg-5 col-md-6 col-6">
										<div class="numbers-row">
											<input type="text" value="1"  id="quantity_1" class="qty2" name="quantity">
										</div>
									</div>
								</div>
							</div>
							@endif
							<div class="row">
								<div class="col-lg-5 col-md-6">
									@if($products->status == 1)
										@if(isset($products->price) && isset($products->price_new))
										<div class="price_main"><span class="new_price">{{number_format($products->price_new,0,",",".")}} Vnđ</span><span class="percentage">-{{round((($products->price - $products->price_new)/$products->price)*100,0) }}%</span> <span class="old_price">{{number_format($products->price,0,",",".")}} Vnđ</span></div>

										@elseif(!isset($products->price) && isset($products->price_new))
										<div class="price_main"><span class="new_price">{{number_format($products->price_new,0,",",".")}} Vnđ</span></div>

										@elseif(isset($products->price) && !isset($products->price_new))
										<div class="price_main"><span class="new_price">{{number_format($products->price,0,",",".")}} Vnđ</span></div>

										@else
										<div class="price_main"><span class="new_price" style="color: red !important">{{__("Contact")}}</span></div>

										@endif
										
									@else
									<div class="price_main"><span class="new_price" style="color: red !important">{{__("Out Stock")}}</span></div>

									@endif
								</div>
								@if($products->status == 1)
									@if(Auth::check())
										@if(isset($products->price) || isset($products->price_new))
										<div class="col-lg-4 col-md-6">
											<div class="btn_add_to_cart"><button type="submit" class="btn_1">{{__("Add to Cart")}}</button></div>
										</div>
										<input type="hidden" name="products_id" value="{{$products->id}}"/>
										@endif
									@else
										<div class="col-lg-4 col-md-6">
											<div class="btn_add_to_cart"><a href="/signin_signup" class="btn_1">{{__("Login")}}</a></div>
										</div>
										
									@endif
								@endif
							</div>
						</div>
					</form>
	                <!-- /prod_info -->
	                <div class="product_actions">
	                    <ul>
	                        <li>
	                            <a href="#"><i class="ti-heart"></i><span>{{__("Add to Wishlist")}}</span></a>
	                        </li>
	                        <li>
	                            <a href="#"><i class="ti-control-shuffle"></i><span>{{__("Add to Compare")}}</span></a>
	                        </li>
	                    </ul>
						
	                </div>
					
	                <!-- /product_actions -->
	            </div>
	        </div>
	        <!-- /row -->
	    </div>
	    <!-- /container -->
	    
	    <div class="tabs_product">
	        <div class="container">
	            <ul class="nav nav-tabs" role="tablist">
	                <li class="nav-item">
	                    <a id="tab-A" href="#pane-A" class="nav-link active" data-bs-toggle="tab" role="tab">{{__("Description")}}</a>
	                </li>
	                <!-- <li class="nav-item">
	                    <a id="tab-B" href="#pane-B" class="nav-link" data-bs-toggle="tab" role="tab">{{__("Reviews")}}</a>
	                </li> -->
	            </ul>
	        </div>
	    </div>
	    <!-- /tabs_product -->
	    <div class="tab_content_wrapper">
	        <div class="container">
	            <div class="tab-content" role="tablist">
	                <div id="pane-A" class="card tab-pane fade active show" role="tabpanel" aria-labelledby="tab-A">
	                    <div class="card-header" role="tab" id="heading-A">
	                        <h5 class="mb-0">
	                            <a class="collapsed" data-bs-toggle="collapse" href="#collapse-A" aria-expanded="false" aria-controls="collapse-A">
	                                Description
	                            </a>
	                        </h5>
	                    </div>
	                    <div id="collapse-A" class="collapse" role="tabpanel" aria-labelledby="heading-A">
	                        <div class="card-body">
	                            <div class="row justify-content-center ">
	                                  	
										{!! $products->content !!}
	                          		@if(isset($products->youtube_path))
									  <iframe style="height: 700px;" width="100%" src="https://www.youtube.com/embed/{{$products->youtube_path}} " title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									@endif
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- /TAB A -->


					<!-- Review -->
	                <div id="pane-B" class="card tab-pane fade" role="tabpanel" aria-labelledby="tab-B">
	                    <div class="card-header" role="tab" id="heading-B">
	                        <h5 class="mb-0">
	                            <a class="collapsed" data-bs-toggle="collapse" href="#collapse-B" aria-expanded="false" aria-controls="collapse-B">
	                                Reviews
	                            </a>
	                        </h5>
	                    </div>
	                    <div id="collapse-B" class="collapse" role="tabpanel" aria-labelledby="heading-B">
	                        <div class="card-body">
	                            <div class="row justify-content-between">
	                                <div class="col-lg-6">
	                                    <div class="review_content">
	                                        <div class="clearfix add_bottom_10">
	                                            <span class="rating"><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><em>5.0/5.0</em></span>
	                                            <em>Published 54 minutes ago</em>
	                                        </div>
	                                        <h4>"Commpletely satisfied"</h4>
	                                        <p>Eos tollit ancillae ea, lorem consulatu qui ne, eu eros eirmod scaevola sea. Et nec tantas accusamus salutatus, sit commodo veritus te, erat legere fabulas has ut. Rebum laudem cum ea, ius essent fuisset ut. Viderer petentium cu his.</p>
	                                    </div>
	                                </div>
	                                <div class="col-lg-6">
	                                    <div class="review_content">
	                                        <div class="clearfix add_bottom_10">
	                                            <span class="rating"><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star empty"></i><i class="icon-star empty"></i><em>4.0/5.0</em></span>
	                                            <em>Published 1 day ago</em>
	                                        </div>
	                                        <h4>"Always the best"</h4>
	                                        <p>Et nec tantas accusamus salutatus, sit commodo veritus te, erat legere fabulas has ut. Rebum laudem cum ea, ius essent fuisset ut. Viderer petentium cu his.</p>
	                                    </div>
	                                </div>
	                            </div>
	                            <!-- /row -->
	                            <div class="row justify-content-between">
	                                <div class="col-lg-6">
	                                    <div class="review_content">
	                                        <div class="clearfix add_bottom_10">
	                                            <span class="rating"><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star empty"></i><em>4.5/5.0</em></span>
	                                            <em>Published 3 days ago</em>
	                                        </div>
	                                        <h4>"Outstanding"</h4>
	                                        <p>Eos tollit ancillae ea, lorem consulatu qui ne, eu eros eirmod scaevola sea. Et nec tantas accusamus salutatus, sit commodo veritus te, erat legere fabulas has ut. Rebum laudem cum ea, ius essent fuisset ut. Viderer petentium cu his.</p>
	                                    </div>
	                                </div>
	                                <div class="col-lg-6">
	                                    <div class="review_content">
	                                        <div class="clearfix add_bottom_10">
	                                            <span class="rating"><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><em>5.0/5.0</em></span>
	                                            <em>Published 4 days ago</em>
	                                        </div>
	                                        <h4>"Excellent"</h4>
	                                        <p>Sit commodo veritus te, erat legere fabulas has ut. Rebum laudem cum ea, ius essent fuisset ut. Viderer petentium cu his.</p>
	                                    </div>
	                                </div>
	                            </div>
	                            <!-- /row -->
	                            <p class="text-end"><a href="leave-review.html" class="btn_1">Leave a review</a></p>
	                        </div>
	                        <!-- /card-body -->
	                    </div>
	                </div>
	                <!-- /tab B -->
	            </div>
	            <!-- /tab-content -->
	        </div>
	        <!-- /container -->
	    </div>
	    <!-- /tab_content_wrapper -->

	    <div class="container margin_60_35">
	        <div class="main_title">
	            <h2>{{__("Related")}}</h2>
	            <span>{{__("Products")}}</span>
	        </div>
	        <div class="owl-carousel owl-theme products_carousel">
				@foreach($related as $re)
					@foreach($re->ProductsImage as $img)
						@if($loop->first)
						<div class="item">
							<div class="grid_item">
									@if(isset($re->price_new) && isset($re->price))
									<span class="ribbon off">-{{round((($re->price - $re->price_new)/$re->price)*100,0) }} %</span>
									@elseif($re->featured_product == 1)
									<span class="ribbon hot">Hot</span>
									@else
									<span class="ribbon new">New</span>
									@endif
								<figure>
									<a href="/detail/{{$re->id}}">
										@if(strstr($img->image,"https") == "")
										<img class="img-fluid lazy" style="width:290px; height: 290px;" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
										@else
										<img class="img-fluid lazy" style="width:290px; height: 290px;" data-src="{{$img->image}}" alt="">
										@endif
									</a>
								</figure>
								<!-- <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div> -->
								<a href="product-detail-1.html">
									<h3 class="d-block" style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$re->name}}</h3>
								</a>
								<div class="price_box">
									@if(isset($re->price_new) && isset($re->price))
										<span class="new_price">{{number_format($re->price_new,0,",",".")}} Vnđ</span>
										<span class="old_price">{{number_format($re->price,0,",",".")}} Vnđ</span>

										@elseif(!isset($re->price_new) && isset($re->price))
										<span class="new_price">{{number_format($re->price,0,",",".")}} Vnđ</span>

										@elseif(!isset($re->price) && isset($re->price_new))
										<span class="new_price">{{number_format($re->price_new,0,",",".")}} Vnđ</span>

										@else
										<span class="new_price">{{__("Contact")}}</span>
												
									@endif
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						@endif
					@endforeach
				@endforeach
	            <!-- /item -->
	        </div>
	        <!-- /products_carousel -->
	    </div>
	    <!-- /container -->

	</main>
@endsection
@section('scripts')
<script  src="web_assets/js/carousel_with_thumbs.js"></script>

@endsection