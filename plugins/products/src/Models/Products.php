<?php

namespace Botble\Products\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Products\Models\Products
 *
 * @mixin \Eloquent
 */
class Products extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'products';

    protected $hidden = ['deleted_at'];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $fillable = ['name', 'slug', 'description', 'availability', 'wholesale_price_a', 'wholesale_price_b', 'retail_price', 'list_price', 'weight', 'size', 'condition', 'length', 'color', 'width', 'thickness', 'height', 'face', 'capacity', 'depth', 'connector', 'step', 'baseplate'];

    // public function product_solutions()
    // {
    //     return $this->belongsToMany(Productsolutions::class, 'product_solution_product');
    // }

    public function product_categories()
    {
        return $this->belongsToMany(ProductCategory::class, 'product_product_category')->withTimestamps();
    }
}
