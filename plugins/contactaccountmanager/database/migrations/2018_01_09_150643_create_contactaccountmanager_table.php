<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateContactaccountmanagerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contactaccountmanager', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name', 100);
            $table->string('last_name', 100);
            $table->string('email', 100);
            $table->string('phone', 50)->nullable();
            $table->string('company_name', 100);
            $table->string('address', 150)->nullable();
            $table->string('city', 100)->nullable();
            $table->integer('state')->unsigned()->nullable();
            $table->string('zipcode', 50)->nullable();
            $table->string('project_square_footage', 255)->nullable();
            $table->string('message', 500)->nullable();
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
        Schema::dropIfExists('contactaccountmanager');
    }
}
