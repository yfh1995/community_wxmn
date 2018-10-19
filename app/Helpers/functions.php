<?php

if (! function_exists('getCurrentAction')) {
    /**
     * 获取当前控制器与方法
     * @return array
     */
    function getCurrentAction()
    {
        $action = request()->route()->getActionName();
        list($class, $method) = explode('@', $action);

        return ['controller' => $class, 'method' => $method];
    }
}