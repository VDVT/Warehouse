<?php

namespace Botble\Banner;

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
                'name' => 'Banner',
                'flag' => 'banner.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'banner.create',
                'parent_flag' => 'banner.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'banner.edit',
                'parent_flag' => 'banner.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'banner.delete',
                'parent_flag' => 'banner.list',
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
            '--path' => 'plugins/banner/database/migrations',
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
        Schema::dropIfExists('banner');
    }
}