<?php

namespace Botble\Tabcategory\Providers;

use Botble\Tabcategory\Models\Tabcategory;
use Illuminate\Support\ServiceProvider;
use Botble\Tabcategory\Repositories\Caches\TabcategoryCacheDecorator;
use Botble\Tabcategory\Repositories\Eloquent\TabcategoryRepository;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class TabcategoryServiceProvider extends ServiceProvider
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
            $this->app->singleton(TabcategoryInterface::class, function () {
                return new TabcategoryCacheDecorator(new TabcategoryRepository(new Tabcategory()), new Cache($this->app['cache'], TabcategoryRepository::class));
            });
        } else {
            $this->app->singleton(TabcategoryInterface::class, function () {
                return new TabcategoryRepository(new Tabcategory());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'tabcategory');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/tabcategory.php', 'tabcategory');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'tabcategory');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/tabcategory')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/tabcategory')], 'lang');
            $this->publishes([__DIR__ . '/../../config/tabcategory.php' => config_path('tabcategory.php')], 'config');
        }
    }
}
