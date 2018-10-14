<?php

namespace Botble\Services;

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
                'name' => 'Services',
                'flag' => 'services.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'services.create',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'services.edit',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'services.delete',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Test',
                'flag' => 'services.test',
                'parent_flag' => 'services.list',
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
            '--path' => 'plugins/services/database/migrations',
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
        Schema::dropIfExists('services');
    }
}