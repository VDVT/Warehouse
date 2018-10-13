<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
     */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
     */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function ($theme) {

        },
        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function ($theme) {
            // You may use this event to set up your assets.
            $theme->asset()->container('header')->usePath()->add('jquery', '/vendor/jquery/jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap-bundle', '/vendor/jquery/bootstrap.bundle.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery-easing', '/vendor/jquery/jquery.easing.min.js');
            $theme->asset()->container('footer')->usePath()->add('popper', '/vendor/jquery/popper.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap-js', 'vendor/bootstrap/js/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('owl-carousel-js', 'plugins/OwlCarousel2-2.2.1/dist/owl.carousel.js');
            $theme->asset()->container('footer')->usePath()->add('slick-js', 'plugins/slick-1.8.0/slick/slick.min.js');
            $theme->asset()->container('footer')->usePath()->add('scombobox', 'js/jquery.scombobox.min.js');
            $theme->asset()->container('footer')->usePath()->add('wow-js', 'js/wow.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap-datepicker', 'js/bootstrap-datepicker.min.js');
            $theme->asset()->container('footer')->usePath()->add('functions-js', 'js/functions.js', ['jquery']);


            $theme->asset()->usePath()->add('font-awesome', 'vendor/font-awesome/css/font-awesome.min.css');
            $theme->asset()->usePath()->add('bootstrap-css', 'vendor/bootstrap/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('owl-carousel', 'plugins/OwlCarousel2-2.2.1/dist/assets/owl.carousel.css');
            $theme->asset()->usePath()->add('owl-theme', 'plugins/OwlCarousel2-2.2.1/dist/assets/owl.theme.default.css');
            $theme->asset()->usePath()->add('slick', 'plugins/slick-1.8.0/slick/slick.css');
            $theme->asset()->usePath()->add('slick-theme', 'plugins/slick-1.8.0/slick/slick-theme.css');
            $theme->asset()->usePath()->add('animate', 'css/animate.css');
            $theme->asset()->usePath()->add('animate-theme', 'css/theme-animate.css');
            $theme->asset()->usePath()->add('font', 'plugins/fonts/fonts.css');
            $theme->asset()->usePath()->add('bootstrap-datepicker', 'css/bootstrap-datepicker.min.css');
            $theme->asset()->usePath()->add('style', 'css/style.css');
            $theme->asset()->usePath()->add('cm_style', 'css/cm_style.css');
            // $theme->asset()->usePath()->add('ripple.css', 'css/ripple.css');
            // $theme->asset()->usePath()->add('lightgallery-css', 'css/lightgallery.min.css');
            // $theme->asset()->usePath()->add('owl-transitions', 'plugins/owl-carousel/owl.transitions.css');

            if (defined('LANGUAGE_MODULE_SCREEN_NAME') && Language::getCurrentLocaleRTL()) {
                $theme->asset()->usePath()->add('rtl', 'css/rtl.css');
            }

            $theme->composer(['page', 'post'], function($view) {
                $view->withShortcodes();
            });
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme) {

            },
        ],
    ],
];


