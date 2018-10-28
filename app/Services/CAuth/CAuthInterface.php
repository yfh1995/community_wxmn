<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/28
 * Time: 11:28
 */

namespace App\Services\CAuth;


interface CAuthInterface
{
    public function login($params);

    public function logout();

    public function register($params);
}