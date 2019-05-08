<?php
    use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;
?>
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
        <header id="header" class="header-menu">
            <div class="container-fluid px-0">
                <div class="header-row">
                    <div class="header-mid">
                        <div class="navigation">
                            <ul>
                                <li class="mobile"><a href="#" id="toggle-menu-mobile"><span class="fa fa-bars"></span></a></li>
                                <li><a href="{{ route('public.page.aboutus') }}">About Us</a></li>
                                <!-- <li><a href="{{ route('public.product_category.list') }}">Quick Ship Products</a></li> -->
                                <li class="has-children">
                                    <a href="#">Products</a>
                                    <ul class="sub-menu">
                                        @php
                                            $groupProduct = app(GroupproductcategoryInterface::class)->allBy(['status' => 1]);
                                        @endphp
                                        @foreach($groupProduct as $group)
                                            <li><a href="{{ route('public.product_category.group', ['groupId' => $group->id]) }}">{{ $group->name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="#">Customer Service</a>
                                    <ul class="sub-menu">
                                        <!-- <li><a href="{{ route('public.page.career') }}">Career Opportunities</a></li> -->
                                        <li><a href="{{ route('public.services.customer-info') }}">New Customer Form</a></li>
                                        <!-- <li><a href="{{ route('public.services.vendor-package') }}">New Vendor Form</a></li> -->
                                    </ul>
                                </li>
                                <li class="logo"><a href="/"><img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}" style="max-width: 156px;"></a></li>
                                <li><a href="{{ route('public.gallery.index') }}">Gallery</a></li>
                                <li><a href="{{ route('public.post.list') }}">News</a></li>
                                <li><a href="{{ route('public.literature.list') }}">Literature</a></li>
                                <li><a href="{{ route('public.page.contactus') }}">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            @if (Session::has('success'))
                <div id="close-alert" class="notification notification-custom-overlay notification-header fadeInLeft">
                    <div class="container">
                        <div class="content">
                            <div class="text-content">{{ Session::get('success') }}</div>
                    </div>
                        <a href="#" class="close-notification close-alert"><i class="fas fa-times"></i></a>
                    </div>
                </div>
            </div>
            @endif

            @if (Session::has('error'))
                <div id="close-alert" class="notification notification-custom-overlay notification-header fadeInLeft">
                    <div class="container">
                        <div class="content">
                            <div class="text-content">{{ Session::get('error') }}</div>
                    </div>
                        <a href="#" class="close-notification close-alert"><i class="fas fa-times"></i></a>
                    </div>
                </div>
            @endif

            @if (Session::has('warning'))
                <div id="close-alert" class="notification notification-custom-overlay notification-header fadeInLeft">
                    <div class="container">
                        <div class="content">
                            <div class="text-content">{{ Session::get('warning') }}</div>
                    </div>
                        <a href="#" class="close-notification close-alert"><i class="fas fa-times"></i></a>
                    </div>
                </div>
            @endif
        </header>