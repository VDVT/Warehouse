<?php

namespace Botble\Tabcategory\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Products\Models\ProductCategory;

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
}
