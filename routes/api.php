<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


//Route::middleware('auth:api')->prefix('v1')->group(function (){
//    Route::get('/user',function(Request $request){
//        return $request->user();
//    });
//});

Route::group(['prefix' => 'v1'], function () {
    Route::group(['namespace' => '\App\Http\Controllers\Api'], function () {

//        Route::get('/', 'HomeController@index')->name('home');
//        Route::post('callme', 'HomeController@callme')->name('home.callme');

//        Route::get('/user',function(Request $request){
//            return 'gggggg';
//        });

//        Route::get('/services/{service}', 'ServicesController@show');


        Route::group(['middleware'=>'auth:api'], function () {

            Route::apiResource('/services', ServicesController::class);

//            Route::get('/userinfo', 'HomeController@userinfo')->name('home.user.info');
//            Route::post('userinfoupdate','HomeController@userInfoUpdate')->name('home.myuser.info.update');
//
//            Route::get('/request', 'HomeController@userAllRequest')->name('user.all.request');
//            Route::get('/request/{msg}/{id}', 'HomeController@userViewRequest')->name('user.view.request');
//
//            Route::get('reqstate/{id}/{state}', 'HomeController@RequestState')->name('user.request.state');
//
//            Route::get('/doctorrequest', 'HomeController@DoctorRequest')->name('user.doc.request');
//            Route::get('docstate/{id}/{state}', 'HomeController@DocOrderState')->name('doc.order.state');

        });
    });
});

