<?php

namespace Botble\Career\Providers;

use Botble\Career\Models\Career;
use Illuminate\Support\ServiceProvider;
use Botble\Career\Repositories\Caches\CareerCacheDecorator;
use Botble\Career\Repositories\Eloquent\CareerRepository;
use Botble\Career\Repositories\Interfaces\CareerInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

use Botble\Career\Repositories\Interfaces\ApplicationInterface;
use Botble\Career\Repositories\Caches\ApplicationCacheDecorator;
use Botble\Career\Models\Application;
use Botble\Career\Repositories\Eloquent\ApplicationRepository;

use Botble\Base\Events\SessionStarted;
use Event;

class CareerServiceProvider extends ServiceProvider
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
            $this->app->singleton(CareerInterface::class, function () {
                return new CareerCacheDecorator(new CareerRepository(new Career()), new Cache($this->app['cache'], CareerRepository::class));
            });

            $this->app->singleton(ApplicationInterface::class, function () {
                return new ApplicationCacheDecorator(new ApplicationRepository(new Application()), new Cache($this->app['cache'], ApplicationRepository::class));
            });
        } else {
            $this->app->singleton(CareerInterface::class, function () {
                return new CareerRepository(new Career());
            });

            $this->app->singleton(ApplicationInterface::class, function () {
                return new ApplicationRepository(new Application());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'career');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/career.php', 'career');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'career');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/career')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/career')], 'lang');
            $this->publishes([__DIR__ . '/../../config/career.php' => config_path('career.php')], 'config');
        }

        $this->mergeConfigFrom(__DIR__ . '/../../config/application.php', 'application');

        return;
        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-career',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('career::career.menu'),
                'icon'        => 'fa fa-paste',
                'url'         => route('career.list'),
                'permissions' => ['career.list'],
            ]);
            // ->registerItem([
            //     'id' => 'cms-plugins-career-career',
            //     'priority' => 1,
            //     'parent_id' => 'cms-plugins-career',
            //     'name' => trans('career::career.list'),
            //     'icon' => null,
            //     'url' => route('career.list'),
            //     'permissions' => ['career.list'],
            // ])
            // ->registerItem([
            //     'id' => 'cms-plugins-career-applicationform',
            //     'priority' => 2,
            //     'parent_id' => 'cms-plugins-career',
            //     'name' => trans('career::applicationform.menu'),
            //     'icon' => null,
            //     'url' => route('applicationform.list'),
            //     'permissions' => ['application.list'],
            // ]);
        });
    }
}
