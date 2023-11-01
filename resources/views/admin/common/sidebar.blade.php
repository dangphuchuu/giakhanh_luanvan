<div id="sidebar" class='active'>
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <img src="admin_assets/images/logo.svg" alt="" srcset="">
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class='sidebar-title'>{{__("Main Menu")}}</li>
                <li class="sidebar-item @yield('dashboard') ">
                    <a href="/admin" class='sidebar-link'>
                        <i data-feather="home" width="20"></i>
                        <span>{{__("Dashboard")}}</span>
                    </a>
                </li>
                <li class="sidebar-item  has-sub @yield('manage_products')">

                    <a href="#" class='sidebar-link'>
                        <i data-feather="triangle" width="20"></i>
                        <span>{{__("Manage Products")}}</span>
                    </a>
                    <ul class="submenu ">
                        <li>
                            <a href="admin/categories">{{__("Categories")}}</a>
                        </li>
                        <li>
                            <a href="admin/subcategories">{{__("SubCategories")}}</a>
                        </li>
                        <li>
                            <a href="admin/brands">{{__("Brands")}}</a>
                        </li>
                        <li>
                            <a href="admin/products">{{__("Products")}}</a>
                        </li>
                    </ul>
                </li>
                <li class='sidebar-title'>{{__("Staff")}} &amp; {{__("Clients")}}</li>
                <li class="sidebar-item  ">
                    <a href="form-layout.html" class='sidebar-link'>
                        <i data-feather="user-check" width="20"></i>
                        <span>{{__("Staff")}}</span>
                    </a>
                </li>
                <li class="sidebar-item  ">
                    <a href="form-layout.html" class='sidebar-link'>
                        <i data-feather="users" width="20"></i>
                        <span>{{__("Clients")}}</span>
                    </a>
                </li>
                <li class='sidebar-title'>{{__("Information")}}</li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="info" width="20"></i>
                        <span> Website</span>
                    </a>
                    <ul class="submenu ">
                        <li>
                            <a href="/admin/banners">{{__("Banners")}}</a>
                        </li>

                        <li>
                            <a href="/admin/bannersfeatured">{{__("Banners Collection")}}</a>
                        </li>
                        <li>
                            <a href="auth-forgot-password.html">{{__("Contact Info")}}</a>
                        </li>

                    </ul>
                </li> 
            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>