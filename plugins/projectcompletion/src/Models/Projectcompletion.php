<?php

namespace Botble\Projectcompletion\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Projectcompletion\Models\Projectcompletion
 *
 * @mixin \Eloquent
 */
class Projectcompletion extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'projectcompletion';

    protected $fillable = ['name', 'foreman', 'date', 'job_number', 'company_name', 'address', 'work', 'comment'];
}
