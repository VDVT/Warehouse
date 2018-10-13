<?php

Route::group(['namespace' => 'Botble\Literature\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'literature'], function () {

            Route::get('/', [
                'as' => 'literature.list',
                'uses' => 'LiteratureController@getList',
            ]);

            Route::get('/create', [
                'as' => 'literature.create',
                'uses' => 'LiteratureController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'literature.create',
                'uses' => 'LiteratureController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'literature.edit',
                'uses' => 'LiteratureController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'literature.edit',
                'uses' => 'LiteratureController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'literature.delete',
                'uses' => 'LiteratureController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'literature.delete.many',
                'uses' => 'LiteratureController@postDeleteMany',
                'permission' => 'literature.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'literature.change.status',
                'uses' => 'LiteratureController@postChangeStatus',
                'permission' => 'literature.edit',
            ]);
        });
    });
    
});