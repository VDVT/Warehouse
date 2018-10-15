<?php

namespace Botble\Vendors\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Vendors\Models\Vendors
 *
 * @mixin \Eloquent
 */
class Vendors extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'vendors';

    protected $fillable = [
    	'address',
		'remittance_address',
		'vendor_name',
		'contact_name',
		'phone',
		'fax',
		'email',
		'website',
		'service_type',
		'attachment',
		'status',
    ];
}
