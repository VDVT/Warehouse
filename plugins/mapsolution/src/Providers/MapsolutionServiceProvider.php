<?php

namespace Botble\Mapsolution\Providers;

use Botble\Mapsolution\Models\Mapsolution;
use Illuminate\Support\ServiceProvider;
use Botble\Mapsolution\Repositories\Caches\MapsolutionCacheDecorator;
use Botble\Mapsolution\Repositories\Eloquent\MapsolutionRepository;
use Botble\Mapsolution\Repositories\Interfaces\MapsolutionInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;

class MapsolutionServiceProvider extends ServiceProvider
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
            $this->app->singleton(MapsolutionInterface::class, function () {
                return new MapsolutionCacheDecorator(new MapsolutionRepository(new Mapsolution()), new Cache($this->app['cache'], MapsolutionRepository::class));
            });
        } else {
            $this->app->singleton(MapsolutionInterface::class, function () {
                return new MapsolutionRepository(new Mapsolution());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'mapsolution');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/mapsolution.php', 'mapsolution');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'mapsolution');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/mapsolution')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/mapsolution')], 'lang');
            $this->publishes([__DIR__ . '/../../config/mapsolution.php' => config_path('mapsolution.php')], 'config');
        }

        \Event::listen(SessionStarted::class, function () {
            dashboard_menu()
                ->registerItem([
                    'id' => 'cms-plugins-mapsolution',
                    'priority' => 4,
                    'parent_id' => null,
                    'name' => trans('Mapsolution'),
                    'icon' => 'fa fa-picture-o',
                    'url' => route('mapsolution.list'),
                    'permissions' => ['mapsolution.list'],
                ]);
        });
    }
}
