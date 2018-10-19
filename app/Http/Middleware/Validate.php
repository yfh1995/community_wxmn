<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/19
 * Time: 18:13
 */

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Validate
{
    public function handle(Request $request, Closure $next)
    {
        $action = getCurrentAction();
        if (class_exists($action['controller'])) {
            $method = $action['method'] . 'Validate';
            $class = new \ReflectionClass($action['controller']);
            if ($class->hasMethod($method)) {
                $val = $class->getMethod($method)->invoke(null, $request);
                if ($val !== true) {
                    return $val;
                }
            }
        }

        return $next($request);
    }
}