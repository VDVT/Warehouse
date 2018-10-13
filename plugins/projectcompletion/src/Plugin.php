<?php

namespace Botble\Projectcompletion;

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
                'name' => 'Projectcompletion',
                'flag' => 'projectcompletion.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'projectcompletion.create',
                'parent_flag' => 'projectcompletion.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'projectcompletion.edit',
                'parent_flag' => 'projectcompletion.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'projectcompletion.delete',
                'parent_flag' => 'projectcompletion.list',
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
            '--path' => 'plugins/projectcompletion/database/migrations',
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
        Schema::dropIfExists('projectcompletion');
    }
}