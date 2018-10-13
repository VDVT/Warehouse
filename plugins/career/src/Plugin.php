<?php

namespace Botble\Career;

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
                'name' => 'Career',
                'flag' => 'career.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'career.create',
                'parent_flag' => 'career.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'career.edit',
                'parent_flag' => 'career.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'career.delete',
                'parent_flag' => 'career.list',
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
            '--path' => 'plugins/career/database/migrations',
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
        Schema::dropIfExists('career');
    }
}