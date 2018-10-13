<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLiteratureTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('literature', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->string('description', 500)->nullable();
            $table->integer('file_id')->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('file', 255)->nullable();
            $table->string('image', 255)->nullable();
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
        Schema::dropIfExists('literature');
    }
}
