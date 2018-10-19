<?php

if (! function_exists('getCurrentAction')) {
    /**
     * 获取当前控制器与方法
     * @return array
     */
    function getCurrentAction()
    {
        $action = \Illuminate\Support\Facades\Route::current()->getActionName();
        list($class, $method) = explode('@', $action);
        $class = substr(strrchr($class,'\\'),1);

        return ['controller' => $class, 'method' => $method];
    }
}