<?php

namespace Botble\Contactaccountmanager\Models;

use Eloquent;

class State extends Eloquent
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'states';

    protected $fillable = ['name', 'code', 'ordering'];
}
