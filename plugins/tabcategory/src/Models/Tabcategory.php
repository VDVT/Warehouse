<?php

namespace Botble\Tabcategory\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Products\Models\ProductCategory;
use Botble\Groupproductcategory\Models\Groupproductcategory;

/**
 * Botble\Tabcategory\Models\Tabcategory
 *
 * @mixin \Eloquent
 */
class Tabcategory extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tabcategory';

    protected $fillable = [
    	'name',
        'group_id',
        'status'
    ];

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function categories()
    {
        return $this->hasMany(ProductCategory::class, 'tab_category_id');
    }

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function groupcategory()
    {
        return $this->belongsTo(Groupproductcategory::class, 'group_category_id');
    }
}
