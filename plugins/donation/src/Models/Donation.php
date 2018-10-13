<?php

namespace Botble\Donation\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Donation\Models\Donation
 *
 * @mixin \Eloquent
 */
class Donation extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'donation';

    protected $fillable = ['event_date', 'date_donation', 'organize', 'tax', 'organize_type', 'organize_type_other', 'donation_address', 'city', 'state', 'zipcode', 'delivery_phone', 'contact_name', 'contact_phone', 'contact_email', 'event_name', 'number_of_attendeee', 'event_location', 'salary_desired', 'event_description', 'donation_request', 'promoted', 'opportunity', 'is_radio', 'radio_where', 'is_tv', 'tv_where', 'is_print', 'print_where', 'is_web', 'web_where', 'advertising'];
}
