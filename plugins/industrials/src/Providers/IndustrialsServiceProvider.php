<?php

namespace Botble\Industrials\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Industrials\Models\Industrials;
use Illuminate\Support\ServiceProvider;
use Botble\Industrials\Repositories\Caches\IndustrialsCacheDecorator;
use Botble\Industrials\Repositories\Eloquent\IndustrialsRepository;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Event;

class IndustrialsServiceProvider extends ServiceProvider
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
            $this->app->singleton(IndustrialsInterface::class, function () {
                return new IndustrialsCacheDecorator(new IndustrialsRepository(new Industrials()), new Cache($this->app['cache'], IndustrialsRepository::class));
            });
        } else {
            $this->app->singleton(IndustrialsInterface::class, function () {
                return new IndustrialsRepository(new Industrials());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'industrials');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/industrials.php', 'industrials');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'industrials');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/industrials')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/industrials')], 'lang');
            $this->publishes([__DIR__ . '/../../config/industrials.php' => config_path('industrials.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-industrials',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('industrials::industrials.menu'),
                'icon'        => 'fa fa-leanpub',
                'url'         => route('industrials.list'),
                'permissions' => ['industrials.list'],
            ]);
        });
    }
}
