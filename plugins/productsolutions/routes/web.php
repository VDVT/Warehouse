<?php

Route::group(['namespace' => 'Botble\Productsolutions\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'productsolutions-api'], function () {
            Route::get('/', [
                'as' => 'api.productsolutions.list',
                'uses' => 'api\ProductsolutionsController@getList',
                'permission' => 'productsolutions.list',
            ]);
        });
        Route::group(['prefix' => 'product-solutions'], function () {

            Route::get('/', [
                'as' => 'productsolutions.list',
                'uses' => 'ProductsolutionsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'productsolutions.create',
                'uses' => 'ProductsolutionsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'productsolutions.create',
                'uses' => 'ProductsolutionsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'productsolutions.edit',
                'uses' => 'ProductsolutionsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'productsolutions.edit',
                'uses' => 'ProductsolutionsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'productsolutions.delete',
                'uses' => 'ProductsolutionsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'productsolutions.delete.many',
                'uses' => 'ProductsolutionsController@postDeleteMany',
                'permission' => 'productsolutions.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'productsolutions.change.status',
                'uses' => 'ProductsolutionsController@postChangeStatus',
                'permission' => 'productsolutions.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'productsolutions.create.slug',
                'uses' => 'ProductsolutionsController@postCreateSlug',
                'permission' => 'productsolutions.create',
            ]);
            
        });
    });
    
});