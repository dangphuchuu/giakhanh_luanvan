<header class="version_2">
    <div class="layer"></div><!-- Mobile menu overlay mask -->
    <div class="main_header" style=" z-index: 1 !important;">
        <div class="container">
            <div class="row small-gutters">
                <div class="col-xl-3 col-lg-3 d-lg-flex align-items-center">
                    <div id="logo">
                        <a href="/" ><img src="web_assets/img/logo_black.svg" alt="" width="100" height="35"></a>
                    </div>
                </div>
                <nav class="col-xl-6 col-lg-7">

                    <!-- Mobile menu button -->
              <div class="main-menu"></div>
                    <!--/main-menu -->
                </nav>
                <div class="col-xl-3 col-lg-2 d-lg-flex align-items-center justify-content-end text-end">
                <a class="phone_top" href="tel://9438843343"><strong><span>{{__("Contact")}}</span>+94 423-23-221</strong></a>
                <a href="{{route('lang')}}" class="nav-link nav-link-lg nav-link-user">
                    <div class="d-lg-inline-block">
                    @if(Session("language") == "en")
                    <img src="images/language/{{__('en')}}.png" style="height: 30px">
                    @else
                    <img src="images/language/{{__('vi')}}.png" style="height: 30px">
                    @endif
                    </div>
                </a>
                </div>
            </div>
            <!-- /row -->
        </div>
    </div>
    <!-- /main_header -->

    <div class="main_nav Sticky">
        <div class="container">
            <div class="row small-gutters">
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <nav class="categories">
                        <ul class="clearfix">
                            <li><span>
                                    <a href="#">
                                        <span class="hamburger hamburger--spin">
                                            <span class="hamburger-box">
                                                <span class="hamburger-inner"></span>
                                            </span>
                                        </span>
                                        {{__("Categories")}}
                                    </a>
                                </span>
                                <div id="menu">
                                    <ul>
                                        @foreach($categories as $cat)
                                        <li><span><a href="">{{$cat->name}}</a></span>
                                            <ul class="fix_long">
                                                @foreach($cat->Subcategories as $sub)
                                                @if($sub->status == 1)
                                                <li><a href="">{{$sub->name}}</a></li>
                                                @endif
                                                @endforeach
                                            </ul>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-xl-6 col-lg-7 col-md-6 d-none d-md-block">
                    <div class="custom-search-input">
                        <form action="/search" method="GET">
                            <input type="text" name="search" value="{{Request::get('search')}}" placeholder="{{__('Search over 10.000 products')}}">
                            <button type="submit" style="margin-top: -3px;"><i class="ti-search" style="font-size: 20px;"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-2 col-md-3">
                    <ul class="top_tools">
                        <li>
                            <!-- <a href="#0" class="wishlist"><span>Wishlist</span></a> -->
                        </li>
                        <li>
                            <div class="dropdown dropdown-cart mt-1">
                                <a href="cart.html" ><i class="ti-shopping-cart" style="font-size: 22px;"></i></a>
                                <div class="dropdown-menu">
                                    <ul>
                                        <li>
                                            <a href="product-detail-1.html">
                                                <figure><img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/thumb/1.jpg" alt="" width="50" height="50" class="lazy"></figure>
                                                <strong><span>1x Armor Air x Fear</span>$90.00</strong>
                                            </a>
                                            <a href="#0" class="action"><i class="ti-trash"></i></a>
                                        </li>
                                        <li>
                                            <a href="product-detail-1.html">
                                                <figure><img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/thumb/2.jpg" alt="" width="50" height="50" class="lazy"></figure>
                                                <strong><span>1x Armor Okwahn II</span>$110.00</strong>
                                            </a>
                                            <a href="0" class="action"><i class="ti-trash"></i></a>
                                        </li>
                                    </ul>
                                    <div class="total_drop">
                                        <div class="clearfix"><strong>Total</strong><span>$200.00</span></div>
                                        <a href="cart.html" class="btn_1 outline">View Cart</a><a href="checkout.html" class="btn_1">Checkout</a>
                                    </div>
                                </div>
                            </div>
                            <!-- /dropdown-cart-->
                        </li>
                        @if(Auth::check())
                        <li>
                            <div class="dropdown dropdown-access mt-1" >
                            <a href="javascript:void(0)"><i class="ti-unlock" style="font-size: 22px;"></i></a>
                                <div class="dropdown-menu" style="display: none;">
                                    @if(isset(Auth::user()->image))
                                    
                                        @if(strstr(Auth::user()->image,"https") != "")
                                            <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ Auth::user()->image }}.jpg"   class=" me-2" style="border-radius:50%!important; width:15%">
                                        @else
                                            <img src='images/avatar/{{Auth::user()->image}}.png'  class=" me-2" style="border-radius:50%!important; width:15%">
                                        @endif

                                    @endif

                                            @if(Session("language") == "en")
                                                {{Auth::user()->firstname}} {{Auth::user()->lastname}}
                                            @else
                                                {{Auth::user()->lastname}} {{Auth::user()->firstname}}
                                            @endif
                                    <ul>
                                        <li>
                                            <a href="account.html"><i class="ti-user"></i>{{__("My Profile")}}</a>
                                        </li>
                                        <li>
                                            <a href="account.html"><i class="ti-package"></i>{{__("My Orders")}}</a>
                                        </li>
                                        <li>
                                            <a href="track-order.html"><i class="ti-truck"></i>{{__("Track your Order")}}</a>
                                        </li>
                                        <li>
                                            <a href="/logout"><i class="ti-shift-right"></i>{{__("Logout")}}</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /dropdown-access-->
                        </li>
                        @else
                        <li>
                            <div class="dropdown dropdown-access mt-1">
                                <a href="/signin_signup"><i class="ti-lock" style="font-size: 22px;"></i><span>Account</span></a>
                                
                            </div>
                            <!-- /dropdown-access-->
                        </li>
                        @endif
                        <li>
                            <a href="javascript:void(0);" class="btn_search_mob ti-search" ><span>Search</span></a>
                        </li>
                        <li>
                            <a href="#menu" class="btn_cat_mob">
                                <div class="hamburger hamburger--spin" id="hamburger">
                                    <div class="hamburger-box">
                                        <div class="hamburger-inner"></div>
                                    </div>
                                </div>
                                Categories
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /row -->
        </div>

        <!-- Search mobile -->

        <div class="search_mob_wp">
            <form action="">
                <input type="text" class="form-control" placeholder="{{__('Search over 10.000 products')}}">
                <input type="submit" class="btn_1 full-width" value="Search">
            </form>
        </div>
        <!-- /search_mobile -->
    </div>
    <!-- /main_nav -->
    
</header>
