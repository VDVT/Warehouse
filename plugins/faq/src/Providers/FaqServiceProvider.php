<?php

namespace Botble\Faq\Providers;

use Botble\Faq\Models\Faq;
use Illuminate\Support\ServiceProvider;
use Botble\Faq\Repositories\Caches\FaqCacheDecorator;
use Botble\Faq\Repositories\Eloquent\FaqRepository;
use Botble\Faq\Repositories\Interfaces\FaqInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class FaqServiceProvider extends ServiceProvider
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
            $this->app->singleton(FaqInterface::class, function () {
                return new FaqCacheDecorator(new FaqRepository(new Faq()), new Cache($this->app['cache'], FaqRepository::class));
            });
        } else {
            $this->app->singleton(FaqInterface::class, function () {
                return new FaqRepository(new Faq());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'faq');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/faq.php', 'faq');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'faq');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/faq')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/faq')], 'lang');
            $this->publishes([__DIR__ . '/../../config/faq.php' => config_path('faq.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-faq',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('faq::faq.menu'),
                'icon'        => 'fa fa-question-circle',
                'url'         => route('faq.list'),
                'permissions' => ['faq.list'],
            ]);
        });
    }
}
