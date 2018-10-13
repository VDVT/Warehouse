<?php

namespace Botble\Banner\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Banner\Models\Banner
 *
 * @mixin \Eloquent
 */
class Banner extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'banner';

    protected $fillable = ['name', 'link', 'button_text', 'image', 'order', 'status'];
}
