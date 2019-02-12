<?php

namespace Botble\Products\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Products\Models\Products;
use Illuminate\Support\ServiceProvider;
use Botble\Products\Repositories\Caches\ProductsCacheDecorator;
use Botble\Products\Repositories\Eloquent\ProductsRepository;
use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Products\Providers\RouteServiceProvider;

use Botble\Products\Models\ProductCategory;
use Botble\Products\Repositories\Caches\ProductCategoryCacheDecorator;
use Botble\Products\Repositories\Eloquent\ProductCategoryRepository;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;

class ProductsServiceProvider extends ServiceProvider
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
            $this->app->singleton(ProductsInterface::class, function () {
                return new ProductsCacheDecorator(new ProductsRepository(new Products()), new Cache($this->app['cache'], ProductsRepository::class));
            });
            $this->app->singleton(ProductCategoryInterface::class, function () {
                return new ProductCategoryCacheDecorator(new ProductCategoryRepository(new ProductCategory()), new Cache($this->app['cache'], __CLASS__));
            });
        } else {
            $this->app->singleton(ProductsInterface::class, function () {
                return new ProductsRepository(new Products());
            });
            $this->app->singleton(ProductCategoryInterface::class, function () {
                return new ProductCategoryRepository(new ProductCategory());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'products');
        $this->loadRoutesFrom(__DIR__.'/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/products.php', 'products');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'products');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/products')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/products')], 'lang');
            $this->publishes([__DIR__ . '/../../config/products.php' => config_path('products.php')], 'config');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                    'id'          => 'cms-plugins-products',
                    'priority'    => 120,
                    'parent_id'   => null,
                    'name'        => trans('products::products.menu_name'),
                    'icon'        => 'fa fa-product-hunt',
                    'url'         => route('products.list'),
                    'permissions' => ['products.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-products-all',
                    'priority' => 1,
                    'parent_id' => 'cms-plugins-products',
                    'name' => trans('products::products.all_posts'),
                    'icon' => null,
                    'url' => route('products.list'),
                    'permissions' => ['products.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-product-categories',
                    'priority' => 4,
                    'parent_id' => 'cms-plugins-products',
                    'name' => trans('products::product_categories.menu_name'),
                    'icon' => null,
                    'url' => route('product_categories.list'),
                    'permissions' => ['product_categories.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-product-tab-categories',
                    'priority' => 3,
                    'parent_id' => 'cms-plugins-products',
                    'name' => trans('tabcategory::tabcategory.menu_name'),
                    'icon' => null,
                    'url' => route('tabcategory.list'),
                    'permissions' => ['tabcategory.list'],
                ])
                 ->registerItem([
                    'id' => 'cms-plugins-product-group-categories',
                    'priority' => 2,
                    'parent_id' => 'cms-plugins-products',
                    'name' => __('Groups Category'),
                    'icon' => null,
                    'url' => route('groupproductcategory.list'),
                    'permissions' => ['groupproductcategory.list'],
                ]);
        });

    }
}
