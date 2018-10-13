<?php

namespace Botble\Projects;

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
                'name' => 'Projects',
                'flag' => 'projects.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'projects.create',
                'parent_flag' => 'projects.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'projects.edit',
                'parent_flag' => 'projects.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'projects.delete',
                'parent_flag' => 'projects.list',
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
            '--path' => 'plugins/projects/database/migrations',
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
        Schema::dropIfExists('projects');
    }
}