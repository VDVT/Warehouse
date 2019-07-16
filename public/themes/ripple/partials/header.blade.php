<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <link rel='shortcut icon' type='image/x-icon' href="{{ asset('favicon.ico')}}" /> -->
    {!! Theme::header() !!}
    <script>
        const assert = {
            image: '<?php echo Theme::asset()->url(''); ?>'
        };
        const _token = "{{ csrf_token() }}";
    </script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.12/css/lightgallery.min.css">
</head>
<body>
    {!! Theme::partial('sidebar-menu') !!}
    <main class="offcanvas-wrapper">
        <header id="header" data-toggle="sticky-onscroll" class="sticky is-sticky">
            <div class="top">
                <div class="container">
                    <ul class="nav align-items-center justify-content-between border-0">
                        <li class="nav-item phone">
                            <a class="nav-link" href="#">866-323-7225</a>
                        </li>
                        <li class="nav-item">
                            <a class="navbar-brand" href="/">
                                <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}" style="max-width: 200px; width: 100%;">
                            </a>
                        </li>
                        <li class="nav-item contact">
                            <a class="nav-link btn-effect" href="{{ route('public.page.contactaccountmanager') }}">GET A QUOTE</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="sticky-wrapper" style="height: auto;"></div>
            <div class="bottom sticky" data-toggle="sticky-onscroll">
                <div class="container">
                    <div class="sticky-wrapper" style="height: auto;"></div>
                    <nav class="navbar navbar-expand-lg navbar-light align-items-stretch sticky" data-toggle="sticky-onscroll">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.product_category.list') }}" id="navbarDropdown" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">
                                        Products
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="" aria-haspopup="true" aria-expanded="false">Customer Service</a>
                                    <div class="dropdown-menu dropdown-menu-type-3" aria-labelledby="navbarDropdown">
                                        <div class="box_mega">
                                            <div class="box box-resource">
                                                <nav class="nav d-block">
                                                    <a class="nav-link" href="{{ route('public.services.customer-info') }}">New Customer Form</a>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.literature.list') }}">Literature</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.page.aboutus') }}">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.post.list') }}">News</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.gallery.index') }}">Gallery</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('public.page.contactus') }}">Contact Us</a>
                                </li>
                                <li class="d-sm-block d-md-none d-lg-none d-xl-none">
                                    <div class="box-hotline-menu d-flex align-items-center justify-content-center">
                                        <div class="box-content text-center">
                                            <p class="hotline font-weight-bold"><i class="fas fa-phone" aria-hidden="true"></i> 866-323-7225</p>
                                            <a class="nav-link btn-effect btn-contact" href="https://www.unitedmh.com/get-a-quote">Get A Quote</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
