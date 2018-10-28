<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/28
 * Time: 13:06
 */

namespace App\Facades;


use Illuminate\Support\Facades\Facade;

class CAuth extends Facade
{
    protected static function getFacadeAccessor() {
        return config('app.name_en') . '\CAuth';
    }
}