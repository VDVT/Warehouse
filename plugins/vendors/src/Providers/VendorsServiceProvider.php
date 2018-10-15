<?php

namespace Botble\Vendors\Providers;

use Botble\Vendors\Models\Vendors;
use Illuminate\Support\ServiceProvider;
use Botble\Vendors\Repositories\Caches\VendorsCacheDecorator;
use Botble\Vendors\Repositories\Eloquent\VendorsRepository;
use Botble\Vendors\Repositories\Interfaces\VendorsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class VendorsServiceProvider extends ServiceProvider
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
            $this->app->singleton(VendorsInterface::class, function () {
                return new VendorsCacheDecorator(new VendorsRepository(new Vendors()), new Cache($this->app['cache'], VendorsRepository::class));
            });
        } else {
            $this->app->singleton(VendorsInterface::class, function () {
                return new VendorsRepository(new Vendors());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'vendors');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/vendors.php', 'vendors');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'vendors');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/vendors')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/vendors')], 'lang');
            $this->publishes([__DIR__ . '/../../config/vendors.php' => config_path('vendors.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-services',
                'priority'    => 121,
                'parent_id'   => null,
                'name'        => trans('Customer Services'),
                'icon'        => 'fa fa-product-hunt',
                'permissions' => ['customers.list'],
            ])
            ->registerItem([
                'id' => 'cms-plugins-services-customer',
                'priority' => 2,
                'parent_id' => 'cms-plugins-services',
                'name' => trans('Customer Info Form'),
                'icon' => null,
                'url' => route('customers.list'),
                'permissions' => ['customers.list'],
            ])
            ->registerItem([
                'id' => 'cms-plugins-services-vendor',
                'priority' => 2,
                'parent_id' => 'cms-plugins-services',
                'name' => trans('Vendor Packet Form'),
                'icon' => null,
                'url' => route('vendors.list'),
                'permissions' => ['vendors.list'],
            ]);
        });

    }
}
