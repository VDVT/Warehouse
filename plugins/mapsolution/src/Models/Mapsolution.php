<?php

namespace Botble\Mapsolution\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Mapsolution\Models\Mapsolution
 *
 * @mixin \Eloquent
 */
class Mapsolution extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'mapsolution';

    protected $fillable = [
    	'name',
    	'description',
		'latitude',
		'longitude',
		'status',
		'image'
    ];
}
