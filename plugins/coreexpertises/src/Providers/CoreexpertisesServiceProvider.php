<?php

namespace Botble\Coreexpertises\Providers;

use Botble\Coreexpertises\Models\Coreexpertises;
use Illuminate\Support\ServiceProvider;
use Botble\Coreexpertises\Repositories\Caches\CoreexpertisesCacheDecorator;
use Botble\Coreexpertises\Repositories\Eloquent\CoreexpertisesRepository;
use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class CoreexpertisesServiceProvider extends ServiceProvider
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
            $this->app->singleton(CoreexpertisesInterface::class, function () {
                return new CoreexpertisesCacheDecorator(new CoreexpertisesRepository(new Coreexpertises()), new Cache($this->app['cache'], CoreexpertisesRepository::class));
            });
        } else {
            $this->app->singleton(CoreexpertisesInterface::class, function () {
                return new CoreexpertisesRepository(new Coreexpertises());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'coreexpertises');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/coreexpertises.php', 'coreexpertises');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'coreexpertises');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/coreexpertises')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/coreexpertises')], 'lang');
            $this->publishes([__DIR__ . '/../../config/coreexpertises.php' => config_path('coreexpertises.php')], 'config');
        }
        return;
        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-core-expertises',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('coreexpertises::coreexpertises.menu'),
                'icon'        => 'fa fa-leanpub',
                'url'         => route('coreexpertises.list'),
                'permissions' => ['coreexpertises.list'],
            ]);
        });
    }
}
