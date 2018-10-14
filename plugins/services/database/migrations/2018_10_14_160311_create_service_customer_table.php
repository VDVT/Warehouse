<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServiceCustomerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services_customer', function (Blueprint $table) {
            $table->increments('id');

            $table->string('tax_number', 120)->nullable();
            $table->string('duns_number')->nullable();
            $table->string('resale_numer')->nullable();

            $table->text('address')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('zip')->nullable();

            $table->string('phone_1')->nullable();
            $table->string('fax_1')->nullable();
            $table->string('email_1')->nullable();

            $table->string('phone_2')->nullable();
            $table->string('fax_2')->nullable();
            $table->string('email_2')->nullable();

            $table->string('bank_name')->nullable();
            $table->text('bank_address')->nullable();

            $table->boolean('is_amount')->default(false);

            $table->tinyInteger('status')->unsigned()->default(1);

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
        Schema::dropIfExists('services_customer');
    }
}
