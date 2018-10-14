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
}