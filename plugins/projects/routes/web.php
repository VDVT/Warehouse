<?php

Route::group(['namespace' => 'Botble\Projects\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'projects-api'], function () {
            Route::get('/', [
                'as' => 'api.projects.list',
                'uses' => 'api\ProjectsController@getList',
                'permission' => 'projects.list',
            ]);
        });
        Route::group(['prefix' => 'projects'], function () {

            Route::get('/', [
                'as' => 'projects.list',
                'uses' => 'ProjectsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'projects.create',
                'uses' => 'ProjectsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'projects.create',
                'uses' => 'ProjectsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'projects.edit',
                'uses' => 'ProjectsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'projects.edit',
                'uses' => 'ProjectsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'projects.delete',
                'uses' => 'ProjectsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'projects.delete.many',
                'uses' => 'ProjectsController@postDeleteMany',
                'permission' => 'projects.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'projects.change.status',
                'uses' => 'ProjectsController@postChangeStatus',
                'permission' => 'projects.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'projects.create.slug',
                'uses' => 'ProjectsController@postCreateSlug',
                'permission' => 'projects.create',
            ]);
        });
    });
    
});