<?php

namespace Botble\Industrials\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Projects\Models\Projects;
use Botble\Productsolutions\Models\Productsolutions;
use Botble\Testimonials\Models\Testimonials;

/**
 * Botble\Industrials\Models\Industrials
 *
 * @mixin \Eloquent
 */
class Industrials extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'industrials';

    protected $fillable = ['name', 'slug', 'content', 'image', 'testimonials_id', 'status', 'order', 'icon'];

    public function projects()
    {
        return $this->belongsToMany(Projects::class, 'industrial_project')->withTimestamps();
    }
    public function product_solutions()
    {
        return $this->belongsToMany(Productsolutions::class, 'industrial_product_solution')->withTimestamps();
    }

    public function testimonial()
    {
        return $this->belongsTo(Testimonials::class, 'testimonials_id');
    }
}
