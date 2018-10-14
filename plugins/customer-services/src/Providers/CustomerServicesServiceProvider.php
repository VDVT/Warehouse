<?php

namespace Botble\CustomerServices\Providers;

use Botble\CustomerServices\Models\CustomerServices;
use Illuminate\Support\ServiceProvider;
use Botble\CustomerServices\Repositories\Caches\CustomerServicesCacheDecorator;
use Botble\CustomerServices\Repositories\Eloquent\CustomerServicesRepository;
use Botble\CustomerServices\Repositories\Interfaces\CustomerServicesInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class CustomerServicesServiceProvider extends ServiceProvider
{
    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author Sang Nguyen
     */
    public function register()
    {
        if (setting('enable_cache', false)) {
            $this->app->singleton(CustomerServicesInterface::class, function () {
                return new CustomerServicesCacheDecorator(new CustomerServicesRepository(new CustomerServices()), new Cache($this->app['cache'], CustomerServicesRepository::class));
            });
        } else {
            $this->app->singleton(CustomerServicesInterface::class, function () {
                return new CustomerServicesRepository(new CustomerServices());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'customer-services');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/customer-services.php', 'customer-services');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'customer-services');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/customer-services')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/customer-services')], 'lang');
            $this->publishes([__DIR__ . '/../../config/customer-services.php' => config_path('customer-services.php')], 'config');
        }
    }
}
