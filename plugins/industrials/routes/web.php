<?php

Route::group(['namespace' => 'Botble\Industrials\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'industrials'], function () {

            Route::get('/', [
                'as' => 'industrials.list',
                'uses' => 'IndustrialsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'industrials.create',
                'uses' => 'IndustrialsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'industrials.create',
                'uses' => 'IndustrialsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'industrials.edit',
                'uses' => 'IndustrialsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'industrials.edit',
                'uses' => 'IndustrialsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'industrials.delete',
                'uses' => 'IndustrialsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'industrials.delete.many',
                'uses' => 'IndustrialsController@postDeleteMany',
                'permission' => 'industrials.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'industrials.change.status',
                'uses' => 'IndustrialsController@postChangeStatus',
                'permission' => 'industrials.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'industrials.create.slug',
                'uses' => 'IndustrialsController@postCreateSlug',
                'permission' => 'industrials.create',
            ]);
        });
    });
    
});