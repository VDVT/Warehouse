<?php

Route::group(['namespace' => 'Botble\Career\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'career'], function () {

            Route::get('/', [
                'as' => 'career.list',
                'uses' => 'CareerController@getList',
            ]);

            Route::get('/create', [
                'as' => 'career.create',
                'uses' => 'CareerController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'career.create',
                'uses' => 'CareerController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'career.edit',
                'uses' => 'CareerController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'career.edit',
                'uses' => 'CareerController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'career.delete',
                'uses' => 'CareerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'career.delete.many',
                'uses' => 'CareerController@postDeleteMany',
                'permission' => 'career.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'career.change.status',
                'uses' => 'CareerController@postChangeStatus',
                'permission' => 'career.edit',
            ]);
        });

        Route::group(['prefix' => 'application-form'], function () {

            Route::get('/', [
                'as' => 'applicationform.list',
                'uses' => 'ApplicationController@getList',
                'permission' => 'application.list',
            ]);

            // Route::get('/create', [
            //     'as' => 'applicationform.create',
            //     'uses' => 'ApplicationController@getCreate',
            // ]);

            // Route::post('/create', [
            //     'as' => 'applicationform.create',
            //     'uses' => 'ApplicationController@postCreate',
            // ]);

            Route::get('/edit/{id}', [
                'as' => 'applicationform.edit',
                'uses' => 'ApplicationController@getEdit',
                'permission' => 'application.edit',
            ]);

            // Route::post('/edit/{id}', [
            //     'as' => 'applicationform.edit',
            //     'uses' => 'ApplicationController@postEdit',
            // ]);

            Route::get('/delete/{id}', [
                'as' => 'applicationform.delete',
                'uses' => 'ApplicationController@getDelete',
                'permission' => 'application.delete',
            ]);

            Route::post('/delete-many', [
                'as' => 'applicationform.delete.many',
                'uses' => 'ApplicationController@postDeleteMany',
                'permission' => 'application.delete',
            ]);

        });
    });
    
});