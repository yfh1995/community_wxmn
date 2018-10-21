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
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $params = $request->only(['user', 'password']);

        if (Auth::attempt([]))

        return Tool::responseJson(Codes::SUCCESS);
    }

    public function register(Request $request)
    {
        $input = $request->only(['name','nickname','email','phone','password','avatar']);
        $input['password'] = bcrypt($input['password']);
        $input['avatar'] = isset($input['avatar']) ? $input['avatar'] : env('USER_DEFAULT_AVATAR');

        $user = User::create($input);

        return Tool::responseJson(Codes::SUCCESS, [
            'token'     =>  $user->createToken('MyApp')->accessToken,
            'userid'    =>  $user->id,
        ]);
    }

    public function getUserInfo()
    {
        $user = Auth::user();
        return Tool::responseJson(Codes::SUCCESS, $user);
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