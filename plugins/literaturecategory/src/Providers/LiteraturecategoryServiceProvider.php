<?php

namespace Botble\Literaturecategory\Providers;

use Botble\Literaturecategory\Models\Literaturecategory;
use Illuminate\Support\ServiceProvider;
use Botble\Literaturecategory\Repositories\Caches\LiteraturecategoryCacheDecorator;
use Botble\Literaturecategory\Repositories\Eloquent\LiteraturecategoryRepository;
use Botble\Literaturecategory\Repositories\Interfaces\LiteraturecategoryInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class LiteraturecategoryServiceProvider extends ServiceProvider
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
            $this->app->singleton(LiteraturecategoryInterface::class, function () {
                return new LiteraturecategoryCacheDecorator(new LiteraturecategoryRepository(new Literaturecategory()), new Cache($this->app['cache'], LiteraturecategoryRepository::class));
            });
        } else {
            $this->app->singleton(LiteraturecategoryInterface::class, function () {
                return new LiteraturecategoryRepository(new Literaturecategory());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'literaturecategory');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/literaturecategory.php', 'literaturecategory');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'literaturecategory');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/literaturecategory')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/literaturecategory')], 'lang');
            $this->publishes([__DIR__ . '/../../config/literaturecategory.php' => config_path('literaturecategory.php')], 'config');
        }
    }
}
