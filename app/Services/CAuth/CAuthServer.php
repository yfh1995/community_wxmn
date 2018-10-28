<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/28
 * Time: 11:10
 */

namespace App\Services\CAuth;


use App\Common\Codes;
use App\Common\Tool;
use App\Services\BaseServer;
use App\User;

class CAuthServer extends BaseServer implements CAuthInterface
{
    const
        WX_MINI         =   0,  //微信

        ABC             =   -1; //占位

    private static $server = null;

    /**
     * 实例化对应服务
     * @param $type
     */
    public function init($type)
    {
        switch ($type) {
            case self::WX_MINI:
                self::$server = new WxminiServer();
                break;
            default:
                break;
        }
    }

    //登陆统一逻辑
    public function login($params)
    {

    }

    //登出统一逻辑
    public function logout()
    {

    }

    //注册统一逻辑
    public function register($params)
    {
        $params['password'] = bcrypt($params['password']);
        $params['avatar'] = isset($params['avatar']) ? $params['avatar'] : env('USER_DEFAULT_AVATAR');

        //注册users表数据
        $user = User::create($params);

        //注册用户资产表数据

        return Tool::responseFromServer(Codes::SUCCESS, [
            'token' =>  $user->createToken('MyApp')->accessToken
        ]);
    }
}