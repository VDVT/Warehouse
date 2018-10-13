<?php

namespace Botble\Projects\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Projects\Models\Projects;
use Illuminate\Support\ServiceProvider;
use Botble\Projects\Repositories\Caches\ProjectsCacheDecorator;
use Botble\Projects\Repositories\Eloquent\ProjectsRepository;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Event;

class ProjectsServiceProvider extends ServiceProvider
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
            $this->app->singleton(ProjectsInterface::class, function () {
                return new ProjectsCacheDecorator(new ProjectsRepository(new Projects()), new Cache($this->app['cache'], ProjectsRepository::class));
            });
        } else {
            $this->app->singleton(ProjectsInterface::class, function () {
                return new ProjectsRepository(new Projects());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'projects');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/projects.php', 'projects');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'projects');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/projects')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/projects')], 'lang');
            $this->publishes([__DIR__ . '/../../config/projects.php' => config_path('projects.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-projects',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('projects::projects.menu'),
                'icon'        => 'fa fa-leanpub',
                'url'         => route('projects.list'),
                'permissions' => ['projects.list'],
            ]);
        });
    }
}
