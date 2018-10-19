<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/9
 * Time: 17:33
 */

namespace App\Common;

class Codes
{
    const
        FAIL                        = -1,       //失败
        SUCCESS                     = 0,        //成功

        //公共错误码
        COMMON_PARAMS_ERROR         = 100000,   //参数异常

        ABC                         = 999999;

    public static $codeMsg = [
        self::FAIL                  =>  "失败",
        self::SUCCESS               =>  "成功",

        //公共错误码
        self::COMMON_PARAMS_ERROR   =>  "参数异常",

        self::ABC                   =>  "呵呵"
    ];
}