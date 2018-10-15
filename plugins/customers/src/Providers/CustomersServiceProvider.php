<?php

namespace Botble\Customers\Providers;

use Botble\Customers\Models\Customers;
use Illuminate\Support\ServiceProvider;
use Botble\Customers\Repositories\Caches\CustomersCacheDecorator;
use Botble\Customers\Repositories\Eloquent\CustomersRepository;
use Botble\Customers\Repositories\Interfaces\CustomersInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class CustomersServiceProvider extends ServiceProvider
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
            $this->app->singleton(CustomersInterface::class, function () {
                return new CustomersCacheDecorator(new CustomersRepository(new Customers()), new Cache($this->app['cache'], CustomersRepository::class));
            });
        } else {
            $this->app->singleton(CustomersInterface::class, function () {
                return new CustomersRepository(new Customers());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'customers');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/customers.php', 'customers');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'customers');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/customers')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/customers')], 'lang');
            $this->publishes([__DIR__ . '/../../config/customers.php' => config_path('customers.php')], 'config');
        }
    }
}
