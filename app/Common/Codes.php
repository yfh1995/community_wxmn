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
        FAIL                                =   -1,         //失败
        SUCCESS                             =   0,          //成功

        //公共错误码
        COMMON_PARAMS_ERROR                 =   100000,     //参数异常

        //账号错误码
        ACCOUNT_LOGIN_ERROR                 =   200000,     //登录失败
        ACCOUNT_USER_NOT_EXIST              =   200001,     //账号不存在

        ABC                                 =   999999;

    public static $codeMsg = [
        self::FAIL                          =>  "失败",
        self::SUCCESS                       =>  "成功",

        //公共错误码
        self::COMMON_PARAMS_ERROR           =>  "参数异常",

        //账号错误码
        self::ACCOUNT_LOGIN_ERROR           =>  "登录失败",
        self::ACCOUNT_USER_NOT_EXIST        =>  "账号不存在",

        self::ABC                           =>  "呵呵"
    ];
}