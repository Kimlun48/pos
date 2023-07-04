<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class TanggalIndonesiaProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        require_once app_path() . '/Helpers/TanggalIndonesia.php';
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
