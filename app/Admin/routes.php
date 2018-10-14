<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    //==============================用户管理start===========================================

    $router->resource('/user/user-base-info', 'User\\UserBaseController');

    //==============================用户管理end=============================================
});
