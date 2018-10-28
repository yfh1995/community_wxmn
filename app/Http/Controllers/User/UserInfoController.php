<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/28
 * Time: 13:18
 */

namespace App\Http\Controllers\User;


use App\Common\Codes;
use App\Common\Tool;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class UserInfoController extends Controller
{
    /**
     * 获取用户信息
     * @return \Illuminate\Http\JsonResponse
     */
    public function getUserInfo()
    {
        $user = Auth::user();
        return Tool::responseJson(Codes::SUCCESS, $user);
    }
}