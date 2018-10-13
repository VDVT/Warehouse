<?php

Route::group(['namespace' => 'Botble\Projectcompletion\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'projectcompletion'], function () {

            Route::get('/', [
                'as' => 'projectcompletion.list',
                'uses' => 'ProjectcompletionController@getList',
            ]);

            Route::get('/create', [
                'as' => 'projectcompletion.create',
                'uses' => 'ProjectcompletionController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'projectcompletion.create',
                'uses' => 'ProjectcompletionController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'projectcompletion.edit',
                'uses' => 'ProjectcompletionController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'projectcompletion.edit',
                'uses' => 'ProjectcompletionController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'projectcompletion.delete',
                'uses' => 'ProjectcompletionController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'projectcompletion.delete.many',
                'uses' => 'ProjectcompletionController@postDeleteMany',
                'permission' => 'projectcompletion.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'projectcompletion.change.status',
                'uses' => 'ProjectcompletionController@postChangeStatus',
                'permission' => 'projectcompletion.edit',
            ]);
        });
    });
    
});