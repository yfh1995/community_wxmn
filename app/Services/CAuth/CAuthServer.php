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
use App\Models\Asset;
use App\Services\BaseServer;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

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
        $loginType = "nickname";
        if (Tool::isEmail($params['user'])) {
            $loginType = "email";
        } elseif (Tool::isPhone($params['user'])) {
            $loginType = "phone";
        }

        //判断账号是否存在
        if (!(new User())->isExistByConditions([$loginType => $params['user']])) {
            return Tool::responseFromServer(Codes::ACCOUNT_USER_NOT_EXIST);
        }

        //登录
        if(Auth::attempt([$loginType => $params['user'], 'password' => $params['password']])){
            $user = Auth::user();
            $token =  $user->createToken(env('APP_NAME'))->accessToken;
            return Tool::responseFromServer(Codes::SUCCESS, [
                'token' =>  $token
            ]);
        }
        else{
            return Tool::responseFromServer(Codes::ACCOUNT_LOGIN_ERROR);
        }
    }

    //登出统一逻辑
    public function logout()
    {
        Auth::logout();

        return Tool::responseFromServer(Codes::SUCCESS);
    }

    //注册统一逻辑
    public function register($params)
    {
        $params['password'] = bcrypt($params['password']);
        $params['avatar'] = isset($params['avatar']) ? $params['avatar'] : env('USER_DEFAULT_AVATAR');

        //开启事务
        DB::beginTransaction();

        //注册users表数据
        $user = User::create($params);
        if (!$user) {
            DB::rollback();
        }

        //注册用户资产表数据
        $asset = Asset::init($user->id);
        if (!$asset) {
            DB::rollback();
        }

        DB::commit();

        return Tool::responseFromServer(Codes::SUCCESS, [
            'token' =>  $user->createToken(env('APP_NAME'))->accessToken
        ]);
    }
}