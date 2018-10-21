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

Route::prefix('user')->namespace('Auth')->group(function () {

    //登录
    Route::get('/login', 'LoginController@login');
    //注冊
    Route::post('/register', 'LoginController@register');

    Route::group(['middleware' => 'auth:api'], function () {

        //获取用户信息
        Route::get('/getUserInfo', 'LoginController@getUserInfo');

    });
});


