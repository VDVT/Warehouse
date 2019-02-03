<?php

Route::group(['namespace' => 'Botble\Groupproductcategory\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'groupproductcategory'], function () {

            Route::get('/', [
                'as' => 'groupproductcategory.list',
                'uses' => 'GroupproductcategoryController@getList',
            ]);

            Route::get('/create', [
                'as' => 'groupproductcategory.create',
                'uses' => 'GroupproductcategoryController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'groupproductcategory.create',
                'uses' => 'GroupproductcategoryController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'groupproductcategory.edit',
                'uses' => 'GroupproductcategoryController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'groupproductcategory.edit',
                'uses' => 'GroupproductcategoryController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'groupproductcategory.delete',
                'uses' => 'GroupproductcategoryController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'groupproductcategory.delete.many',
                'uses' => 'GroupproductcategoryController@postDeleteMany',
                'permission' => 'groupproductcategory.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'groupproductcategory.change.status',
                'uses' => 'GroupproductcategoryController@postChangeStatus',
                'permission' => 'groupproductcategory.edit',
            ]);
        });
    });
    
});