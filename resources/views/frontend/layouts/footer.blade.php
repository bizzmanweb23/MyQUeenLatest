<footer class="footer">
            <div class="container">
                <div class="footer-middle">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="widget widget-about">
                                <a href="{{url('/')}}" class="logo-footer">
                                    <img src="images/footer-logo.png" alt="logo-footer" width="154" height="43">
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
                                                <a href="{{url('about')}}">About Us</a>
                                            </li>
                                            <li>
                                                <a href="">Order History</a>
                                            </li>
                                            <li>
                                                <a href="">Returns</a>
                                            </li>
                                            <li>
                                                <a href="">Custom Service</a>
                                            </li>
                                            <li>
                                                <a href="">Terms &amp; Condition</a>
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
                                                <a href="">Payment Methods</a>
                                            </li>
                                            <li>
                                                <a href="">Money-back Guarantee!</a>
                                            </li>
                                            <li>
                                                <a href="">Returns</a>
                                            </li>
                                            <li>
                                                <a href="">Custom Service</a>
                                            </li>
                                            <li>
                                                <a href="">Terms &amp; Conditions</a>
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
                                                <a href="">Sign in</a>
                                            </li>
                                            <li>
                                                <a href="">View Cart</a>
                                            </li>
                                            <li>
                                                <a href="">My Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="">Track My Order</a>
                                            </li>
                                            <li>
                                                <a href="">Help</a>
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
                            <img src="images/payment.png" alt="payment" width="159" height="29">
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
    <!-- Plugins JS File -->
    <script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('vendor/parallax/parallax.min.js')}}"></script>
    <script src="{{asset('vendor/isotope/isotope.pkgd.min.js')}}"></script>
    <script src="{{asset('vendor/imagesloaded/imagesloaded.pkgd.min.js')}}"></script>
    <script src="{{asset('vendor/elevatezoom/jquery.elevatezoom.min.js')}}"></script>
    <script src="{{asset('vendor/magnific-popup/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{asset('vendor/owl-carousel/owl.carousel.min.js')}}"></script>
    <!-- Main JS File -->
    <script src="{{asset('js/main.min.js')}}"></script>
    @yield('javascript')
</body>

</html>