<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="Ansonika">
	<title>Allaia | Bootstrap eCommerce Template - ThemeForest</title>

	<base href="{{asset('')}}">

	<!-- Favicons-->
	<link rel="shortcut icon" href="web_assets/img/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="web_assets/img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="web_assets/img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="web_assets/img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="web_assets/img/apple-touch-icon-144x144-precomposed.png">

	<!-- GOOGLE WEB FONT -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	
	<!-- BASE CSS -->
	<link href="web_assets/css/bootstrap.custom.min.css" rel="stylesheet">
	<link href="web_assets/css/style.css" rel="stylesheet">

	<!-- SPECIFIC CSS -->
	<link href="web_assets/css/home_1.css" rel="stylesheet">

	<!-- YOUR CUSTOM CSS -->
	<link href="web_assets/css/custom.css" rel="stylesheet">

</head>

<body>

	<div id="page">

		@include('web.common.header')
		<!-- /header -->

		@yield('content')
		<!-- /main -->

		@include('web.common.footer')
		<!--/footer-->
	</div>
	<!-- page -->

	<div id="toTop"></div><!-- Back to top button -->

	<!-- COMMON SCRIPTS -->
	<script src="web_assets/js/common_scripts.min.js"></script>
	<script src="web_assets/js/main.js"></script>
	<script src="web_assets/js/carousel-home.min.js"></script>
	<!-- SPECIFIC SCRIPTS -->
	<script src="web_assets/js/modernizr.js"></script>
	<script src="web_assets/js/video_header.min.js"></script>
	<script>
		// Video Header
		HeaderVideo.init({
			container: $('.header-video'),
			header: $('.header-video--media'),
			videoTrigger: $("#video-trigger"),
			autoPlayVideo: true
		});
	</script>
	<script src="web_assets/js/isotope.min.js"></script>
	<script>
		// Isotope filter
		$(window).on('load', function() {
			var $container = $('.isotope-wrapper');
			$container.isotope({
				itemSelector: '.isotope-item',
				layoutMode: 'masonry'
			});
		});
		$('.isotope_filter').on('click', 'a', 'change', function() {
			var selector = $(this).attr('data-filter');
			$('.isotope-wrapper').isotope({
				filter: selector
			});
		});
	</script>
	@yield('script')
</body>

</html>