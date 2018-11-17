<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/11/17
 * Time: 17:04
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    protected $guarded = [];

    /**
     * 初始化资产数据
     * @param $uid
     * @return mixed
     */
    public static function init($uid)
    {
        return self::create([
            'uid'           =>  $uid,
            'income'        =>  0.0,
            'expenditure'   =>  0.0,
            'available'     =>  0.0,
            'frozen'        =>  0.0,
            'extraction'    =>  0.0
        ]);
    }
}