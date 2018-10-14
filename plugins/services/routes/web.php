<?php

Route::group(['namespace' => 'Botble\Services\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'services'], function () {

            Route::get('/', [
                'as' => 'services.list',
                'uses' => 'ServicesController@getList',
            ]);

            Route::get('/create', [
                'as' => 'services.create',
                'uses' => 'ServicesController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'services.create',
                'uses' => 'ServicesController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'services.edit',
                'uses' => 'ServicesController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'services.edit',
                'uses' => 'ServicesController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'services.delete',
                'uses' => 'ServicesController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'services.delete.many',
                'uses' => 'ServicesController@postDeleteMany',
                'permission' => 'services.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'services.change.status',
                'uses' => 'ServicesController@postChangeStatus',
                'permission' => 'services.edit',
            ]);
        });

        Route::group(['prefix' => 'services_carrer'], function () {

            Route::get('/', [
                'as' => 'services_carrer.list',
                'uses' => 'CarrerController@getList',
            ]);

            Route::get('/create', [
                'as' => 'services_carrer.create',
                'uses' => 'CarrerController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'services_carrer.create',
                'uses' => 'CarrerController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'services_carrer.edit',
                'uses' => 'CarrerController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'services_carrer.edit',
                'uses' => 'CarrerController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'services_carrer.delete',
                'uses' => 'CarrerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'services_carrer.delete.many',
                'uses' => 'CarrerController@postDeleteMany',
            ]);

            Route::post('/change-status', [
                'as' => 'services_carrer.change.status',
                'uses' => 'CarrerController@postChangeStatus',
            ]);
        });

        Route::group(['prefix' => 'services_customer'], function () {

            Route::get('/', [
                'as' => 'services_customer.list',
                'uses' => 'CustomerController@getList',
            ]);

            Route::get('/create', [
                'as' => 'services_customer.create',
                'uses' => 'CustomerController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'services_customer.create',
                'uses' => 'CustomerController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'services_customer.edit',
                'uses' => 'CustomerController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'services_customer.edit',
                'uses' => 'CustomerController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'services_customer.delete',
                'uses' => 'CustomerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'services_customer.delete.many',
                'uses' => 'CustomerController@postDeleteMany',
            ]);

            Route::post('/change-status', [
                'as' => 'services_customer.change.status',
                'uses' => 'CustomerController@postChangeStatus',
            ]);
        });

        Route::group(['prefix' => 'services_vendor'], function () {

            Route::get('/', [
                'as' => 'services_vendor.list',
                'uses' => 'VendorController@getList',
            ]);

            Route::get('/create', [
                'as' => 'services_vendor.create',
                'uses' => 'VendorController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'services_vendor.create',
                'uses' => 'VendorController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'services_vendor.edit',
                'uses' => 'VendorController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'services_vendor.edit',
                'uses' => 'VendorController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'services_vendor.delete',
                'uses' => 'VendorController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'services_vendor.delete.many',
                'uses' => 'VendorController@postDeleteMany',
            ]);

            Route::post('/change-status', [
                'as' => 'services_vendor.change.status',
                'uses' => 'VendorController@postChangeStatus',
            ]);
        });


    });
    
});