<?php

namespace Botble\Industrials;

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
                'name' => 'Industrials',
                'flag' => 'industrials.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'industrials.create',
                'parent_flag' => 'industrials.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'industrials.edit',
                'parent_flag' => 'industrials.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'industrials.delete',
                'parent_flag' => 'industrials.list',
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
            '--path' => 'plugins/industrials/database/migrations',
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
        Schema::dropIfExists('industrials');
    }
}