<?php

namespace Botble\Career\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Application\Models\Application
 *
 * @mixin \Eloquent
 */
class Application extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'application_forms';

    protected $fillable = ['first_name', 'last_name', 'email', 'phone', 'current_title', 'current_company', 'position_desired', 'salary_desired', 'city', 'state', 'zipcode', 'find_us', 'contact_me', 'cv', 'yourself'];
}
