<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateIndustrialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('industrials', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->string('slug', 120);
            $table->string('icon', 120)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->text('content');
            $table->tinyInteger('testimonials_id')->unsigned();
            $table->string('image', 255)->nullable();
            $table->integer('order')->unsigned()->default(0);
            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });

        Schema::create('industrial_project', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('industrials_id')->unsigned();
            $table->integer('projects_id')->unsigned();
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('industrial_product_solution', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('industrials_id')->unsigned();
            $table->integer('productsolutions_id')->unsigned();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('industrials');
        Schema::dropIfExists('industrial_project');
        Schema::dropIfExists('industrial_product_solution');
    }
}
