<?php

namespace Botble\Products\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Productsolutions\Models\Productsolutions;
use Botble\Tabcategory\Models\Tabcategory;

class ProductCategory extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'product_categories';

    protected $primaryKey = 'id';

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = ['deleted_at'];

    /**
     * The date fields for the model.clear
     *
     * @var array
     */
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'parent_id',
        'slug',
        // 'icon',
        // 'featured',
        'order',
        // 'is_default',
        'status',
        // 'user_id',
        'image',
        'image1',
        'image2',
        'tab_category_id'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     * @author Sang Nguyen
     */
    public function products()
    {
        return $this->belongsToMany(Products::class, 'product_product_category');
    }

    /**
     * @return mixed
     * @author Sang Nguyen
     */
    public function parent()
    {
        return $this->belongsTo(ProductCategory::class, 'parent_id');
    }

    /**
     * @return mixed
     * @author Sang Nguyen
     */
    public function children()
    {
        return $this->hasMany(ProductCategory::class, 'parent_id');
    }

    public function product_solutions()
    {
        return $this->belongsToMany(Productsolutions::class, 'productsolutions_product_category');
    }

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function tabcategory()
    {
        return $this->belongsTo(Tabcategory::class, 'tab_category_id');
    }
}
