<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>@yield('title')</title>

    <meta name="keywords" content="" />
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Main CSS File -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/style.min.css') }}">
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="{{ asset('favicon.png') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/animate/animate.min.css') }}">

    <!-- Plugins CSS File -->
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/magnific-popup/magnific-popup.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/owl-carousel/owl.carousel.min.css') }}">

    <!-- Main CSS File -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/demo-beauty.min.css') }}">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/photoswipe/photoswipe.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/photoswipe/default-skin/default-skin.min.css') }}">
    <link rel="stylesheet" href="{{ asset('alert/toastr.min.css') }}">
</head>

<body class="home riode-rounded-skin">

    <div class="page-wrapper">

        <header class="header">
            <div class="header-top">
                <div class="container-fluid">
                    <div class="header-left">
                        <div class="welcome-msg">
                            <a href="{{ url('contact') }}" class="contact"><i class="d-icon-map"></i>Find
                                Myqueen
                                Store</a>
                            <a href="#" class="help"><i class="d-icon-info"></i>Free Standard Shipping</a>
                        </div>
                    </div>
                    <div class="header-right">

                        <a class="call" href="tel:#">
                            <i class="d-icon-phone"></i>
                            <span>Call us: </span>0(800) 123-456
                        </a>
                       <a href="{{ URL::signedRoute('users.wishlist.index') }}" class="wishlist"><i
                                    class="d-icon-heart"></i>Wishlist</a>
                            <div class="dropdown ml-5">
                                <a href="#"><i class="d-icon-user"></i> &nbsp;
                                    My
                                    Account</a>
                                <ul class="dropdown-box">
                                    <li><a href="{{ URL::signedRoute('users.profile.index') }}">Profile</a></li>
                                    <li><a href="{{ URL::signedRoute('MLM.tree.index') }}">Affilate Marketing</a></li>
                                    <li><a href="{{ route('Referal') }}">Refer to friend</a></li>
                                    <li><a href="{{ route('users.purchase_history.index') }}">Order History</a></li>
                                    <li><a href="{{ URL::signedRoute('users.show_wallet_page') }}">Credit Wallet</a></li>
                                    <li><a href="{{ URL::signedRoute('users.show_royalty') }}">Credit Point Wallet </a></li>
                                
                                <li><a href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">Logout</a></li>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                    class="d-none">
                                    @csrf
                                </form>

                                {{-- <li><a href="{{ route('Referal') }}">Refer to friend</a></li> --}}
                                {{-- <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                    class="d-none">
                                    @csrf
                                </form>
                            </div> --}}

                            </ul>
                        </div>


                        <div class="dropdown cart-dropdown  type3 ml-2">
                            <a href="{{ URL::signedRoute('users.cart.index') }}" class="cart-toggle">
                                <i class="d-icon-bag"></i>
                                My Cart<span id="all_cart_count"> </span>
                            </a>
                            <div class="cart-overlay"></div>
                            <!-- End Cart Toggle -->

                            <!-- End Dropdown Box -->
                        </div>
                        <div class="dropdown">
                            <a href="#currency">USD</a>
                            <ul class="dropdown-box">
                                <li><a href="#USD">USD</a></li>
                                <!-- <li><a href="#EUR">EUR</a></li> -->
                            </ul>
                        </div>
                        <div class="dropdown ml-5">
                            <a href="#language">ENG</a>
                            <ul class="dropdown-box">
                                <li>
                                    <a href="#Eng">ENG</a>
                                </li>
                                <li>
                                    <a href="#EUR">MD</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End HeaderTop -->
            <div class="header-middle sticky-header fix-top sticky-content">
                <div class="container">
                    <div class="header-left">
                        <a href="#" class="mobile-menu-toggle mr-0">
                            <i class="d-icon-bars2"></i>
                        </a>
                        <a href="#" class="logo d-none d-lg-block">
                            <img src="{{ asset('images/logo.png') }}" alt="logo" class="img-responsive" />
                        </a>
                        <!-- End Logo -->
                    </div>
                    <div class="header-center d-flex justify-content-center">
                        <a href="" class="logo d-block d-lg-none">
                            <img src="{{ asset('images/logo.png') }}" alt="logo" width="154" height="43" />
                        </a>
                        <!-- End Logo -->
                    </div>
                    <div class="header-right">
                        <nav class="main-nav mr-4">
                            <ul class="menu menu-active-underline">
                                <li class="active">
                                    <a href="{{ url('/') }}">Home</a>
                                </li>
                                <li class="#">
                                    <a href="{{ url('/about') }}">About</a>
                                </li>
                                <li>
                                    <a href="{{ url('/products') }}">Products</a>
                                </li>

                                <li>
                                    <a href="{{ url('/contact') }}">Contact</a>

                                </li>

                            </ul>
                        </nav>


                        <span class="divider mr-4"></span>
                        <div class="header-search hs-toggle d-block">
                            <a href="#" class="search-toggle d-flex align-items-center">
                                <i class="d-icon-search"></i>
                            </a>
                            <form action="#" class="input-wrapper">
                                <input type="text" class="form-control" name="search" autocomplete="off"
                                    placeholder="Search your keyword..." required />
                                <button class="btn btn-search" type="submit">
                                    <i class="d-icon-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            @if ($alertFm = Session::get('warning'))
                <script type="text/javascript">
                    swal({
                        title: 'Myqueen Says',
                        text: "{{ Session::get('warning') }}",
                        type: 'warning',
                        timer: 10000
                    }).then((value) => {}).catch(swal.noop);
                </script>
            @endif
        </header>
        <!-- End Header -->
