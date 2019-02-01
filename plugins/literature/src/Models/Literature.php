<?php

namespace Botble\Literature\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Literaturecategory\Models\Literaturecategory;

/**
 * Botble\Literature\Models\Literature
 *
 * @mixin \Eloquent
 */
class Literature extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'literature';

    protected $fillable = ['name', 'description', 'file_id', 'file_name', 'file', 'status', 'image', 'number_order', 'tab_category_id'];

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function tabcategory()
    {
        return $this->belongsTo(Literaturecategory::class, 'tab_category_id');
    }
}
