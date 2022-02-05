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
define('PAGINATION_COUNT',1000);

Route::group(['namespace'=>'App\Http\Controllers\Admin', 'middleware'=>'auth:admin'],function (){

    Route::get('/','DashboardController@index')->name('admin.dashboard');
    Route::get('logout','DashboardController@logout')->name('admin.logout');

    ##################### Specialty ############################
    Route::group(['prefix'=>'specialty'],function (){
        Route::get('/','SpecialtyController@index')->name('admin.specialty');
        Route::get('create','SpecialtyController@create')->name('admin.specialty.create');
        Route::post('store','SpecialtyController@store')->name('admin.specialty.store');

        Route::get('edit/{id}','SpecialtyController@edit')->name('admin.specialty.edit');
        Route::post('update/{id}','SpecialtyController@update')->name('admin.specialty.update');

        Route::get('delete/{id}','SpecialtyController@destroy') -> name('admin.specialty.delete');
    });
    ##################### End Specialty ########################

    ##################### Service ############################
    Route::group(['prefix'=>'service'],function (){
        Route::get('/','ServiceController@index')->name('admin.service');
        Route::get('create','ServiceController@create')->name('admin.service.create');
        Route::post('store','ServiceController@store')->name('admin.service.store');

        Route::get('edit/{id}','ServiceController@edit')->name('admin.service.edit');
        Route::post('update/{id}','ServiceController@update')->name('admin.service.update');

        Route::get('delete/{id}','ServiceController@destroy') -> name('admin.service.delete');
    });
    ##################### End Service ########################

    ##################### Admin ##############################
    Route::group(['prefix'=>'admin'],function (){
        Route::get('/','AdminController@index')->name('admin.admin');
        Route::get('create','AdminController@create')->name('admin.admin.create');
        Route::post('store','AdminController@store')->name('admin.admin.store');

        Route::get('edit/{id}','AdminController@edit')->name('admin.admin.edit');
        Route::post('update/{id}','AdminController@update')->name('admin.admin.update');

        Route::get('delete/{id}','AdminController@destroy') -> name('admin.admin.delete');
    });
    ##################### End Admin ##########################

    ##################### Role ###############################
    Route::group(['prefix'=>'role'],function (){
        Route::get('/','RoleController@index')->name('admin.role');
        Route::get('create','RoleController@create')->name('admin.role.create');
        Route::post('store','RoleController@store')->name('admin.role.store');

        Route::get('edit/{id}','RoleController@edit')->name('admin.role.edit');
        Route::post('update/{id}','RoleController@update')->name('admin.role.update');

        Route::get('delete/{id}','RoleController@destroy') -> name('admin.role.delete');
    });
    ##################### End Role ###########################

    ##################### Setting ###############################
    Route::group(['prefix'=>'setting'],function (){

        Route::get('/','SettingController@create')->name('admin.setting');
        Route::post('update','SettingController@update')->name('admin.setting.update');

    });
    ##################### End Setting ###########################

    ##################### Survay ###############################
    Route::group(['prefix'=>'survey'],function (){

        Route::get('/','WebSurvayController@index')->name('admin.survay');
        Route::get('/statistics','WebSurvayController@statistics')->name('admin.statistics');

    });
    ##################### End Survay ###########################

    ##################### Users ##############################
    Route::group(['prefix'=>'user'],function (){
        Route::get('/','UserController@index')->name('admin.user');
        Route::get('/patent','UserController@indexPatent')->name('admin.user.patent');
        Route::get('/doctor','UserController@indexDoctor')->name('admin.user.doctor');
        Route::get('/partner','UserController@indexPartner')->name('admin.user.partner');
        Route::get('/nurse','UserController@indexNurse')->name('admin.user.nurse');
        
       Route::get('create','UserController@create')->name('admin.user.create');
       Route::post('store','UserController@store')->name('admin.user.store');

        Route::get('view/{id}','UserController@view')->name('admin.user.view');
        Route::post('update/{id}','UserController@update')->name('admin.user.update');

        Route::get('type/{id}/{type}','UserController@type')->name('admin.user.type');

//        Route::get('delete/{id}','AdminController@destroy') -> name('admin.user.delete');
    });
    ##################### End Users ##########################

    ##################### Request ##############################
    Route::group(['prefix'=>'request'],function (){
        // cc
        Route::get('/','RequestController@indexCC')->name('admin.request.cc');
        Route::get('/cc/create','RequestController@createCC')->name('admin.request.create.cc');
        Route::get('/cc/status/{id}/{status}','RequestController@statusCC')->name('admin.request.status.cc');
        Route::post('store','RequestController@store')->name('admin.request.store');
        Route::post('update/{id}','RequestController@update')->name('admin.request.update');
        
        // Emergency
        Route::get('/emergency','RequestController@indexEm')->name('admin.request.emergency');

        // in
        Route::get('/in','RequestController@indexIN')->name('admin.request.in');
        Route::get('/in/create/{id}','RequestController@createIN')->name('admin.request.create.in');
        Route::post('/in/update/{id}','RequestController@updateIN')->name('admin.request.update.in');
        // Route::get('/in/status/{id}/{status}','RequestController@statusIN')->name('admin.request.status.in');

        // out
        Route::get('/out','RequestController@indexOut')->name('admin.request.out');
        Route::get('/out/create/{id}','RequestController@createOut')->name('admin.request.create.out');
        Route::post('/out/update/{id}','RequestController@updateOut')->name('admin.request.update.out');
        // Route::get('/out/status/{id}/{status}','RequestController@statusIN')->name('admin.request.status.in');
        
//        Route::get('view/{id}','RequestController@view')->name('admin.user.view');
//        Route::post('update/{id}','RequestController@update')->name('admin.user.update');

        // ajax
        Route::get('/getUserInfo/{id}', 'RequestController@getUserInfo');
//
        Route::get('call/{id}','RequestController@callhim')->name('admin.user.call.him');

//        Route::get('delete/{id}','RequestController@destroy') -> name('admin.user.delete');
    });
    ##################### End Request ##########################

     ##################### Order ##############################
    //  Route::group(['prefix'=>'order'],function (){
    //     Route::get('/','OrderController@index')->name('admin.order');

        

        
    //     Route::get('/getDocSpecialty/{id}', 'OrderController@getDocSpecialty');

//        Route::get('edit/{id}','OrderController@edit')->name('admin.order.edit');
//        Route::post('update/{id}','OrderController@update')->name('admin.order.update');
//
//        Route::get('delete/{id}','OrderController@destroy') -> name('admin.order.delete');
    // });
    ##################### End Order ##########################

    ##################### Notification ##############################
    // Route::get('/getcountreqest/{type}', 'HomeController@getCountReqest');

    ##################### End Notification ##########################

});

##################### Notification ##############################
Route::get('/getcountreqest/{type}', 'HomeController@getCountReqest');

##################### End Notification ##########################

Route::group(['namespace'=>'App\Http\Controllers\Admin', 'middleware'=>'guest:admin'],function (){

    Route::get('login', 'LoginController@getLogin')->name('admin.getlogin');
    Route::post('login', 'LoginController@login')->name('admin.login');
});

//Auth::routes();

