<!DOCTYPE html>
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
<body>
    {!! Theme::partial('sidebar-menu') !!}
    <main class="offcanvas-wrapper">
        <header id="header" class="header-menu">
            <div class="container-fluid px-0">
                <div class="header-row">
                    <div class="header-mid">
                        <div class="navigation">
                            <ul>
                                <li class="mobile"><a href="#" id="toggle-menu-mobile"><span class="fa fa-bars"></span></a></li>
                                <li><a href="{{ route('public.page.aboutus') }}">About Us</a></li>
                                <li><a href="{{ route('public.product_category.list') }}">Products</a></li>
                                <li class="has-children">
                                    <a href="#">Customer Service</a>
                                    <ul class="sub-menu">
                                        <li><a href="{{ route('public.services.carrer-oppotunities') }}">Carrer Oppotunities</a></li>
                                        <li><a href="{{ route('public.services.customer-info') }}">Customer Info Form</a></li>
                                        <li><a href="{{ route('public.services.vendor-package') }}">New Vendor Packet Form</a></li>
                                    </ul>
                                </li>
                                <li class="logo"><a href="/"><img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}"></a></li>
                                <li><a href="#">Gallery</a></li>
                                <li><a href="{{ route('public.post.list') }}">News</a></li>
                                <li><a href="{{ route('public.literature.list') }}">Literature</a></li>
                                <li><a href="{{ route('public.page.contactus') }}">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>