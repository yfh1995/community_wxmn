<?php

namespace App\Providers;

use App\Services\CAuth\CAuthServer;
use Illuminate\Support\ServiceProvider;

class CAuthProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton(config('app.name_en') . '\CAuth',function() {
            return new CAuthServer();
        });
    }
}
