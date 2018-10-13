<?php

namespace Botble\Products;

use Artisan;
use Botble\Base\Supports\Commands\Permission;
use Schema;
use Botble\Base\Interfaces\PluginInterface;

class Plugin implements PluginInterface
{

    /**
     * @return array
     * @author Sang Nguyen
     */
    public static function permissions()
    {
        return [
            [
                'name' => 'Products',
                'flag' => 'products.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'products.create',
                'parent_flag' => 'products.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'products.edit',
                'parent_flag' => 'products.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'products.delete',
                'parent_flag' => 'products.list',
            ]
        ];
    }

    /**
     * @author Sang Nguyen
     */
    public static function activate()
    {
        Permission::registerPermission(self::permissions());
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/products/database/migrations',
        ]);
    }

    /**
     * @author Sang Nguyen
     */
    public static function deactivate()
    {

    }

    /**
     * @author Sang Nguyen
     */
    public static function remove()
    {
        Permission::removePermission(self::permissions());
        Schema::dropIfExists('products');
    }
}