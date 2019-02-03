<?php

namespace Botble\Groupproductcategory;

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
                'name' => 'Groupproductcategory',
                'flag' => 'groupproductcategory.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'groupproductcategory.create',
                'parent_flag' => 'groupproductcategory.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'groupproductcategory.edit',
                'parent_flag' => 'groupproductcategory.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'groupproductcategory.delete',
                'parent_flag' => 'groupproductcategory.list',
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
            '--path' => 'plugins/groupproductcategory/database/migrations',
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
        Schema::dropIfExists('groupproductcategory');
    }
}