<?php

namespace Botble\Productsolutions;

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
                'name' => 'Productsolutions',
                'flag' => 'productsolutions.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'productsolutions.create',
                'parent_flag' => 'productsolutions.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'productsolutions.edit',
                'parent_flag' => 'productsolutions.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'productsolutions.delete',
                'parent_flag' => 'productsolutions.list',
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
            '--path' => 'plugins/productsolutions/database/migrations',
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
        Schema::dropIfExists('productsolutions');
    }
}