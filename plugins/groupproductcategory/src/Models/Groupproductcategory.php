<?php

namespace Botble\Groupproductcategory\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Products\Models\ProductCategory;
use Botble\Tabcategory\Models\Tabcategory;

/**
 * Botble\Groupproductcategory\Models\Groupproductcategory
 *
 * @mixin \Eloquent
 */
class Groupproductcategory extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'groupproductcategory';

    protected $fillable = ['name', 'status'];

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function categories()
    {
        return $this->hasMany(ProductCategory::class, 'group_category_id');
    }

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function tabs()
    {
        return $this->hasMany(Tabcategory::class, 'group_id');
    }
}
