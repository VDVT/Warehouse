<?php

namespace Botble\Faq\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Faq\Models\Faq
 *
 * @mixin \Eloquent
 */
class Faq extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'faq';

    protected $fillable = ['name', 'content', 'order', 'status'];
}
