<?php

namespace Botble\Testimonials\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Testimonials\Models\Testimonials;
use Illuminate\Support\ServiceProvider;
use Botble\Testimonials\Repositories\Caches\TestimonialsCacheDecorator;
use Botble\Testimonials\Repositories\Eloquent\TestimonialsRepository;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Event;

class TestimonialsServiceProvider extends ServiceProvider
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
            $this->app->singleton(TestimonialsInterface::class, function () {
                return new TestimonialsCacheDecorator(new TestimonialsRepository(new Testimonials()), new Cache($this->app['cache'], TestimonialsRepository::class));
            });
        } else {
            $this->app->singleton(TestimonialsInterface::class, function () {
                return new TestimonialsRepository(new Testimonials());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'testimonials');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/testimonials.php', 'testimonials');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'testimonials');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/testimonials')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/testimonials')], 'lang');
            $this->publishes([__DIR__ . '/../../config/testimonials.php' => config_path('testimonials.php')], 'config');
        }   

        return;
        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-testimonial',
                'priority'    => 120,
                'parent_id'   => null,
                'name'        => trans('testimonials::testimonials.menu'),
                'icon'        => 'fa fa-commenting',
                'url'         => route('testimonials.list'),
                'permissions' => ['testimonials.list'],
            ]);
        });
    }
}
