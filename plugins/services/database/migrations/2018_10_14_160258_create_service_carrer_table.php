<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServiceCarrerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services_carrer', function (Blueprint $table) {
            $table->increments('id');
            
            $table->string('company_name', 120)->nullable();
            $table->string('do_business')->nullable();
            $table->integer('founded_year')->nullable();
            $table->string('phone', 120)->nullable();
            $table->string('fax', 120)->nullable();
            $table->string('email', 120)->nullable();
            $table->string('contact_name', 120)->nullable();
            $table->string('title', 120)->nullable();
            $table->string('contact_phone', 120)->nullable();
            $table->string('contact_fax', 120)->nullable();
            $table->string('contact_email', 120)->nullable();
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
        Schema::dropIfExists('services_carrer');
    }
}
