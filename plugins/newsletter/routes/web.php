<?php

Route::group(['namespace' => 'Botble\Newsletter\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'newsletter'], function () {

            Route::get('/', [
                'as' => 'newsletter.list',
                'uses' => 'NewsletterController@getList',
            ]);

            Route::get('/create', [
                'as' => 'newsletter.create',
                'uses' => 'NewsletterController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'newsletter.create',
                'uses' => 'NewsletterController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'newsletter.edit',
                'uses' => 'NewsletterController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'newsletter.edit',
                'uses' => 'NewsletterController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'newsletter.delete',
                'uses' => 'NewsletterController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'newsletter.delete.many',
                'uses' => 'NewsletterController@postDeleteMany',
                'permission' => 'newsletter.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'newsletter.change.status',
                'uses' => 'NewsletterController@postChangeStatus',
                'permission' => 'newsletter.edit',
            ]);
        });
    });
    
});