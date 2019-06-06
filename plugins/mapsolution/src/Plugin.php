<?php

namespace Botble\Mapsolution;

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
                'name' => 'Mapsolution',
                'flag' => 'mapsolution.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'mapsolution.create',
                'parent_flag' => 'mapsolution.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'mapsolution.edit',
                'parent_flag' => 'mapsolution.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'mapsolution.delete',
                'parent_flag' => 'mapsolution.list',
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
            '--path' => 'plugins/mapsolution/database/migrations',
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
        Schema::dropIfExists('mapsolution');
    }
}