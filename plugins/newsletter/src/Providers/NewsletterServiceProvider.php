<?php

namespace Botble\Newsletter\Providers;

use Botble\Newsletter\Models\Newsletter;
use Illuminate\Support\ServiceProvider;
use Botble\Newsletter\Repositories\Caches\NewsletterCacheDecorator;
use Botble\Newsletter\Repositories\Eloquent\NewsletterRepository;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;

class NewsletterServiceProvider extends ServiceProvider
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
            $this->app->singleton(NewsletterInterface::class, function () {
                return new NewsletterCacheDecorator(new NewsletterRepository(new Newsletter()), new Cache($this->app['cache'], NewsletterRepository::class));
            });
        } else {
            $this->app->singleton(NewsletterInterface::class, function () {
                return new NewsletterRepository(new Newsletter());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'newsletter');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/newsletter.php', 'newsletter');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'newsletter');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/newsletter')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/newsletter')], 'lang');
            $this->publishes([__DIR__ . '/../../config/newsletter.php' => config_path('newsletter.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-form-submission',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => 'Email Newsletter',
                'icon'        => 'fa fa-leanpub',
                'url'         => route('newsletter.list'),
                'permissions' => ['newsletter.list'],
            ]);
            // ->registerItem([
            //     'id'          => 'cms-plugins-newsletter',
            //     'priority'    => 1,
            //     'parent_id'   => 'cms-plugins-form-submission',
            //     'name'        => trans('newsletter::newsletter.menu'),
            //     // 'icon'        => 'fa fa-leanpub',
            //     'url'         => route('newsletter.list'),
            //     'permissions' => ['newsletter.list'],
            // ])
            // ->registerItem([
            //     'id'          => 'cms-plugins-donation',
            //     'priority'    => 2,
            //     'parent_id'   => 'cms-plugins-form-submission',
            //     'name'        => trans('donation::donation.menu'),
            //     // 'icon'        => 'fa fa-image',
            //     'url'         => route('donation.list'),
            //     'permissions' => ['donation.list'],
            // ])
            // ->registerItem([
            //     'id'          => 'cms-plugins-contact',
            //     'priority'    => 4,
            //     'parent_id'   => 'cms-plugins-form-submission',
            //     'name'        => trans('contact::contact.menuss'),
            //     // 'icon'        => 'fa fa-image',
            //     'url'         => route('contacts.list'),
            //     'permissions' => ['contacts.list'],
            // ])
            // ->registerItem([
            //     'id'          => 'cms-plugins-project-completion',
            //     'priority'    => 5,
            //     'parent_id'   => 'cms-plugins-form-submission',
            //     'name'        => trans('projectcompletion::projectcompletion.menu'),
            //     // 'icon'        => 'fa fa-image',
            //     'url'         => route('projectcompletion.list'),
            //     'permissions' => ['projectcompletion.list'],
            // ]);
        });
    }
}
