<?php

namespace Botble\Tabcategory\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Tabcategory\Models\Tabcategory
 *
 * @mixin \Eloquent
 */
class Tabcategory extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tabcategory';

    protected $fillable = ['name'];
}
