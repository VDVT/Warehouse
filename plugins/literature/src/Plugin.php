<?php

namespace Botble\Literature;

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
                'name' => 'Literature',
                'flag' => 'literature.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'literature.create',
                'parent_flag' => 'literature.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'literature.edit',
                'parent_flag' => 'literature.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'literature.delete',
                'parent_flag' => 'literature.list',
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
            '--path' => 'plugins/literature/database/migrations',
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
        Schema::dropIfExists('literature');
    }
}