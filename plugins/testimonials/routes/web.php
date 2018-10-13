<?php

Route::group(['namespace' => 'Botble\Testimonials\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'testimonials'], function () {

            Route::get('/', [
                'as' => 'testimonials.list',
                'uses' => 'TestimonialsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'testimonials.create',
                'uses' => 'TestimonialsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'testimonials.create',
                'uses' => 'TestimonialsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'testimonials.edit',
                'uses' => 'TestimonialsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'testimonials.edit',
                'uses' => 'TestimonialsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'testimonials.delete',
                'uses' => 'TestimonialsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'testimonials.delete.many',
                'uses' => 'TestimonialsController@postDeleteMany',
                'permission' => 'testimonials.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'testimonials.change.status',
                'uses' => 'TestimonialsController@postChangeStatus',
                'permission' => 'testimonials.edit',
            ]);
        });
    });
    
});