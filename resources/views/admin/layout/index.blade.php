<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Voler Admin Dashboard</title>
    <base href="{{asset('')}}">
    <link rel="stylesheet" href="admin_assets/css/bootstrap.css">

    <link rel="stylesheet" href="admin_assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="admin_assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="admin_assets/css/app.css">
    @yield('css')
    <link rel="shortcut icon" href="admin_assets/images/favicon.svg" type="image/x-icon">
</head>

<body>
    <div id="app">
       @include('admin/common/sidebar')
        <div id="main">
           @include('admin/common/header')

           
                @yield ('content')
          

            @include('admin/common/footer')
        </div>
    </div>
    <script src="admin_assets/js/feather-icons/feather.min.js"></script>
    <script src="admin_assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="admin_assets/js/app.js"></script>

    <script src="admin_assets/vendors/chartjs/Chart.min.js"></script>
    <script src="admin_assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="admin_assets/js/pages/dashboard.js"></script>
    <script src="admin_assets/js/main.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

    @yield('scripts')
</body>

</html>