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

Route::group(['prefix' => 'v1'], function () {
    Route::group(['namespace' => '\App\Http\Controllers\Api'], function () {


        // send Social Media link
        Route::get('/socialLinks', 'HomeController@SocialLinks');
        // send Slider Image link
        Route::get('/sliderImg', 'HomeController@SliderImg');

        // show Specialty
        Route::get('/specialty', 'SpecialtyController@index');
        Route::get('/specialty/{specialty}', 'SpecialtyController@show');

        // show services
        Route::get('/services', 'ServicesController@index');
        Route::get('/services/{service}', 'ServicesController@show');

        // show City
        Route::get('/city', 'CityController@index');
        Route::get('/city/{city}', 'CityController@show');

        // show Governorate
        Route::get('/governorate', 'GovernorateController@index');
        Route::get('/governorate/{governorate}', 'GovernorateController@show');

        // show Country
        Route::get('/country', 'CountryController@index');
        Route::get('/country/{country}', 'CountryController@show');

        // registration
        Route::post('/registration', 'AuthController@registration');
        // login
        Route::post('/login', 'AuthController@login');


        Route::group(['middleware'=>'checkPassword'], function () {
            // request Emergency
            Route::post('/callme/emergency', 'HomeController@callmeEmergency');
            // request Home Visit
            Route::post('/callme/homevisit', 'HomeController@callmeHomeVisit');
            // request Book Integrated Medical Services
            Route::post('/callme/bookservices', 'HomeController@BookServices');
        });

        Route::group(['middleware'=>'auth:api'], function () {

            // Route::apiResource('/services', ServicesController::class);
            // logout
            Route::post('/logout', 'AuthController@logout');

            // show user info
            Route::get('/userinfo', 'HomeController@userinfo');
            Route::get('/doctortimework/{id}', 'HomeController@doctorTimeWork');

            // show Requests
            Route::get('/requests', 'RequestsController@userRequest');
            Route::get('/requests/{requests}', 'RequestsController@show');
            // change state
            Route::get('/cancel_requests/{requests}', 'RequestsController@cancelState');

            // show Doctor Requests
            Route::get('/doctor/order', 'OrderController@doctorRequest');
            Route::get('/doctor/order/{order}', 'OrderController@show');
            // change state
            Route::get('/doctor/cancel_order/{order}', 'OrderController@cancelState');

//            Route::get('/userinfo', 'HomeController@userinfo')->name('home.user.info');
//            Route::post('userinfoupdate','HomeController@userInfoUpdate')->name('home.myuser.info.update');

        });
    });
});

