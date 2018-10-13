<footer class="footer" id="footer">
    <div class="container">
        <div class="row">
            {!! dynamic_sidebar('footer_sidebar') !!}
        </div>
        <div class="footer-txt">
            <p>
                <a href=".">
                    <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}">
                </a>
            </p>
            <p>{{ setting('site_title') }}</p>
            <div class="hi-icon-wrap hi-icon-effect-3 hi-icon-effect-3a">
                <a href="{{ setting('facebook') }}" title="Facebook" class="hi-icon fa fa-facebook"></a>
                <a href="{{ setting('twitter') }}" title="Twitter" class="hi-icon fa fa-google-plus"></a>
                <a href="{{ setting('google_plus') }}" title="Google" class="hi-icon fa fa-youtube"></a>
            </div>
        </div>
    </div>
    <div class="footer-end">
        <div class="container">
            <p>{!! __(theme_option('copyright')) !!}</p>
        </div>
    </div>
</footer>

@if (app()->environment() != 'production')
    <div class="theme-panel-wrap">
            <span class="theme-panel-control">
                <i class="fa fa-cogs"></i>
                <i class="fa fa-times"></i>
            </span>
        <div class="theme-panel">
            <div class="theme-options">
                <div class="theme-option theme-colors">
                    <h4>THEME COLOR</h4>
                    <ul>
                        <li><a href="#" data-style="blue"></a></li>
                        <li><a href="#" data-style="green"></a></li>
                        <li><a href="#" data-style="red"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endif

</div>

{!! Theme::footer() !!}
        <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=58b80e5cfacf57001271be31&product=sticky-share-buttons"></script>

<script>
    $(document).ready(function () {
        $('.banner-slider-wrap').slick({
            dots: true
        });
    });
</script>

<div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=867766230033521";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

</body>
</html>