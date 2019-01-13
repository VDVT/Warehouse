<?php

namespace Botble\Literature\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Literature\Models\Literature
 *
 * @mixin \Eloquent
 */
class Literature extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'literature';

    protected $fillable = ['name', 'description', 'file_id', 'file_name', 'file', 'status', 'image', 'number_order'];
}
