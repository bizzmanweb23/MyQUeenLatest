        <!-- End Main -->
        <footer class="footer">
            <div class="container">
                <div class="footer-middle">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="widget widget-about">
                                <a href="#" class="logo-footer">
                                    <img src="{{ asset('cart/images/footer-logo.png') }}" alt="logo-footer"
                                        width="154" height="43">
                                </a>
                                <div class="widget-body">
                                    <p>Fringilla urna porttitor rhoncus dolor purus <br> luctus venenatis lectus magna
                                        fringilla diam <br> maecenas ultricies mi eget mauris.
                                    </p>
                                    <a href="#">yourmail.com</a>
                                </div>
                            </div>
                            <!-- End Widget -->
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    <div class="widget">
                                        <h4 class="widget-title">About Us</h4>
                                        <ul class="widget-body">
                                            <li>
                                                <a href="#">About Us</a>
                                            </li>
                                            <li>
                                                <a href="#">Order History</a>
                                            </li>
                                            <li>
                                                <a href="#">Returns</a>
                                            </li>
                                            <li>
                                                <a href="#">Custom Service</a>
                                            </li>
                                            <li>
                                                <a href="#">Terms &amp; Condition</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Widget -->
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Customer Service</h4>
                                        <ul class="widget-body">
                                            <li>
                                                <a href="#">Payment Methods</a>
                                            </li>
                                            <li>
                                                <a href="#">Money-back Guarantee!</a>
                                            </li>
                                            <li>
                                                <a href="#">Returns</a>
                                            </li>
                                            <li>
                                                <a href="#">Custom Service</a>
                                            </li>
                                            <li>
                                                <a href="#">Terms &amp; Conditions</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Widget -->
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="widget mb-0">
                                        <h4 class="widget-title">My Account</h4>
                                        <ul class="widget-body">
                                            <li>
                                                <a href="#">Sign in</a>
                                            </li>
                                            <li>
                                                <a href="#">View Cart</a>
                                            </li>
                                            <li>
                                                <a href="#">My Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="#">Track My Order</a>
                                            </li>
                                            <li>
                                                <a href="#">Help</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Widget -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- End Footer Middle -->
                <div class="footer-bottom">
                    <div class="footer-left">
                        <figure class="payment">
                            <img src="{{ asset('cart/images/payment.png') }}" alt="payment" width="159" height="29">
                        </figure>
                    </div>
                    <div class="footer-center">
                        <p class="copyright">Myqueen eCommerce © 2021. All Rights Reserved</p>
                    </div>
                    <div class="footer-right">
                        <div class="social-links">
                            <a href="#" class="social-link social-facebook fab fa-facebook-f"></a>
                            <a href="#" class="social-link social-twitter fab fa-twitter"></a>
                            <a href="#" class="social-link social-linkedin fab fa-linkedin-in"></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Bottom -->
        </footer>
        <!-- End Footer -->
        </div>

        <!-- Scroll Top -->
        <a id="scroll-top" href="#top" title="Top" role="button" class="scroll-top"><i
                class="d-icon-arrow-up"></i></a>

        <!-- MobileMenu -->
        <div class="mobile-menu-wrapper">
            <div class="mobile-menu-overlay">
            </div>
            <!-- End Overlay -->
            <a class="mobile-menu-close" href="#"><i class="d-icon-times"></i></a>
            <!-- End CloseButton -->
            <div class="mobile-menu-container scrollable">
                <form action="#" class="input-wrapper">
                    <input type="text" class="form-control" name="search" autocomplete="off"
                        placeholder="Search your keyword..." required />
                    <button class="btn btn-search" type="submit">
                        <i class="d-icon-search"></i>
                    </button>
                </form>
                <!-- End Search Form -->
                <ul class="mobile-menu mmenu-anim">
                    <li>
                        <a href="">Home</a>
                    </li>
                    <li>
                        <a href="">About</a>
                    </li>

                    <li>
                        <a href="#">Products</a>
                        <ul>
                            <li><a href="">MQ Freckle Essence</a></li>
                            <li><a href="">MQ Anti-Blue Light Exquisite Spray</a></li>
                            <li><a href="">Coconut Oil Amino Acid Facial Cleanser</a></li>
                            <li><a href="">MQ Avocado Neckline Repair Message Cream</a></li>
                            <li><a href="">MQ Medical Mask</a></li>

                        </ul>
                    </li>


                    <li>
                        <a href="">Contact </a>
                    </li>

                </ul>
                <!-- End MobileMenu -->
            </div>
        </div>
        <!-- Plugins JS File -->
        <script src="{{ asset('cart/vendor/jquery/jquery.min.js') }}"></script>
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('cart/vendor/elevatezoom/jquery.elevatezoom.min.js') }}"></script>
        <script src="{{ asset('cart/vendor/imagesloaded/imagesloaded.pkgd.min.js') }}"></script>
        <script src="{{ asset('cart/vendor/magnific-popup/jquery.magnific-popup.min.js') }}"></script>
        <!-- Main JS File -->
        <script src="{{ asset('cart/js/main.min.js') }}"></script>
        <script src="{{ asset('alert/toastr.min.js') }}"></script>

        @yield('javascript')
        <script>
            $(document).ready(function() {
                calculate_cart()
            });

            function calculate_cart() {
                $.ajax({
                    url: "{{ URL::signedRoute('users.cart.create') }}",
                    type: 'get',
                    dataType: 'json',
                    success: function(data) {
                        if (data.length > 0)
                            $('#all_cart_count').html('(' + data.length + ')')
                        else
                            $('#all_cart_count').html('')

                    }
                })
            }
        </script>

        <script>
            $(document).ready(function() {

                var current_fs, next_fs, previous_fs; //fieldsets
                var opacity;

                $(".next").click(function() {

                    current_fs = $(this).parent();
                    next_fs = $(this).parent().next();

                    //Add Class Active
                    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                    //show the next fieldset
                    next_fs.show();
                    //hide the current fieldset with style
                    current_fs.animate({
                        opacity: 0
                    }, {
                        step: function(now) {
                            // for making fielset appear animation
                            opacity = 1 - now;

                            current_fs.css({
                                'display': 'none',
                                'position': 'relative'
                            });
                            next_fs.css({
                                'opacity': opacity
                            });
                        },
                        duration: 600
                    });
                });

                $(".previous").click(function() {

                    current_fs = $(this).parent();
                    previous_fs = $(this).parent().prev();

                    //Remove class active
                    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

                    //show the previous fieldset
                    previous_fs.show();

                    //hide the current fieldset with style
                    current_fs.animate({
                        opacity: 0
                    }, {
                        step: function(now) {
                            // for making fielset appear animation
                            opacity = 1 - now;

                            current_fs.css({
                                'display': 'none',
                                'position': 'relative'
                            });
                            previous_fs.css({
                                'opacity': opacity
                            });
                        },
                        duration: 600
                    });
                });

                $('.radio-group .radio').click(function() {
                    $(this).parent().find('.radio').removeClass('selected');
                    $(this).addClass('selected');
                });

                // $(".submit").click(function () {
                //     return false;
                // })

            });
        </script>
        </body>

        </html>
