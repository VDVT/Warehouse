<?php

Route::group(['namespace' => 'Botble\Donation\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'donation'], function () {

            Route::get('/', [
                'as' => 'donation.list',
                'uses' => 'DonationController@getList',
            ]);

            Route::get('/create', [
                'as' => 'donation.create',
                'uses' => 'DonationController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'donation.create',
                'uses' => 'DonationController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'donation.edit',
                'uses' => 'DonationController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'donation.edit',
                'uses' => 'DonationController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'donation.delete',
                'uses' => 'DonationController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'donation.delete.many',
                'uses' => 'DonationController@postDeleteMany',
                'permission' => 'donation.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'donation.change.status',
                'uses' => 'DonationController@postChangeStatus',
                'permission' => 'donation.edit',
            ]);
        });
    });
    
});