<?php

Route::group(['namespace' => 'Botble\Products\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'product-categories-api'], function () {
            Route::get('/', [
                'as' => 'api.product_categories.list',
                'uses' => 'api\ProductCategoryController@getList',
                'permission' => 'product_categories.list',
            ]);
        });
        Route::group(['prefix' => 'products'], function () {

            Route::get('/', [
                'as' => 'products.list',
                'uses' => 'ProductsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'products.create',
                'uses' => 'ProductsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'products.create',
                'uses' => 'ProductsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'products.edit',
                'uses' => 'ProductsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'products.edit',
                'uses' => 'ProductsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'products.delete',
                'uses' => 'ProductsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'products.delete.many',
                'uses' => 'ProductsController@postDeleteMany',
                'permission' => 'products.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'products.change.status',
                'uses' => 'ProductsController@postChangeStatus',
                'permission' => 'products.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'products.create.slug',
                'uses' => 'ProductsController@postCreateSlug',
                'permission' => 'products.create',
            ]);
        });

        Route::group(['prefix' => 'product_categories'], function () {

            Route::get('/', [
                'as' => 'product_categories.list',
                'uses' => 'ProductCategoryController@getList',
            ]);

            Route::get('/create', [
                'as' => 'product_categories.create',
                'uses' => 'ProductCategoryController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'product_categories.create',
                'uses' => 'ProductCategoryController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'product_categories.edit',
                'uses' => 'ProductCategoryController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'product_categories.edit',
                'uses' => 'ProductCategoryController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'product_categories.delete',
                'uses' => 'ProductCategoryController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'product_categories.delete.many',
                'uses' => 'ProductCategoryController@postDeleteMany',
                'permission' => 'product_categories.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'product_categories.change.status',
                'uses' => 'ProductCategoryController@postChangeStatus',
                'permission' => 'product_categories.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'product_categories.create.slug',
                'uses' => 'ProductCategoryController@postCreateSlug',
                'permission' => 'product_categories.create',
            ]);
        });
    });
    
});