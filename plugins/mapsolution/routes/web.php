<?php

Route::group(['namespace' => 'Botble\Mapsolution\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'mapsolution'], function () {

            Route::get('/', [
                'as' => 'mapsolution.list',
                'uses' => 'MapsolutionController@getList',
            ]);

            Route::get('/create', [
                'as' => 'mapsolution.create',
                'uses' => 'MapsolutionController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'mapsolution.create',
                'uses' => 'MapsolutionController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'mapsolution.edit',
                'uses' => 'MapsolutionController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'mapsolution.edit',
                'uses' => 'MapsolutionController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'mapsolution.delete',
                'uses' => 'MapsolutionController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'mapsolution.delete.many',
                'uses' => 'MapsolutionController@postDeleteMany',
                'permission' => 'mapsolution.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'mapsolution.change.status',
                'uses' => 'MapsolutionController@postChangeStatus',
                'permission' => 'mapsolution.edit',
            ]);
        });
    });
    
});