<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/9
 * Time: 18:11
 */

namespace App\Common;


use Encore\Admin\Grid;

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

    /**
     * 自定义服务统一相应格式
     * @param int $code
     * @param array $data
     * @return array
     */
    public static function responseFromServer($code = Codes::FAIL, $data = [])
    {
        if (!is_array($data)) {
            $data = [$data];
        }

        if (!in_array($code, array_keys(Codes::$codeMsg))) {
            $code = Codes::FAIL;
        }

        return [
            'code'  =>  $code,
            'data'  =>  $data
        ];
    }

    /**
     * 列表控件添加时间
     * @param Grid $grid
     * @param bool $showCreate
     * @param bool $showUpdate
     */
    public static function listAddData(Grid &$grid, $showCreate = true, $showUpdate = true)
    {
        if ($showCreate) {
            $grid->created_at(trans('common.created_at'));
        }
        if ($showUpdate) {
            $grid->updated_at(trans('common.updated_at'));
        }
    }

    /**
     * 检验字符串是否为邮箱
     * @param $str
     * @return bool
     */
    public static function isEmail($str)
    {
        $preg_email='/^[a-zA-Z0-9]+([-_.][a-zA-Z0-9]+)*@([a-zA-Z0-9]+[-.])+([a-z]{2,5})$/ims';
        return preg_match($preg_email,$str) ? true : false;
    }

    /**
     * 检验字符串是否为邮箱
     * @param $str
     * @return bool
     */
    public static function isPhone($str)
    {
        $preg_phone='/^1[34578]\d{9}$/ims';
        return preg_match($preg_phone,$str) ? true : false;
    }
}