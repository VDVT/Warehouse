<?php

Route::group(['namespace' => 'Botble\Faq\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'faq'], function () {

            Route::get('/', [
                'as' => 'faq.list',
                'uses' => 'FaqController@getList',
            ]);

            Route::get('/create', [
                'as' => 'faq.create',
                'uses' => 'FaqController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'faq.create',
                'uses' => 'FaqController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'faq.edit',
                'uses' => 'FaqController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'faq.edit',
                'uses' => 'FaqController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'faq.delete',
                'uses' => 'FaqController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'faq.delete.many',
                'uses' => 'FaqController@postDeleteMany',
                'permission' => 'faq.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'faq.change.status',
                'uses' => 'FaqController@postChangeStatus',
                'permission' => 'faq.edit',
            ]);
        });
    });
    
});