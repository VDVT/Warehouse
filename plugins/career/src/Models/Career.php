<?php

namespace Botble\Career\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Career\Models\Career
 *
 * @mixin \Eloquent
 */
class Career extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'career';

    protected $fillable = ['name', 'image', 'status', 'order'];
}
