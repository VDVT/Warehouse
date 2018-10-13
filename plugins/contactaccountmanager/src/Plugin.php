<?php

namespace Botble\Contactaccountmanager;

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
                'name' => 'Contactaccountmanager',
                'flag' => 'contactaccountmanager.list',
                'is_feature' => true,
            ],
            [
                'name' => 'Create',
                'flag' => 'contactaccountmanager.create',
                'parent_flag' => 'contactaccountmanager.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'contactaccountmanager.edit',
                'parent_flag' => 'contactaccountmanager.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'contactaccountmanager.delete',
                'parent_flag' => 'contactaccountmanager.list',
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
            '--path' => 'plugins/contactaccountmanager/database/migrations',
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
        Schema::dropIfExists('contactaccountmanager');
    }
}