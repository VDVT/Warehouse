<?php

namespace Botble\Services;

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
                'name' => 'Services',
                'flag' => 'services.list',
                'is_feature' => true,
            ],

            /* add permission carrer */
            [
                'name' => 'Manage Service Carrer',
                'flag' => 'services_carrer.list',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Create',
                'flag' => 'services_carrer.create',
                'parent_flag' => 'services_carrer.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'services_carrer.edit',
                'parent_flag' => 'services_carrer.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'services_carrer.delete',
                'parent_flag' => 'services_carrer.list',
            ],


            /* add permission customer */
            [
                'name' => 'Manage Service Carrer',
                'flag' => 'services_customer.list',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Create',
                'flag' => 'services_customer.create',
                'parent_flag' => 'services_customer.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'services_customer.edit',
                'parent_flag' => 'services_customer.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'services_customer.delete',
                'parent_flag' => 'services_customer.list',
            ],

            /* add permission vendor */
            [
                'name' => 'Manage Service Carrer',
                'flag' => 'services_vendor.list',
                'parent_flag' => 'services.list',
            ],
            [
                'name' => 'Create',
                'flag' => 'services_vendor.create',
                'parent_flag' => 'services_vendor.list',
            ],
            [
                'name' => 'Edit',
                'flag' => 'services_vendor.edit',
                'parent_flag' => 'services_vendor.list',
            ],
            [
                'name' => 'Delete',
                'flag' => 'services_vendor.delete',
                'parent_flag' => 'services_vendor.list',
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
            '--path' => 'plugins/services/database/migrations',
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
        Schema::dropIfExists('services');
    }
}