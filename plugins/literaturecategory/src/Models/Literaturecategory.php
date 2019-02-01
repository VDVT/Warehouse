<?php

namespace Botble\Literaturecategory\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Botble\Literature\Models\Literature;

/**
 * Botble\Literaturecategory\Models\Literaturecategory
 *
 * @mixin \Eloquent
 */
class Literaturecategory extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'literaturecategory';

    protected $fillable = ['name', 'status'];

    /**
     * @return mixed
     * @author TrinhLe
     */
    public function literatures()
    {
        return $this->hasMany(Literature::class, 'tab_category_id');
    }
}
