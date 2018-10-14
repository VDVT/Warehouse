<?php

namespace Botble\CustomerServices\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\CustomerServices\Models\CustomerServices
 *
 * @mixin \Eloquent
 */
class CustomerServices extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'customer-services';

    protected $fillable = ['name'];
}
