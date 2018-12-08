<?php

namespace Botble\Tabcategory;

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
                'name' => 'Tabcategory',
                'flag' => 'tabcategory.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'tabcategory.create',
                'parent_flag' => 'tabcategory.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'tabcategory.edit',
                'parent_flag' => 'tabcategory.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'tabcategory.delete',
                'parent_flag' => 'tabcategory.list',
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
            '--path' => 'plugins/tabcategory/database/migrations',
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
        Schema::dropIfExists('tabcategory');
    }
}