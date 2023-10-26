@extends('web.layout.index')
@section('content')
<main>
			<div class="header-video">
				<div id="hero_video">
					<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<div class="container">
							<div class="row justify-content-center justify-content-md-start">
								<div class="col-lg-6">
									<div class="slide-text white">
										<h3>Armor Air<br>Max 720 Sage Low</h3>
										<p>Limited items available at this price</p>
										<a class="btn_1" href="#0" role="button">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<img src="web_assets/img/video_fix.png" alt="" class="header-video--media" data-video-src="video/intro" data-teaser-source="video/intro" data-provider="" data-video-width="1920" data-video-height="960">
			</div>
			<!-- /header-video -->

			<div class="feat">
				<div class="container">
					<ul>
						<li>
							<div class="box">
								<i class="ti-gift"></i>
								<div class="justify-content-center">
									<h3>Free Shipping</h3>
									<p>For all oders over $99</p>
								</div>
							</div>
						</li>
						<li>
							<div class="box">
								<i class="ti-wallet"></i>
								<div class="justify-content-center">
									<h3>Secure Payment</h3>
									<p>100% secure payment</p>
								</div>
							</div>
						</li>
						<li>
							<div class="box">
								<i class="ti-headphone-alt"></i>
								<div class="justify-content-center">
									<h3>24/7 Support</h3>
									<p>Online top support</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!--/feat-->

			<div class="container margin_60_35">
				<div class="row small-gutters categories_grid">
					<div class="col-sm-12 col-md-6">
						<a href="listing-grid-1-full.html">
							<img src="web_assets/img/img_cat_home_1_placeholder.png" data-src="web_assets/img/img_cat_home_1.jpg" alt="" class="img-fluid lazy">
							<div class="wrapper">
								<h2>Life Style</h2>
								<p>115 Products</p>
							</div>
						</a>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="row small-gutters mt-md-0 mt-sm-2">
							<div class="col-sm-6">
								<a href="listing-grid-1-full.html">
									<img src="web_assets/img/img_cat_home_2_placeholder.png" data-src="web_assets/img/img_cat_home_2.jpg" alt="" class="img-fluid lazy">
									<div class="wrapper">
										<h2>Running</h2>
										<p>150 Products</p>
									</div>
								</a>
							</div>
							<div class="col-sm-6">
								<a href="listing-grid-1-full.html">
									<img src="web_assets/img/img_cat_home_2_placeholder.png" data-src="web_assets/img/img_cat_home_3.jpg" alt="" class="img-fluid lazy">
									<div class="wrapper">
										<h2>Football</h2>
										<p>90 Products</p>
									</div>
								</a>
							</div>
							<div class="col-sm-12 mt-sm-2">
								<a href="listing-grid-1-full.html">
									<img src="web_assets/img/img_cat_home_4_placeholder.png" data-src="web_assets/img/img_cat_home_4.jpg" alt="" class="img-fluid lazy">
									<div class="wrapper">
										<h2>Training</h2>
										<p>120 Products</p>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!--/categories_grid-->
			</div>
			<!-- /container -->

			<hr class="mb-0">
			<div class="container margin_60_35">
				<div class="main_title mb-4">
					<h2>Products</h2>
					<span>Products</span>
					<p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
				</div>
				<div class="isotope-wrapper">
					<div class="row small-gutters">
						@foreach($products as $pro)
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon new">New</span>
								<figure>
									<a href="product-detail-1.html">
									@if($pro->image == NULL)
									<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" alt="">
									<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" alt="">
									@else
										@if(strstr($pro->image,"https") == "")
											<img style="width:250px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$pro->image}}.jpg" alt="">
											<img style="width:250px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$pro->image}}.jpg" alt="">
										@elseif(strstr($pro->image,"https") != "")
											<img style="width:250px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="{{$pro->image}}" alt="">
											<img style="width:250px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="{{$pro->image}}" alt="">
										@endif
									@endif
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>{{$pro->name}}</h3>
								</a>
								<div class="price_box">
									<span class="new_price">
										@if(isset($pro->price_new))
											${{$pro->price_new}}
										@elseif(isset($pro->price))
										${{$pro->price}}
										@else
										{{__("Contact")}}
										@endif
									</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						@endforeach
						<!-- /col -->
					</div>
					<!-- /row -->
				</div>
				<!-- /isotope-wrapper -->
			</div>
			
			<hr class="mb-0">
			<div class="container margin_60_35">
				<div class="main_title mb-4">
					<h2>New Arrival</h2>
					<span>Products</span>
					<p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
				</div>
				<div class="isotope-wrapper">
					<div class="row small-gutters">
						<div class="col-6 col-md-4 col-xl-3 isotope-item sale">
							<div class="grid_item">
								<figure>
									<span class="ribbon off">-30%</span>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/1.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/1_b.jpg" alt="">
									</a>
									<div data-countdown="2019/05/15" class="countdown"></div>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air x Fear</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$48.00</span>
									<span class="old_price">$60.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item sale">
							<div class="grid_item">
								<span class="ribbon off">-30%</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/2.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/2_b.jpg" alt="">
									</a>
									<div data-countdown="2019/05/10" class="countdown"></div>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Okwahn II</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$90.00</span>
									<span class="old_price">$170.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item sale">
							<div class="grid_item">
								<span class="ribbon off">-50%</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/3.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/3_b.jpg" alt="">
									</a>
									<div data-countdown="2019/05/21" class="countdown"></div>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air Wildwood ACG</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$75.00</span>
									<span class="old_price">$155.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon new">New</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/4.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/4_b.jpg" alt="">
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor ACG React Terra</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$110.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon new">New</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/5.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/5_b.jpg" alt="">
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air Zoom Alpha</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$140.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon new">New</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/6.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/6_b.jpg" alt="">
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air Alpha</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$130.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon hot">Hot</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/7.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/7_b.jpg" alt="">
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air Max 98</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$115.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
						<div class="col-6 col-md-4 col-xl-3 isotope-item popular">
							<div class="grid_item">
								<span class="ribbon hot">Hot</span>
								<figure>
									<a href="product-detail-1.html">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/8.jpg" alt="">
										<img class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="web_assets/img/products/shoes/8_b.jpg" alt="">
									</a>
								</figure>
								<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
								<a href="product-detail-1.html">
									<h3>Armor Air Max 720</h3>
								</a>
								<div class="price_box">
									<span class="new_price">$120.00</span>
								</div>
								<ul>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to
												favorites</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to
												compare</span></a></li>
									<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to
												cart</span></a></li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
						<!-- /col -->
					</div>
					<!-- /row -->
				</div>
				<!-- /isotope-wrapper -->
			</div>
			<!-- /container -->

			<div class="bg_gray">
				<div class="container margin_30">
					<div id="brands" class="owl-carousel owl-theme">
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_1.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_2.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_3.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_4.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_5.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
						<div class="item">
							<a href="#0"><img src="web_assets/img/brands/placeholder_brands.png" data-src="web_assets/img/brands/logo_6.png" alt="" class="owl-lazy"></a>
						</div><!-- /item -->
					</div><!-- /carousel -->
				</div><!-- /container -->
			</div>
			<!-- /bg_gray -->

			<div class="container margin_60_35">
				<div class="main_title">
					<h2>Latest News</h2>
					<span>Blog</span>
					<p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<a class="box_news" href="blog.html">
							<figure>
								<img src="web_assets/img/blog-thumb-placeholder.jpg" data-src="web_assets/img/blog-thumb-1.jpg" alt="" width="400" height="266" class="lazy">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>by Mark Twain</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Pri oportere scribentur eu</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse
								ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="blog.html">
							<figure>
								<img src="web_assets/img/blog-thumb-placeholder.jpg" data-src="web_assets/img/blog-thumb-2.jpg" alt="" width="400" height="266" class="lazy">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>By Jhon Doe</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Duo eius postea suscipit ad</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse
								ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="blog.html">
							<figure>
								<img src="web_assets/img/blog-thumb-placeholder.jpg" data-src="web_assets/img/blog-thumb-3.jpg" alt="" width="400" height="266" class="lazy">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>By Luca Robinson</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Elitr mandamus cu has</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse
								ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="blog.html">
							<figure>
								<img src="web_assets/img/blog-thumb-placeholder.jpg" data-src="web_assets/img/blog-thumb-4.jpg" alt="" width="400" height="266" class="lazy">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>By Paula Rodrigez</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Id est adhuc ignota delenit</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse
								ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->

		</main>

@endsection