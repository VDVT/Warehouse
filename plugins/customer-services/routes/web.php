<?php

Route::group(['namespace' => 'Botble\CustomerServices\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'customer-services'], function () {

            Route::get('/', [
                'as' => 'customer-services.list',
                'uses' => 'CustomerServicesController@getList',
            ]);

            Route::get('/create', [
                'as' => 'customer-services.create',
                'uses' => 'CustomerServicesController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'customer-services.create',
                'uses' => 'CustomerServicesController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'customer-services.edit',
                'uses' => 'CustomerServicesController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'customer-services.edit',
                'uses' => 'CustomerServicesController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'customer-services.delete',
                'uses' => 'CustomerServicesController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'customer-services.delete.many',
                'uses' => 'CustomerServicesController@postDeleteMany',
                'permission' => 'customer-services.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'customer-services.change.status',
                'uses' => 'CustomerServicesController@postChangeStatus',
                'permission' => 'customer-services.edit',
            ]);
        });
    });
    
});