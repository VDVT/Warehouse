<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->string('slug', 120);
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->text('gallery')->nullable();
            $table->string('description', 255)->nullable();
            $table->text('content');
            $table->string('image', 255)->nullable();
            $table->string('category', 255)->nullable();
            $table->string('client', 255)->nullable();
            $table->string('date', 255)->nullable();
            $table->string('link', 255)->nullable();
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
        Schema::dropIfExists('projects');
    }
}
