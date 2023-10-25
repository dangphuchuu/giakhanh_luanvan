<div id="sidebar" class='active'>
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <img src="admin_assets/images/logo.svg" alt="" srcset="">
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class='sidebar-title'>Main Menu</li>
                <li class="sidebar-item @yield('dashboard') ">
                    <a href="/admin" class='sidebar-link'>
                        <i data-feather="home" width="20"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-item  has-sub @yield('manage_products')">

                    <a href="#" class='sidebar-link'>
                        <i data-feather="triangle" width="20"></i>
                        <span>Manage Products</span>
                    </a>
                    <ul class="submenu ">
                        <li>
                            <a href="admin/categories">Categories</a>
                        </li>
                        <li>
                            <a href="admin/subcategories">SubCategories</a>
                        </li>
                        <li>
                            <a href="admin/brands">Brands</a>
                        </li>
                        <li>
                            <a href="admin/products">Products</a>
                        </li>
                    </ul>
                </li>
                <li class='sidebar-title'>Staff &amp; Clients</li>
                <li class="sidebar-item  ">
                    <a href="form-layout.html" class='sidebar-link'>
                        <i data-feather="user-check" width="20"></i>
                        <span>Staff</span>
                    </a>
                </li>
                <li class="sidebar-item  ">
                    <a href="form-layout.html" class='sidebar-link'>
                        <i data-feather="users" width="20"></i>
                        <span>Clients</span>
                    </a>
                </li>
                <li class='sidebar-title'>Information</li>
                <li class="sidebar-item  has-sub">

                    <a href="#" class='sidebar-link'>
                        <i data-feather="user" width="20"></i>
                        <span>Authentication</span>
                    </a>
                    <ul class="submenu ">
                        <li>
                            <a href="auth-login.html">Login</a>
                        </li>

                        <li>
                            <a href="auth-register.html">Register</a>
                        </li>

                        <li>
                            <a href="auth-forgot-password.html">Forgot Password</a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="alert-circle" width="20"></i>
                        <span>Errors</span>
                    </a>
                    <ul class="submenu ">

                        <li>
                            <a href="error-403.html">403</a>
                        </li>

                        <li>
                            <a href="error-404.html">404</a>
                        </li>

                        <li>
                            <a href="error-500.html">500</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>