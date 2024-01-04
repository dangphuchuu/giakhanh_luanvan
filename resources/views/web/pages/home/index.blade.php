@extends('web.layout.index')
@section('content')

<main>
			<!--/banners -->
			@include('web.pages.home.banners')
			<!--/banners -->

			<hr class="mb-0">
			
			<!-- Featured Products -->
			@include('web.pages.home.featured')
			<!-- /Featured Products -->

			<hr class="mb-0">

			<!-- Top selling -->
			@include('web.pages.home.top_selling')
			<!-- /Top selling -->

			<hr class="mb-0">

			<!-- New Products -->
			@include('web.pages.home.new_products')
			<!-- /New Products -->

			<hr class="mb-0">

			<!-- Brands -->
			@include('web.pages.home.brands')
			<!-- /Brands -->

			<hr class="mb-0">

			<!-- News -->
			@include('web.pages.home.latest_news')
			<!-- /News -->

		</main>

@endsection
@section('scripts')
<script>
	totalWishlist();
    function totalWishlist()
    {
        $.ajax({
            type: 'GET',
            url: '/count_wishlist',
            success:function(data){
                $('#wishlistCount').text(data.count.toLocaleString('vi-VN'));
            }
        });
    }

	$(document).ready(function (){
		$('.wishlist').click(function(){
			$.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
			var user_id = "{{Auth::id()}}"
			var product_id = $(this).data('productid');
			$.ajax({
				type: 'POST',
				url: '/wishlist',
				data:{
					product_id:product_id,
					user_id:user_id
				},
				success: function (data) {
					if(data.action == 'add'){
						totalWishlist();
                        $('a[data-productid=' + product_id + ']').html('<i class="fa-solid fa-heart" style="color:red"></i>');
					}else if (data.action == 'delete'){
						totalWishlist();
                        $('a[data-productid=' + product_id + ']').html('<i class="fa-regular fa-heart"></i>');
						
					}
				}
			})
		});
	});
</script>
@endsection
