<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="canonical" href="{{ url('/') }}">
    <meta http-equiv="content-language" content="en">
    <link rel="shortcut icon" href="{{ theme_option('logo') }}">

    {!! Theme::header() !!}

</head>
<body>
    <div class="wrapper" id="site_wrapper">
        <header class="header" id="header">
                <div class="header-wrap">
                    <nav class="nav-top">
                        <div class="container">
                            <div class="pull-left">
                                <div class="hi-icon-wrap hi-icon-effect-3 hi-icon-effect-3a">
                                    <a href="{{ setting('facebook') }}" title="Facebook" class="hi-icon fa fa-facebook"></a>
                                    <a href="{{ setting('twitter') }}" title="Twitter" class="hi-icon fa fa-google-plus"></a>
                                    <a href="{{ setting('google_plus') }}" title="Google" class="hi-icon fa fa-youtube"></a>
                                </div>
                            </div>

                            <div class="pull-right">
                                <ul class="pull-left">
                                    @if (acl_check_login())
                                        <li><a href="{{ route('public.account.overview') }}"><i class="fa fa-user"></i> <span>{{ acl_get_current_user()->getFullName() }}</span></a></li>
                                        <li><a href="{{ route('public.access.logout') }}"><i class="fa fa-sign-out"></i> {{ __('Logout') }}</a></li>
                                    @else
                                        <li><a href="{{ route('public.access.login') }}"><i class="fa fa-sign-in"></i> {{ __('Login') }}</a></li>
                                    @endif
                                </ul>
                                <div class="pull-left">
                                    <div class="pull-right">
                                        <div class="language-wrapper">
                                            {!! apply_filters('language_switcher') !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                    <div class="header-content">
                        <div class="container">
                            <h1 class="logo">
                                <a href="{{ url('/') }}" title="{{ setting('site_title') }}">
                                    <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}">
                                </a>
                            </h1>
                            <div class="header-content-right">
                                <p><img alt="Banner" src="{{ url(theme_option('top_banner', '/themes/newstv/assets/images/banner.png')) }}" style="width: 728px; height: 90px;"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="header-hotnews">
                    <div class="container">
                        <div class="hotnews-content">
                            <h2 class="hotnews-tt">{{ __('Hot of the day') }}</h2>
                            <div class="hotnews-dv">
                                <div class="hotnews-slideshow">
                                    <div class="js-marquee">
                                        @foreach (get_featured_posts(5) as $feature_item)
                                        <a href="{{ route('public.single.detail', $feature_item->slug) }}"
                                           title="{{ $feature_item->name }}">{{ $feature_item->name }}</a>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <nav class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target=".navbar-ex1-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand"  href="{{ url('/') }}" title="{{ setting('site_title') }}">
                                <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}">
                            </a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse navbar-ex1-collapse">

                            {!!
                                Menu::generateMenu([
                                    'slug' => 'main-menu',
                                    'options' => ['class' => 'nav navbar-nav'],
                                    'view' => 'main-menu'
                                ])
                            !!}

                            <form class="navbar-form navbar-right" role="search"
                                  accept-charset="UTF-8"
                                  action="{{ route('public.search') }}"
                                  method="GET">
                                <div class="tn-searchtop">
                                    <button type="button" class="btn btn-default js-btn-searchtop">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <button type="submit" class="btn btn-default">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="{{ __('Search news...') }}" name="q">
                                    </div>
                                </div>
                                <button id="tn-searchtop" class="js-btn-searchtop" type="button"><i class="fa fa-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </nav>
            </header>

