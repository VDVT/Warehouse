<?php

namespace Botble\Newsletter;

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
                'name' => 'Newsletter',
                'flag' => 'newsletter.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'newsletter.create',
                'parent_flag' => 'newsletter.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'newsletter.edit',
                'parent_flag' => 'newsletter.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'newsletter.delete',
                'parent_flag' => 'newsletter.list',
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
            '--path' => 'plugins/newsletter/database/migrations',
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
        Schema::dropIfExists('newsletter');
    }
}