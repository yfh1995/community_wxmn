<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::prefix('user')->group(function () {

    Route::namespace('User')->middleware('auth:api')->group(function () {

        //获取用户信息
        Route::get('/getUserInfo', 'UserInfoController@getUserInfo');
    });

    Route::namespace('Auth')->group(function () {

        //登录
        Route::post('/login', 'LoginController@login');
        //登录
        Route::get('/logout', 'LoginController@logout');
        //注冊
        Route::post('/register', 'LoginController@register');
    });
});


