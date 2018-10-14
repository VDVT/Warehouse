<?php

namespace Botble\CustomerServices;

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
                'name' => 'CustomerServices',
                'flag' => 'customer-services.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'customer-services.create',
                'parent_flag' => 'customer-services.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'customer-services.edit',
                'parent_flag' => 'customer-services.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'customer-services.delete',
                'parent_flag' => 'customer-services.list',
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
            '--path' => 'plugins/customer-services/database/migrations',
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
        Schema::dropIfExists('customer-services');
    }
}