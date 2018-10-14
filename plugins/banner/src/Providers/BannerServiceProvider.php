<?php

namespace Botble\Banner\Providers;

use Botble\Banner\Models\Banner;
use Illuminate\Support\ServiceProvider;
use Botble\Banner\Repositories\Caches\BannerCacheDecorator;
use Botble\Banner\Repositories\Eloquent\BannerRepository;
use Botble\Banner\Repositories\Interfaces\BannerInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class BannerServiceProvider extends ServiceProvider
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
            $this->app->singleton(BannerInterface::class, function () {
                return new BannerCacheDecorator(new BannerRepository(new Banner()), new Cache($this->app['cache'], BannerRepository::class));
            });
        } else {
            $this->app->singleton(BannerInterface::class, function () {
                return new BannerRepository(new Banner());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'banner');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/banner.php', 'banner');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'banner');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/banner')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/banner')], 'lang');
            $this->publishes([__DIR__ . '/../../config/banner.php' => config_path('banner.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-banner',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('banner::banner.menu'),
                'icon'        => 'fa fa-image',
                'url'         => route('banner.list'),
                'permissions' => ['banner.list'],
            ]);
        });
    }
}
