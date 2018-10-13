<?php

namespace Botble\Literature\Providers;

use Botble\Literature\Models\Literature;
use Illuminate\Support\ServiceProvider;
use Botble\Literature\Repositories\Caches\LiteratureCacheDecorator;
use Botble\Literature\Repositories\Eloquent\LiteratureRepository;
use Botble\Literature\Repositories\Interfaces\LiteratureInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class LiteratureServiceProvider extends ServiceProvider
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
            $this->app->singleton(LiteratureInterface::class, function () {
                return new LiteratureCacheDecorator(new LiteratureRepository(new Literature()), new Cache($this->app['cache'], LiteratureRepository::class));
            });
        } else {
            $this->app->singleton(LiteratureInterface::class, function () {
                return new LiteratureRepository(new Literature());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'literature');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/literature.php', 'literature');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'literature');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/literature')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/literature')], 'lang');
            $this->publishes([__DIR__ . '/../../config/literature.php' => config_path('literature.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-literature',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('literature::literature.menu'),
                'icon'        => 'fa fa-leanpub',
                'url'         => route('literature.list'),
                'permissions' => ['literature.list'],
            ]);
        });
    }
}
