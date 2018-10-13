<?php

namespace Botble\Contactaccountmanager\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Contactaccountmanager\Models\Contactaccountmanager
 *
 * @mixin \Eloquent
 */
class Contactaccountmanager extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'contactaccountmanager';

    protected $fillable = ['first_name', 'last_name', 'email', 'phone', 'company_name', 'address', 'city', 'state', 'zipcode', 'project_square_footage', 'message', 'find_us', 'find_us_other', 'title'];
}
