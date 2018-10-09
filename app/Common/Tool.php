<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/9
 * Time: 18:11
 */

namespace App\Common;


class Tool
{

    /**
     * response统一json结构返回
     * @param int $code
     * @param array $data
     * @param string $msg
     * @return \Illuminate\Http\JsonResponse
     */
    public static function responseJson($code = Codes::FAIL, $data = [], $msg = "")
    {
        if (!is_array($data)) {
            $data = [$data];
        }

        if (!in_array($code, array_keys(Codes::$codeMsg))) {
            $code = Codes::FAIL;
        }

        return response()->json([
            'code'  =>  $code,
            'msg'   =>  $msg ? : Codes::$codeMsg[$code],
            'data'  =>  $data
        ]);
    }
}