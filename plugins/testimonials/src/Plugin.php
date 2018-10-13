<?php

namespace Botble\Testimonials;

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
                'name' => 'Testimonials',
                'flag' => 'testimonials.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'testimonials.create',
                'parent_flag' => 'testimonials.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'testimonials.edit',
                'parent_flag' => 'testimonials.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'testimonials.delete',
                'parent_flag' => 'testimonials.list',
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
            '--path' => 'plugins/testimonials/database/migrations',
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
        Schema::dropIfExists('testimonials');
    }
}