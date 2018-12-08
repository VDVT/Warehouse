<?php

Route::group(['namespace' => 'Botble\Tabcategory\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'tabcategory'], function () {

            Route::get('/', [
                'as' => 'tabcategory.list',
                'uses' => 'TabcategoryController@getList',
            ]);

            Route::get('/create', [
                'as' => 'tabcategory.create',
                'uses' => 'TabcategoryController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'tabcategory.create',
                'uses' => 'TabcategoryController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'tabcategory.edit',
                'uses' => 'TabcategoryController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'tabcategory.edit',
                'uses' => 'TabcategoryController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'tabcategory.delete',
                'uses' => 'TabcategoryController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'tabcategory.delete.many',
                'uses' => 'TabcategoryController@postDeleteMany',
                'permission' => 'tabcategory.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'tabcategory.change.status',
                'uses' => 'TabcategoryController@postChangeStatus',
                'permission' => 'tabcategory.edit',
            ]);
        });
    });
    
});