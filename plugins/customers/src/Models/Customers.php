<?php

namespace Botble\Customers\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Customers\Models\Customers
 *
 * @mixin \Eloquent
 */
class Customers extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'customers';

    protected $fillable = [
    	'company_name',
		'do_business',
		'founded_year',
		'phone',
		'fax',
		'email',
		'contact_name',
		'title',
		'contact_phone',
		'contact_fax',
		'contact_email',

    	'tax_number',
		'duns_number',
		'resale_numer',
		'address',
		'city',
		'state',
		'zip',
		'phone_1',
		'fax_1',
		'email_1',
		'phone_2',
		'fax_2',
		'email_2',
		'bank_name',
		'bank_address',
		'is_amount',
		'status',

		'trade_1_company_name',
		'trade_1_account_type',
		'trade_1_address',
		'trade_1_city',
		'trade_1_state',
		'trade_1_zip',
		'trade_1_phone',
		'trade_1_fax',
		'trade_1_email',

		'trade_2_company_name',
		'trade_2_account_type',
		'trade_2_address',
		'trade_2_city',
		'trade_2_state',
		'trade_2_zip',
		'trade_2_phone',
		'trade_2_fax',
		'trade_2_email',

		'trade_3_company_name',
		'trade_3_account_type',
		'trade_3_address',
		'trade_3_city',
		'trade_3_state',
		'trade_3_zip',
		'trade_3_phone',
		'trade_3_fax',
		'trade_3_email',

		'is_check_cod',
		'attachment'

    ];
}
