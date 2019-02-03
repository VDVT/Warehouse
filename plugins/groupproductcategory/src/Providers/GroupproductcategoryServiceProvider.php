<?php

namespace Botble\Groupproductcategory\Providers;

use Botble\Groupproductcategory\Models\Groupproductcategory;
use Illuminate\Support\ServiceProvider;
use Botble\Groupproductcategory\Repositories\Caches\GroupproductcategoryCacheDecorator;
use Botble\Groupproductcategory\Repositories\Eloquent\GroupproductcategoryRepository;
use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class GroupproductcategoryServiceProvider extends ServiceProvider
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
            $this->app->singleton(GroupproductcategoryInterface::class, function () {
                return new GroupproductcategoryCacheDecorator(new GroupproductcategoryRepository(new Groupproductcategory()), new Cache($this->app['cache'], GroupproductcategoryRepository::class));
            });
        } else {
            $this->app->singleton(GroupproductcategoryInterface::class, function () {
                return new GroupproductcategoryRepository(new Groupproductcategory());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'groupproductcategory');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/groupproductcategory.php', 'groupproductcategory');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'groupproductcategory');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/groupproductcategory')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/groupproductcategory')], 'lang');
            $this->publishes([__DIR__ . '/../../config/groupproductcategory.php' => config_path('groupproductcategory.php')], 'config');
        }
    }
}
