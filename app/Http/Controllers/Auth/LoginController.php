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
}