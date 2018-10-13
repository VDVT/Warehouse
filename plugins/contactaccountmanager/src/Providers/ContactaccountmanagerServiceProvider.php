<?php

namespace Botble\Contactaccountmanager\Providers;

use Botble\Contactaccountmanager\Models\Contactaccountmanager;
use Illuminate\Support\ServiceProvider;
use Botble\Contactaccountmanager\Repositories\Caches\ContactaccountmanagerCacheDecorator;
use Botble\Contactaccountmanager\Repositories\Eloquent\ContactaccountmanagerRepository;
use Botble\Contactaccountmanager\Repositories\Interfaces\ContactaccountmanagerInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class ContactaccountmanagerServiceProvider extends ServiceProvider
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
            $this->app->singleton(ContactaccountmanagerInterface::class, function () {
                return new ContactaccountmanagerCacheDecorator(new ContactaccountmanagerRepository(new Contactaccountmanager()), new Cache($this->app['cache'], ContactaccountmanagerRepository::class));
            });
        } else {
            $this->app->singleton(ContactaccountmanagerInterface::class, function () {
                return new ContactaccountmanagerRepository(new Contactaccountmanager());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'contactaccountmanager');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/contactaccountmanager.php', 'contactaccountmanager');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'contactaccountmanager');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/contactaccountmanager')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/contactaccountmanager')], 'lang');
            $this->publishes([__DIR__ . '/../../config/contactaccountmanager.php' => config_path('contactaccountmanager.php')], 'config');
        }

        return;
        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-contact-account-manager',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('contactaccountmanager::contactaccountmanager.menu'),
                'icon'        => 'fa fa-envelope-o',
                'url'         => route('contactaccountmanager.list'),
                'permissions' => ['contactaccountmanager.list'],
            ]);
        });
    }
}
