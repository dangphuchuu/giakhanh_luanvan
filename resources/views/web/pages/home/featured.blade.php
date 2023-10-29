<div class="container margin_60_35">
			<div class="main_title">
				<h2>{{__("Featured Products")}}</h2>
				<span>{{__("Featured Products")}}</span>
				<p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
			</div>
			<div class="owl-carousel owl-theme products_carousel">
				@foreach($products_featured as $featured)
				<div class="item">
					<div class="grid_item">
						<span class="ribbon hot">Hot</span>
						<figure>
							<a href="product-detail-1.html">
								@if(strstr($featured->image,"https") == "")
									<img style="width:270px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$featured->image}}.jpg" alt="">
									<img style="width:270px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$featured->image}}.jpg" alt="">
								@else
									<img style="width:270px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="{{$featured->image}}" alt="">
									<img style="width:270px; height:250px" class="img-fluid lazy" src="web_assets/img/products/product_placeholder_square_medium.jpg" data-src="{{$featured->image}}" alt="">
								@endif
							</a>
						</figure>
						<!-- <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div> -->
						<a href="product-detail-1.html">
						<h3 class="d-block" style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$featured->name}}</h3>
						</a>
						<div class="price_box">
							@if(isset($featured->price_new))
							<span class="new_price">{{number_format($featured->price_new,0,",",".")}} Vnđ</span>
							<span class="old_price">{{number_format($featured->price,0,",",".")}} Vnđ</span>
							@elseif(!isset($featured->price_new))
							<span class="new_price">{{number_format($featured->price,0,",",".")}} Vnđ</span>
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
				@endforeach
			</div>
			<!-- /products_carousel -->
</div>