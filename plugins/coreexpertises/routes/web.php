<?php

Route::group(['namespace' => 'Botble\Coreexpertises\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'coreexpertises'], function () {

            Route::get('/', [
                'as' => 'coreexpertises.list',
                'uses' => 'CoreexpertisesController@getList',
            ]);

            Route::get('/create', [
                'as' => 'coreexpertises.create',
                'uses' => 'CoreexpertisesController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'coreexpertises.create',
                'uses' => 'CoreexpertisesController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'coreexpertises.edit',
                'uses' => 'CoreexpertisesController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'coreexpertises.edit',
                'uses' => 'CoreexpertisesController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'coreexpertises.delete',
                'uses' => 'CoreexpertisesController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'coreexpertises.delete.many',
                'uses' => 'CoreexpertisesController@postDeleteMany',
                'permission' => 'coreexpertises.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'coreexpertises.change.status',
                'uses' => 'CoreexpertisesController@postChangeStatus',
                'permission' => 'coreexpertises.edit',
            ]);

            Route::post('/create-slug', [
                'as' => 'coreexpertises.create.slug',
                'uses' => 'CoreexpertisesController@postCreateSlug',
                'permission' => 'coreexpertises.create',
            ]);
        });
    });
    
});