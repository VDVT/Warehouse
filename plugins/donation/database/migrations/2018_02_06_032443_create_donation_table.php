<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDonationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('donation', function (Blueprint $table) {
            $table->increments('id');

            $table->string('event_date', 120)->nullable();
            $table->string('date_donation', 120)->nullable();
            $table->string('organize', 150)->nullable();
            $table->string('tax', 120)->nullable();
            $table->string('organize_type', 50)->nullable();
            $table->string('organize_type_other', 150)->nullable();
            $table->string('donation_address', 150)->nullable();
            $table->string('city', 50)->nullable();
            $table->integer('state')->nullable();
            $table->string('zipcode', 20)->nullable();
            $table->string('delivery_phone', 20)->nullable();
            $table->string('contact_name', 150)->nullable();
            $table->string('contact_phone', 20)->nullable();
            $table->string('contact_email', 150)->nullable();
            $table->string('event_name', 120)->nullable();
            $table->string('number_of_attendeee', 120)->nullable();
            $table->string('event_location', 250)->nullable();
            $table->string('salary_desired', 120)->nullable();
            $table->string('event_description', 500)->nullable();
            $table->string('donation_request', 500)->nullable();
            $table->string('promoted', 500)->nullable();
            $table->string('opportunity', 250)->nullable();
            $table->boolean('is_radio')->default(0);
            $table->string('radio_where', 150)->nullable();
            $table->boolean('is_tv')->default(0);
            $table->string('tv_where', 150)->nullable();
            $table->boolean('is_print')->default(0);
            $table->string('print_where', 150)->nullable();
            $table->boolean('is_web')->default(0);
            $table->string('web_where', 150)->nullable();
            $table->string('advertising', 500)->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('donation');
    }
}
