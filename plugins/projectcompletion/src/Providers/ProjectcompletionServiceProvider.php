<?php

namespace Botble\Projectcompletion\Providers;

use Botble\Projectcompletion\Models\Projectcompletion;
use Illuminate\Support\ServiceProvider;
use Botble\Projectcompletion\Repositories\Caches\ProjectcompletionCacheDecorator;
use Botble\Projectcompletion\Repositories\Eloquent\ProjectcompletionRepository;
use Botble\Projectcompletion\Repositories\Interfaces\ProjectcompletionInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class ProjectcompletionServiceProvider extends ServiceProvider
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
            $this->app->singleton(ProjectcompletionInterface::class, function () {
                return new ProjectcompletionCacheDecorator(new ProjectcompletionRepository(new Projectcompletion()), new Cache($this->app['cache'], ProjectcompletionRepository::class));
            });
        } else {
            $this->app->singleton(ProjectcompletionInterface::class, function () {
                return new ProjectcompletionRepository(new Projectcompletion());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'projectcompletion');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/projectcompletion.php', 'projectcompletion');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'projectcompletion');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/projectcompletion')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/projectcompletion')], 'lang');
            $this->publishes([__DIR__ . '/../../config/projectcompletion.php' => config_path('projectcompletion.php')], 'config');
        }
    }
}
