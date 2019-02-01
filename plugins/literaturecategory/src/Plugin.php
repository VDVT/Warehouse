<?php

namespace Botble\Literaturecategory;

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
                'name' => 'Literaturecategory',
                'flag' => 'literaturecategory.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'literaturecategory.create',
                'parent_flag' => 'literaturecategory.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'literaturecategory.edit',
                'parent_flag' => 'literaturecategory.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'literaturecategory.delete',
                'parent_flag' => 'literaturecategory.list',
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
            '--path' => 'plugins/literaturecategory/database/migrations',
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
        Schema::dropIfExists('literaturecategory');
    }
}