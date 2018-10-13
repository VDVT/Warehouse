<?php

namespace Botble\Productsolutions\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Products\Models\ProductCategory;
use Botble\Industrials\Models\Industrials;

/**
 * Botble\Productsolutions\Models\Productsolutions
 *
 * @mixin \Eloquent
 */
class Productsolutions extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'productsolutions';

    protected $hidden = ['deleted_at'];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $fillable = ['name', 'slug', 'description', 'performance', 'order', 'status', 'image'];

    // public function products()
    // {
    //     return $this->belongsToMany(Products::class, 'product_solution_product')->withTimestamps();
    // }
    public function product_categories()
    {
        return $this->belongsToMany(ProductCategory::class, 'productsolutions_product_category')->withTimestamps();
    }
    public function industrials()
    {
        return $this->belongsToMany(Industrials::class, 'industrial_product_solution');
    }
}
