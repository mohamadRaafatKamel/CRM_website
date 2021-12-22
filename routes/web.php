<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/', 'ar');

Route::group(['prefix' => '{language}' ,'where' => ['language' =>  '(ar|en)' ] ], function () {
    Route::group(['namespace' => 'App\Http\Controllers\Front'], function () {

        Route::get('/', 'HomeController@index')->name('home');
        Route::post('callme', 'HomeController@callme')->name('home.callme');

        Route::group(['middleware'=>'auth'], function () {

            Route::get('/userinfo', 'HomeController@userinfo')->name('home.user.info');
            Route::post('userinfoupdate','HomeController@userInfoUpdate')->name('home.myuser.info.update');

            Route::get('/request', 'HomeController@userAllRequest')->name('user.all.request');

        });

    });

    Auth::routes();

//    Route::group(['namespace' => 'App\Http\Controllers\Front', 'middleware'=>'auth'], function () {
//
//        Route::get('/userinfo', 'HomeController@userinfo')->name('home.user.info');
//        Route::post('userinfoupdate','HomeController@userInfoUpdate')->name('home.myuser.info.update');
//    });
});

//Route::get('/', function () {
//    return view('welcome');
//})->name('home');


//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
