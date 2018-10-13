<?php

namespace Botble\Donation\Providers;

use Botble\Donation\Models\Donation;
use Illuminate\Support\ServiceProvider;
use Botble\Donation\Repositories\Caches\DonationCacheDecorator;
use Botble\Donation\Repositories\Eloquent\DonationRepository;
use Botble\Donation\Repositories\Interfaces\DonationInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;

class DonationServiceProvider extends ServiceProvider
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
            $this->app->singleton(DonationInterface::class, function () {
                return new DonationCacheDecorator(new DonationRepository(new Donation()), new Cache($this->app['cache'], DonationRepository::class));
            });
        } else {
            $this->app->singleton(DonationInterface::class, function () {
                return new DonationRepository(new Donation());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'donation');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/donation.php', 'donation');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'donation');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/donation')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/donation')], 'lang');
            $this->publishes([__DIR__ . '/../../config/donation.php' => config_path('donation.php')], 'config');
        }
    }
}
