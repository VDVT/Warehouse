<?php

Route::group(['namespace' => 'Botble\Customers\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'customers'], function () {

            Route::get('/', [
                'as' => 'customers.list',
                'uses' => 'CustomersController@getList',
            ]);

            Route::get('/create', [
                'as' => 'customers.create',
                'uses' => 'CustomersController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'customers.create',
                'uses' => 'CustomersController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'customers.edit',
                'uses' => 'CustomersController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'customers.edit',
                'uses' => 'CustomersController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'customers.delete',
                'uses' => 'CustomersController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'customers.delete.many',
                'uses' => 'CustomersController@postDeleteMany',
                'permission' => 'customers.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'customers.change.status',
                'uses' => 'CustomersController@postChangeStatus',
                'permission' => 'customers.edit',
            ]);
        });
    });
    
});