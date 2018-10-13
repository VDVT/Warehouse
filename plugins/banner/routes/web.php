<?php

Route::group(['namespace' => 'Botble\Banner\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'banner'], function () {

            Route::get('/', [
                'as' => 'banner.list',
                'uses' => 'BannerController@getList',
            ]);

            Route::get('/create', [
                'as' => 'banner.create',
                'uses' => 'BannerController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'banner.create',
                'uses' => 'BannerController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'banner.edit',
                'uses' => 'BannerController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'banner.edit',
                'uses' => 'BannerController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'banner.delete',
                'uses' => 'BannerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'banner.delete.many',
                'uses' => 'BannerController@postDeleteMany',
                'permission' => 'banner.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'banner.change.status',
                'uses' => 'BannerController@postChangeStatus',
                'permission' => 'banner.edit',
            ]);
        });
    });
    
});