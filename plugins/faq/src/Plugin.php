<?php

namespace Botble\Faq;

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
                'name' => 'Faq',
                'flag' => 'faq.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'faq.create',
                'parent_flag' => 'faq.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'faq.edit',
                'parent_flag' => 'faq.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'faq.delete',
                'parent_flag' => 'faq.list',
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
            '--path' => 'plugins/faq/database/migrations',
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
        Schema::dropIfExists('faq');
    }
}