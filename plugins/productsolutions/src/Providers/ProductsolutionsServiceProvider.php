<?php

namespace Botble\Productsolutions\Providers;

use Botble\Productsolutions\Models\Productsolutions;
use Illuminate\Support\ServiceProvider;
use Botble\Productsolutions\Repositories\Caches\ProductsolutionsCacheDecorator;
use Botble\Productsolutions\Repositories\Eloquent\ProductsolutionsRepository;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class ProductsolutionsServiceProvider extends ServiceProvider
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
            $this->app->singleton(ProductsolutionsInterface::class, function () {
                return new ProductsolutionsCacheDecorator(new ProductsolutionsRepository(new Productsolutions()), new Cache($this->app['cache'], ProductsolutionsRepository::class));
            });
        } else {
            $this->app->singleton(ProductsolutionsInterface::class, function () {
                return new ProductsolutionsRepository(new Productsolutions());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'productsolutions');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/productsolutions.php', 'productsolutions');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'productsolutions');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/productsolutions')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/productsolutions')], 'lang');
            $this->publishes([__DIR__ . '/../../config/productsolutions.php' => config_path('productsolutions.php')], 'config');
        }

        return;
        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-product-solutions',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('productsolutions::productsolutions.menu'),
                'icon'        => 'fa fa-leanpub',
                'url'         => route('productsolutions.list'),
                'permissions' => ['productsolutions.list'],
            ]);
        });
    }
}
