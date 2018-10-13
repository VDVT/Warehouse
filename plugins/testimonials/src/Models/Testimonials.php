<?php

namespace Botble\Testimonials\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Industrials\Models\Industrials;

/**
 * Botble\Testimonials\Models\Testimonials
 *
 * @mixin \Eloquent
 */
class Testimonials extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'testimonials';

    protected $fillable = ['name', 'position', 'content', 'image', 'status'];

    public function industrials()
    {
        return $this->hasMany(Industrials::class);
    }
}
