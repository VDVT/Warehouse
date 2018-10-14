<?php

namespace Botble\Services\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Services\Models\Services
 *
 * @mixin \Eloquent
 */
class Vendor extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'services';

    protected $fillable = ['name'];
}
