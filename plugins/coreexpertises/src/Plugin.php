<?php

namespace Botble\Coreexpertises;

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
                'name' => 'Coreexpertises',
                'flag' => 'coreexpertises.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'coreexpertises.create',
                'parent_flag' => 'coreexpertises.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'coreexpertises.edit',
                'parent_flag' => 'coreexpertises.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'coreexpertises.delete',
                'parent_flag' => 'coreexpertises.list',
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
            '--path' => 'plugins/coreexpertises/database/migrations',
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
        Schema::dropIfExists('coreexpertises');
    }
}