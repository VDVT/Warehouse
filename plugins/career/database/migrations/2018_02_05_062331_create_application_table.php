<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApplicationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('application_forms', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name', 50)->nullable();
            $table->string('last_name', 50)->nullable();
            $table->string('email', 150)->nullable();
            $table->string('phone', 20)->nullable();
            $table->string('current_title', 120)->nullable();
            $table->string('current_company', 120)->nullable();
            $table->string('position_desired', 120)->nullable();
            $table->string('salary_desired', 120)->nullable();
            $table->string('city', 50)->nullable();
            $table->integer('state')->nullable();
            $table->string('zipcode', 20)->nullable();
            $table->string('find_us', 120)->nullable();
            $table->string('contact_me', 120)->nullable();
            $table->string('cv', 250)->nullable();
            $table->string('yourself', 500)->nullable();
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
        Schema::dropIfExists('application_forms');
    }
}
