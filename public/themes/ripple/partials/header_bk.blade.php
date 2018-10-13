<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    {!! Theme::header() !!}
    <script>
        const assert = {
            image: '<?php echo Theme::asset()->url(''); ?>'
        };
        const _token = "{{ csrf_token() }}";
    </script>
</head>
<!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
<body>
    <section id="content-main">
        <header id="header">
            <div class="top">
                <div class="container">
                    <ul class="nav align-items-center">
                        <li class="nav-item phone mr-auto">
                            <a class="nav-link" href="#">{{ theme_option('phone') }}</a>
                        </li>
                        <!-- <li class="nav-item search">
                            <a class="nav-link" href="#">
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button class="btn btn-secondary" type="button"><img src="http://tinyprovider.us/umh/img/icon/search.png" alt=""></button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Search" aria-label="Search for...">
                                </div>
                            </a>
                        </li> -->
                        <!-- <li class="nav-item login">
                            <a class="nav-link" href="#">Client Login</a>
                        </li> -->
                        <li class="nav-item" style="margin-left: 0">
                            <a class="nav-link" href="{{ route('public.post.list') }}">Blog</a>
                        </li>
                        <li class="nav-item contact">
                            <a class="nav-link btn-effect" href="{{ route('public.page.contactaccountmanager') }}">CONTACT ACCOUNT MANAGER</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="bottom" data-toggle="sticky-onscroll">
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light align-items-stretch" data-toggle="sticky-onscroll">
                        <a class="navbar-brand" href="/">
                            <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">
                                        Products Solutions
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <div class="box_mega d-flex flex-wrap align-items-center justify-content-between">
                                            <div class="box">
                                                <h3 class="title text-uppercase">Products Solutions</h3>
                                                <nav class="nav d-flex flex-wrap">
                                                    <?php 
                                                        $default_img = ''; 
                                                        foreach ($product_solutions as $key => $product_solution) { 
                                                            if($key==0) $default_img = '<img class="img-fluid" src="'.$product_solution->image.'" alt="'.$product_solution->name.'">';
                                                    ?>
                                                        <a class="nav-link col-6" href="{{ route('public.product-solution.details', $product_solution->slug) }}" data="<?php echo $product_solution->image; ?>">{{ $product_solution->name }}</a>
                                                    <?php } ?>
                                                </nav>
                                            </div>
                                            <?php echo $default_img; ?>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">
                                        Industries we serve
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <div class="box_mega d-flex  flex-wrap align-items-center justify-content-between">
                                            <div class="box">
                                                <h3 class="title text-uppercase">industries we serve</h3>
                                                <nav class="nav d-flex flex-wrap">
                                                    <?php 
                                                        $default_img = ''; 
                                                        foreach ($industrials as $key => $industrial) { 
                                                            if($key==0) $default_img = '<img class="img-fluid" src="'.$industrial->image.'" alt="'.$industrial->name.'">';
                                                    ?>
                                                        <a class="nav-link col-6" href="{{ route('public.industrial.details', $industrial->slug) }}" data="<?php echo $industrial->image; ?>">{{ $industrial->name }}</a>
                                                    <?php } ?>
                                                    <!-- <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Warehousing</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Wholesaler</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">3PL</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Manufacturing</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Food Service</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Chemical</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Retail</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Pharmaceutical</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Construction</a> -->
                                                </nav>
                                            </div>
                                            <?php echo $default_img; ?>
                                            <!-- <img class="img-fluid" src="<?php echo Theme::asset()->url('images/megamenu.png'); ?>" alt=""> -->
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.product_category.list') }}" id="navbarDropdown" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">
                                        Product
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <!-- <a class="nav-link" href="core_expertise.php">Core expertise</a> -->

                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">Core expertise</a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <div class="box_mega d-flex  flex-wrap align-items-center justify-content-between">
                                            <div class="box">
                                                <h3 class="title text-uppercase">Core expertise</h3>
                                                <nav class="nav d-flex flex-wrap">
                                                    <?php 
                                                        $default_img = ''; 
                                                        foreach ($core_expertises as $key => $core_expertise) { 
                                                            $name = strip_tags(str_replace('<br>', ' ', $core_expertise->name));
                                                            if($key==0) $default_img = '<img class="img-fluid" src="'.$core_expertise->image.'" alt="'.$name.'">';
                                                    ?>
                                                        <a class="nav-link col-6" href="{{ route('public.core-expertise.details', $core_expertise->slug) }}" data="<?php echo $core_expertise->image; ?>">{{ $name }}</a>
                                                    <?php } ?>
                                                    <!-- <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Warehousing</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Wholesaler</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">3PL</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Manufacturing</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Food Service</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Chemical</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Retail</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Pharmaceutical</a>
                                                    <a class="nav-link col-6" href="{{ route('public.industrial.details', 'anchors') }}" data="<?php echo Theme::asset()->url('images/megamenu.png'); ?>">Construction</a> -->
                                                </nav>
                                            </div>
                                            <?php echo $default_img; ?>
                                            <!-- <img class="img-fluid" src="<?php echo Theme::asset()->url('images/megamenu.png'); ?>" alt=""> -->
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">resources</a>
                                    <div class="dropdown-menu dropdown-menu-type-3" aria-labelledby="navbarDropdown">
                                        <div class="box_mega">
                                            <div class="box box-resource">
                                                <nav class="nav d-block">
                                                    <a class="nav-link" href="{{ route('public.literature.list') }}">Literature</a>
                                                    <a class="nav-link" href="{{ route('public.post.list') }}">Blog</a>
                                                    <a class="nav-link" href="{{ route('public.page.career') }}">Career Opportunity</a>
                                                    <a class="nav-link" href="{{ route('public.page.donation') }}">Donation</a>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.project.list') }}">projects</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.page.aboutus') }}">about us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.page.contactus') }}">contact us</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </header>