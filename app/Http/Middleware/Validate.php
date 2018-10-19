<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/19
 * Time: 18:13
 */

namespace App\Http\Middleware;

use Closure;

class Validate
{
    public function handle($request, Closure $next)
    {
        $action = getCurrentAction();

        return $next($request);
    }
}