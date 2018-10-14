<?php

Route::group(['namespace' => 'Botble\Base\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth', 'permission' => 'superuser'], function () {

        Route::group(['prefix' => 'system'], function () {

            Route::get('/info', [
                'as' => 'system.info',
                'uses' => 'SystemController@getInfo',
            ]);

        });

        Route::group(['prefix' => 'plugins'], function () {

            Route::get('/', [
                'as' => 'plugins.list',
                'uses' => 'SystemController@getListPlugins',
            ]);

            Route::get('/change}', [
                'as' => 'plugins.change.status',
                'uses' => 'SystemController@getChangePluginStatus',
                'middleware' => 'preventDemo',
            ]);

        });

    });

    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        Route::get('/faq', [
            'as' => 'public.page.faq',
            'uses' => 'PageController@getFaq',
        ]);
        Route::get('/career', [
            'as' => 'public.page.career',
            'uses' => 'PageController@getCareer',
        ]);

        Route::get('/application-form', [
            'as' => 'public.page.applicationform',
            'uses' => 'PageController@getApplicationForm',
        ]);
        Route::post('/application-send', [
            // 'as' => 'public.page.applicationform',
            'uses' => 'PageController@postApplicationForm',
        ]);

        Route::post('/newsletter-send', [
            // 'as' => 'public.page.applicationform',
            'uses' => 'PageController@postNewsletter',
        ]);

        Route::get('/donation', [
            'as' => 'public.page.donation',
            'uses' => 'PageController@getDonation',
        ]);
        Route::get('/donation-form', [
            'as' => 'public.page.donationform',
            'uses' => 'PageController@getDonationForm',
        ]);
        Route::post('/send-donation', [
            // 'as' => 'public.page.applicationform',
            'uses' => 'PageController@postDonation',
        ]);
        Route::get('/donation-success', [
            'as' => 'public.page.donationsuccess',
            'uses' => 'PageController@postDonationSuccess',
        ]);

        Route::get('/project-completion', [
            'as' => 'public.page.project-completion',
            'uses' => 'PageController@getProjectCompletion',
        ]);
        Route::post('/send-project-completion', [
            'as' => 'public.page.sendProjectCompletion',
            'uses' => 'PageController@postProjectCompletion',
        ]);

        Route::get('/get-a-quote', [
            'as' => 'public.page.contactaccountmanager',
            'uses' => 'PageController@getContactAccountManager',
        ]);
        Route::get('/get-a-quote-success', [
            'as' => 'public.page.contactaccountmanagersuccess',
            'uses' => 'PageController@sendContactAccountManagerSuccess',
        ]);
        Route::post('/send-contact-account-manager', [
            // 'as' => 'public.page.contactaccountmanager',
            'uses' => 'PageController@postContactAccountManager',
        ]);
        Route::get('/about-us', [
            'as' => 'public.page.aboutus',
            'uses' => 'PageController@getAboutUs',
        ]);
        Route::get('/contact-us', [
            'as' => 'public.page.contactus',
            'uses' => 'PageController@getContactUs',
        ]);
        Route::post('/send-contact-us', [
            // 'as' => 'public.page.contactus',
            'uses' => 'PageController@postContactUs',
        ]);

        Route::get('/blog', [
            'as' => 'public.post.list',
            'uses' => 'PostController@getList',
        ]);
        Route::get('/blog/{slug}', [
            'as' => 'public.post.details',
            'uses' => 'PostController@details',
        ]);

        

        Route::group(['prefix' => 'project'], function () {
            Route::get('/', [
                'as'   => 'public.project.list',
                'uses' => 'ProjectController@getList',
            ]);
            Route::get('/{slug}', [
                'as'   => 'public.project.details',
                'uses' => 'ProjectController@details',
            ]);
        });

        Route::group(['prefix' => 'core-expertise'], function () {
            Route::get('/{slug}', [
                'as'   => 'public.core-expertise.details',
                'uses' => 'CoreExpertiseController@details',
            ]);
        });

        Route::group(['prefix' => 'industries'], function () {
            Route::get('/{slug}', [
                'as'   => 'public.industrial.details',
                'uses' => 'IndustrialController@details',
            ]);
        });
        
        Route::group(['prefix' => 'product-solution'], function () {
            Route::get('/{slug}', [
                'as'   => 'public.product-solution.details',
                'uses' => 'ProductSolutionController@details',
            ]);
        });

        Route::group(['prefix' => 'literature'], function () {
            Route::get('/', [
                'as'   => 'public.literature.list',
                'uses' => 'LiteratureController@getList',
            ]);
        });

        Route::group(['prefix' => 'product-category'], function () {
            Route::get('/', [
                'as' => 'public.product_category.list',
                'uses' => 'ProductController@productCategoryList',
            ]);
            Route::get('/{slug}', [
                'as' => 'public.product_category.details',
                'uses' => 'ProductController@productCategorydetails',
            ]);
        });

        // Route::group(['prefix' => 'product'], function () {
        //     Route::get('/', [
        //         'as' => 'public.product.single.list',
        //         'uses' => 'ProductController@productlist',
        //     ]);
        //     Route::get('/{slug}', [
        //         'as' => 'public.product.single.detail',
        //         'uses' => 'ProductController@productdetails',
        //     ]);
        // });

        Route::group(['prefix' => 'product'], function () {
            Route::get('/', [
                'as'   => 'public.product.list',
                'uses' => 'ProductController@getList',
            ]);
            Route::get('/{slug}', [
                'as'   => 'public.product.details',
                'uses' => 'ProductController@details',
            ]);
            Route::post('/load-products', [
                'uses' => 'ProductController@loadProducts',
            ]);
            Route::post('/load-product-details', [
                'uses' => 'ProductController@loadProductDetails',
            ]);
        });

        Route::group(['prefix' => 'customer-services'], function () {
            Route::get('/carrer-oppotunities', [
                'as'   => 'public.services.carrer-oppotunities',
                'uses' => 'CustomerServiceController@showCarrerForm',
            ]);

            Route::post('/carrer-oppotunities', [
                'as'   => 'public.services.carrer-oppotunities-post',
                'uses' => 'CustomerServiceController@submitCarrerForm',
            ]);

            Route::get('/customer-info', [
                'as'   => 'public.services.customer-info',
                'uses' => 'CustomerServiceController@showCustomerForm',
            ]);

            Route::post('/customer-info', [
                'as'   => 'public.services.customer-info-post',
                'uses' => 'CustomerServiceController@submitCustomerForm',
            ]);

            Route::get('/vendor-package', [
                'as'   => 'public.services.vendor-package',
                'uses' => 'CustomerServiceController@showVendorForm',
            ]);

            Route::post('/vendor-package', [
                'as'   => 'public.services.vendor-package-post',
                'uses' => 'CustomerServiceController@showVendorForm',
            ]);
        });


        Route::get('/', [
            'as' => 'public.index',
            'uses' => 'PublicController@getIndex',
        ]);

        Route::get('/{slug}', [
            'as' => 'public.single.detail',
            'uses' => 'PublicController@getView',
        ]);

        Route::get('/sitemap.xml', [
            'as' => 'public.sitemap',
            'uses' => 'PublicController@getSiteMap',
        ]);

        Route::get('/feed/blog/json', [
            'as' => 'public.feed.json',
            'uses' => 'PublicController@getJsonFeed',
        ]);

        

    });
});