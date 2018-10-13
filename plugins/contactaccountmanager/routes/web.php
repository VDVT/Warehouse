<?php

Route::group(['namespace' => 'Botble\Contactaccountmanager\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('cms.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'contactaccountmanager'], function () {

            Route::get('/', [
                'as' => 'contactaccountmanager.list',
                'uses' => 'ContactaccountmanagerController@getList',
            ]);

            // Route::get('/create', [
            //     'as' => 'contactaccountmanager.create',
            //     'uses' => 'ContactaccountmanagerController@getCreate',
            // ]);

            // Route::post('/create', [
            //     'as' => 'contactaccountmanager.create',
            //     'uses' => 'ContactaccountmanagerController@postCreate',
            // ]);

            Route::get('/edit/{id}', [
                'as' => 'contactaccountmanager.edit',
                'uses' => 'ContactaccountmanagerController@getEdit',
            ]);

            // Route::post('/edit/{id}', [
            //     'as' => 'contactaccountmanager.edit',
            //     'uses' => 'ContactaccountmanagerController@postEdit',
            // ]);

            Route::get('/delete/{id}', [
                'as' => 'contactaccountmanager.delete',
                'uses' => 'ContactaccountmanagerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'contactaccountmanager.delete.many',
                'uses' => 'ContactaccountmanagerController@postDeleteMany',
                'permission' => 'contactaccountmanager.delete',
            ]);

            // Route::post('/change-status', [
            //     'as' => 'contactaccountmanager.change.status',
            //     'uses' => 'ContactaccountmanagerController@postChangeStatus',
            //     'permission' => 'contactaccountmanager.edit',
            // ]);
        });
    });
    
});