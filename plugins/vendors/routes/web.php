<?php

Route::group(['namespace' => 'Botble\Vendors\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'vendors'], function () {

            Route::get('/', [
                'as' => 'vendors.list',
                'uses' => 'VendorsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'vendors.create',
                'uses' => 'VendorsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'vendors.create',
                'uses' => 'VendorsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'vendors.edit',
                'uses' => 'VendorsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'vendors.edit',
                'uses' => 'VendorsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'vendors.delete',
                'uses' => 'VendorsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'vendors.delete.many',
                'uses' => 'VendorsController@postDeleteMany',
                'permission' => 'vendors.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'vendors.change.status',
                'uses' => 'VendorsController@postChangeStatus',
                'permission' => 'vendors.edit',
            ]);
        });
    });
    
});