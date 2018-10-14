<footer id="footer" class="footer">
    <div class="container">
        <div class="p-t-5 p-b-2 mb-2-i">
            <div class="row justify-content-between">
                <div class="col-md-6 m-b-md-3">
                    <div class="footer-title">Stay In Touch</div>
                    <div class="footer-content">
                        <div class="form-group">
                            <input type="text" placeholder="Enter your email address" class="form-control no-line">
                        </div>
                        <button class="btn btn-outline-custom-i btn-round">Send</button>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-title">Literature</div>
                    <div class="footer-content">
                        <div class="row">
                            @foreach($list_literatures as $literature)
                                <div class="col-6 m-b-sm-3">
                                    <a target="_blank" title="{{ $literature->name }}" href="{{ $literature->file }}"><img src="{{ $literature->image }}" alt="{{ $literature->name }}" class="img-fluid"></a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom p-y-3">
            <div class="row">
                <div class="col-md-6 m-b-sm-3">
                    <div class="footer-social">
                        <a href="{{ theme_option('facebook') }}"><i class="fab fa-facebook-f"></i></a>
                        <a href="{{ theme_option('google_plus') }}"><i class="fab fa-google-plus-g"></i></a>
                        <a href="{{ theme_option('linkedin') }}"><i class="fab fa-linkedin-in"></i></a>
                        <a href="{{ theme_option('yelp') }}"><i class="fab fa-yelp"></i></a>
                        <a class="address"><i class="fas fa-map-marker-alt m-r-1"></i>{{ theme_option('address') }}</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="footer-link">
                        <li>
                            <a href="#">Terms &amp; Conditions</a>
                        </li>
                        <li>
                            <a href="#">Shipping &amp; Return</a>
                        </li>
                        <li>
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#">FAQ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- <div class="go-up" style="right: -60px"><i class="fa fa-arrow-up" aria-hidden="true"></i></div> -->

<!-- JS Library-->
{!! Theme::footer() !!}
</main>
</body>
</html>
