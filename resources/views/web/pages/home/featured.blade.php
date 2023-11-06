<div class="container margin_60_35">
			<div class="main_title">
				<h2>{{__("Featured Products")}}</h2>
				<span>{{__("Featured Products")}}</span>
				<!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p> -->
			</div>
			<div class="owl-carousel owl-theme products_carousel">
				@foreach($products_featured as $pro)
				@foreach($pro->ProductsImage as $img)
				@if($loop ->first)
				<div class="item">
					<div class="grid_item">
						<span class="ribbon hot">Hot</span>
						<figure>
							<a href="/detail/{{$pro->id}}">
								@if(strstr($img->image,"https") == "")
									<img style="width:270px; height:250px" class="img-fluid lazy" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
									<img style="width:270px; height:250px" class="img-fluid lazy" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
								@else
									<img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}" alt="">
									<img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}" alt="">
								@endif
							</a>
						</figure>
						<!-- <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div> -->
						<a href="/detail/{{$pro->id}}">
						<h3 class="d-block" style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$pro->name}}</h3>
						</a>
						<div class="price_box">
							@if(isset($pro->price_new) && isset($pro->price))
							<span class="new_price">{{number_format($pro->price_new,0,",",".")}} Vnđ</span>
							<span class="old_price">{{number_format($pro->price,0,",",".")}} Vnđ</span>

							@elseif(!isset($pro->price_new) && isset($pro->price))
							<span class="new_price">{{number_format($pro->price,0,",",".")}} Vnđ</span>

							@elseif(!isset($pro->price) && isset($pro->price_new))
							<span class="new_price">{{number_format($pro->price_new,0,",",".")}} Vnđ</span>

							@else
							<span class="new_price">{{__("Contact")}}</span>
							
							@endif
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to favorites')}}"><i class="ti-heart"></i><span>{{__('Add to favorites')}}</span></a></li>
							<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to compare')}}"><i class="ti-control-shuffle"></i><span>{{__('Add to compare')}}</span></a></li>
							<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to cart')}}"><i class="ti-shopping-cart"></i><span>{{__('Add to cart')}}</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				@endif
				@endforeach
				@endforeach
			</div>
			<!-- /products_carousel -->
</div>