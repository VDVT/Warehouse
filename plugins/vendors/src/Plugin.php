<?php

namespace Botble\Vendors;

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
                'name' => 'Vendors',
                'flag' => 'vendors.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'vendors.create',
                'parent_flag' => 'vendors.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'vendors.edit',
                'parent_flag' => 'vendors.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'vendors.delete',
                'parent_flag' => 'vendors.list',
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
            '--path' => 'plugins/vendors/database/migrations',
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
        Schema::dropIfExists('vendors');
    }
}