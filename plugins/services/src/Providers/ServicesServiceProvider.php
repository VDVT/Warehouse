<?php

namespace Botble\Services\Providers;

use Botble\Services\Models\Services;
use Illuminate\Support\ServiceProvider;
use Botble\Services\Repositories\Caches\ServicesCacheDecorator;
use Botble\Services\Repositories\Eloquent\ServicesRepository;
use Botble\Services\Repositories\Interfaces\ServicesInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class ServicesServiceProvider extends ServiceProvider
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
            $this->app->singleton(ServicesInterface::class, function () {
                return new ServicesCacheDecorator(new ServicesRepository(new Services()), new Cache($this->app['cache'], ServicesRepository::class));
            });
        } else {
            $this->app->singleton(ServicesInterface::class, function () {
                return new ServicesRepository(new Services());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'services');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/services.php', 'services');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'services');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/services')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/services')], 'lang');
            $this->publishes([__DIR__ . '/../../config/services.php' => config_path('services.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-services',
                'priority'    => 121,
                'parent_id'   => null,
                'name'        => trans('Customer Services'),
                'icon'        => 'fa fa-product-hunt',
                'permissions' => ['services.list'],
            ])
            ->registerItem([
                'id' => 'cms-plugins-services-carrer',
                'priority' => 1,
                'parent_id' => 'cms-plugins-services',
                'name' => trans('Carrer Oppotunities'),
                'icon' => null,
                'url' => route('services_carrer.list'),
                'permissions' => ['services.list'],
            ])
            ->registerItem([
                'id' => 'cms-plugins-services-customer',
                'priority' => 2,
                'parent_id' => 'cms-plugins-services',
                'name' => trans('Customer Info Form'),
                'icon' => null,
                'url' => route('services_customer.list'),
                'permissions' => ['services.list'],
            ])
            ->registerItem([
                'id' => 'cms-plugins-services-vendor',
                'priority' => 2,
                'parent_id' => 'cms-plugins-services',
                'name' => trans('Vendor Packet Form'),
                'icon' => null,
                'url' => route('services_vendor.list'),
                'permissions' => ['services.list'],
            ]);
        });
    }
}
