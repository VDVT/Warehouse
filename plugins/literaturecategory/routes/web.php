<?php

Route::group(['namespace' => 'Botble\Literaturecategory\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'literaturecategory'], function () {

            Route::get('/', [
                'as' => 'literaturecategory.list',
                'uses' => 'LiteraturecategoryController@getList',
            ]);

            Route::get('/create', [
                'as' => 'literaturecategory.create',
                'uses' => 'LiteraturecategoryController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'literaturecategory.create',
                'uses' => 'LiteraturecategoryController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'literaturecategory.edit',
                'uses' => 'LiteraturecategoryController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'literaturecategory.edit',
                'uses' => 'LiteraturecategoryController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'literaturecategory.delete',
                'uses' => 'LiteraturecategoryController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'literaturecategory.delete.many',
                'uses' => 'LiteraturecategoryController@postDeleteMany',
                'permission' => 'literaturecategory.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'literaturecategory.change.status',
                'uses' => 'LiteraturecategoryController@postChangeStatus',
                'permission' => 'literaturecategory.edit',
            ]);
        });
    });
    
});