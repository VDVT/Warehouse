<?php

namespace Botble\Projects\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Projects\Models\Projects
 *
 * @mixin \Eloquent
 */
class Projects extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'projects';

    protected $fillable = ['name', 'slug', 'description', 'status', 'gallery', 'content', 'image', 'category', 'client', 'date', 'link'];

    public function industrials()
    {
        return $this->belongsToMany(Industrials::class, 'industrial_project');
    }
}
