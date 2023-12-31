@extends('web.layout.index')
@section('css')
<link href="web_assets/css/listing.css" rel="stylesheet">
@endsection
@section('content')
<main>
		<!-- /top_banner -->
			<div id="stick_here"></div>		
			<div class="toolbox elemento_stick">
				<div class="container">
				<ul class="clearfix">
					<li>
						<a data-bs-toggle="collapse" href="#filters" role="button" aria-expanded="false" aria-controls="filters">
							<i class="ti-filter"></i><span>{{__('Filters')}}</span>
						</a>
					</li>
				</ul>
				<div class="collapse" id="filters"><div class="row small-gutters filters_listing_1">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">{{__("Categories")}}</a>
						<div class="dropdown-menu">
							<div class="filter_type">
								<form action="/sortCategories" id="sortCategories" method="GET">
									<ul>
										@foreach($categories as $cat)
										<li>
											<label class="container_check">{{$cat->name}}<small>{{$cat->Subcategories->count()}}</small>
											  <input type="checkbox" name="cat_value[]" value="{{$cat->id}}" 
											  @if(isset($catValue))
												@checked(in_array($cat->id,$catValue))
											  @endif
											  >
											  <span class="checkmark"></span>
											</label>
										</li>
										@endforeach
									</ul>
									<a href="javascript:void(0)" class="apply_filter" onclick="document.getElementById('sortCategories').submit();">Apply</a>
								</form>
							</div>
						</div>
					</div>
					<!-- /dropdown -->
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">{{__("Brands")}}</a>
						<div class="dropdown-menu">
							<div class="filter_type">
								<form action="/sortBrands" id="sortBrands" method="GET">
									<ul>
										@foreach($brands as $brand)
										<li>
											<label class="container_check">{{$brand->name}}<small>{{$brand->products->count()}}</small>
											  <input type="checkbox" name="brand_value[]" value="{{$brand->id}}"
											 	 @if(isset($brandValue))
													@checked(in_array($brand->id,$brandValue))
												 @endif
											  >
											  <span class="checkmark"></span>
											</label>
										</li>
										@endforeach
									</ul>
									<a href="javascript:void(0)" class="apply_filter" onclick="document.getElementById('sortBrands').submit();">Apply</a>
								</form>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">Price</a>
						<div class="dropdown-menu">
							<div class="filter_type">
									<ul>
										<li>
											<label class="container_check">$0 — $50<small>11</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$50 — $100<small>08</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$100 — $150<small>05</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$150 — $200<small>18</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
									</ul>
									<a href="#0" class="apply_filter">Apply</a>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
			
				</div></div></div>
				</div>
			</div>
			<!-- /toolbox -->
			<div id="products-container">
				<div class="container margin_30">
					<div class="row small-gutters">
						@foreach($products as $pro)
							@foreach($pro->ProductsImage as $img)
								@if($loop->first)
								<div class="col-6 col-md-4 col-xl-3">
									<div class="grid_item">
												@if(isset($pro->price_new) && isset($pro->price) && $pro->price != 0 && $pro->price_new != 0 )
													<span class="ribbon off">-{{round((($pro->price - $pro->price_new)/$pro->price)*100,0) }} %</span>
												@elseif($pro->featured_product == 1)
													<span class="ribbon hot">Hot</span>
												@else
													<span class="ribbon new">New</span>
												@endif
												<figure>
													<a href="/detail/{{$pro->id}}">
														@if(strstr($img->image,"https") == "")
														<img style="width:290px; height: 290px;" class="img-fluid lazy" data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg" alt="">
														@else
														<img style="width:290px; height: 290px;" class="img-fluid lazy" data-src="{{$img->image}}" alt="">
														@endif
													</a>
													<!-- <div data-countdown="2019/05/15" class="countdown"></div> -->
												</figure>
												<a href="/detail/{{$pro->id}}">
													<h3 class="d-block" style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$pro->name}}</h3>
												</a>
												<div class="price_box">
												@if($pro->price_new !=0 && $pro->price !=0)
													<span class="new_price">{{number_format($pro->price_new,0,",",".")}} Vnđ</span>
													<span class="old_price">{{number_format($pro->price,0,",",".")}} Vnđ</span>

												@elseif($pro->price_new == 0 && $pro->price != 0)
													<span class="new_price">{{number_format($pro->price,0,",",".")}} Vnđ</span>

												@elseif($pro->price == 0 && $pro->price_new != 0)
													<span class="new_price">{{number_format($pro->price_new,0,",",".")}} Vnđ</span>

												@else
													<span class="new_price">{{__("Contact")}}</span>

												@endif
												</div>
												<ul>
													<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to favorites')}}"><i class="ti-heart"></i><span>{{__("Add to favorites")}}</span></a></li>
													<li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to compare')}}"><i class="ti-control-shuffle"></i><span>{{__("Add to compare")}}</span></a></li>
													@if($pro->price || $pro->price_new)
														<li>
															<form action="/cart" method="post" id="formSubmitCart_{{$pro->id}}">
																@csrf
																<a href="javascript:void(0)"  onclick="document.getElementById('formSubmitCart_{{$pro->id}}').submit();" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to cart')}}"><i class="ti-shopping-cart"></i><span>{{__('Add to cart')}}</span></a>
																<input type="hidden" name="products_id" value="{{$pro->id}}"/>
																<input type="hidden" name="quantity" value="1"/>
															</form>
														</li>
													@endif
												</ul>
											</div>
										</div>
									
								@endif
							@endforeach
						@endforeach
						<!-- /col -->		
					</div>
			
					<div class="pagination__wrapper">
						<ul class="pagination">
							<li>
								{{$products->links()}}
							</li>
						</ul>
					</div>
					
				</div>
			</div>
		<!-- /container -->
	</main>
@endsection
@section('scripts')
<script src="web_assets/js/sticky_sidebar.min.js"></script>
<script src="web_assets/js/specific_listing.js"></script>

<!-- <script>
$(document).ready(function() {
	$('#sort').change(function() {
		var sort = $(this).val();
		$.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
		$.ajax({
            url:"sort-by",
            method:"GET",
            dataType:"json",
            data:{
               'sort': sort
            },
            success:function(data){
					// ProductsList(data.products);
				
					$('#products-container').html(data.data);
               
            }
        });
	});
	// function ProductsList(products) {
	// 	var productsContainer = $('products-container');
	// 	productsContainer.empty();
	// }
});
</script> -->
@endsection