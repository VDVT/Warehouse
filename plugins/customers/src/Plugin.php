<?php

namespace Botble\Customers;

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
                'name' => 'Customers',
                'flag' => 'customers.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'customers.create',
                'parent_flag' => 'customers.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'customers.edit',
                'parent_flag' => 'customers.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'customers.delete',
                'parent_flag' => 'customers.list',
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
            '--path' => 'plugins/customers/database/migrations',
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
        Schema::dropIfExists('customers');
    }
}