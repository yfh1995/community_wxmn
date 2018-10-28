<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/9
 * Time: 17:23
 */

namespace App\Http\Controllers\Auth;

use App\Common\Codes;
use App\Common\Tool;
use App\Facades\CAuth;
use App\Http\Controllers\Controller;
use App\Services\CAuth\CAuthServer;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    /**
     * LoginController constructor.
     */
    public function __construct()
    {
        parent::__construct();

        //初始化服务
        CAuth::init(CAuthServer::WX_MINI);
    }

    public function login(Request $request)
    {
        $params = $request->only(['user', 'password']);

        $res = CAuth::login($params);

        return Tool::responseJson($res['code'], $res['token'] ? : []);
    }

    public function logout()
    {
        $res = CAuth::logout();

        return Tool::responseJson($res['code']);
    }

    public function register(Request $request)
    {
        $params = $request->only(['name','nickname','email','phone','password','avatar']);

        $res = CAuth::register($params);

        return Tool::responseJson($res['code'], $res['token'] ? : []);
    }


    public static function loginValidate($request)
    {
        /** @var \Illuminate\Validation\Validator $validator */
        $validator = Validator::make($request->all(), [
            'user'      => 'required|max:255',
            'password'  => 'required',
        ]);

        if ($validator->fails()) {
            return Tool::responseJson(Codes::COMMON_PARAMS_ERROR, $validator->errors()->all());
        }

        return true;
    }

    public static function registerValidate($request)
    {
        /** @var \Illuminate\Validation\Validator $validator */
        $validator = Validator::make($request->all(), [
            'name'      => 'required|max:255',
            'nickname'  => 'required|max:255',
            'email'     => 'required|email',
            'phone'     => 'required|numeric',
            'password'  => 'required|min:6',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return Tool::responseJson(Codes::COMMON_PARAMS_ERROR, $validator->errors()->all());
        }

        return true;
    }
}