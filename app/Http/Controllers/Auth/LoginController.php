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
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function login(Request $request)
    {


        return Tool::responseJson(Codes::SUCCESS);
    }

    private function validate($request)
    {
        $validator = Validator::make($request->all(), [
            'user'      => 'required|unique:posts|max:255',
            'password'  => 'required',
        ]);
    }
}