<?php

namespace Botble\Coreexpertises\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Coreexpertises\Models\Coreexpertises
 *
 * @mixin \Eloquent
 */
class Coreexpertises extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'coreexpertises';

    protected $fillable = ['name', 'content', 'content_image', 'image', 'status', 'order', 'slug'];
}
