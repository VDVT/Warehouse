<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->string('slug', 120);
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->text('description')->nullable();
            $table->integer('availability', 120)->unsigned()->default(0);
            $table->string('wholesale_price_a', 50)->nullable();
            $table->string('wholesale_price_b', 50)->nullable();
            $table->string('retail_price', 50)->nullable();
            $table->string('list_price', 50)->nullable();
            $table->string('weight', 50)->nullable();
            $table->string('size', 50)->nullable();
            $table->string('condition', 20)->nullable();
            $table->string('length', 50)->nullable();
            $table->string('color', 50)->nullable();
            $table->string('width', 50)->nullable();
            $table->string('thickness', 120)->nullable();
            $table->string('height', 120)->nullable();
            $table->string('face', 120)->nullable();
            $table->string('capacity', 120)->nullable();
            $table->string('depth', 120)->nullable();
            $table->string('connector', 120)->nullable();
            $table->string('step', 120)->nullable();
            $table->string('baseplate', 120)->nullable();

            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });

        Schema::create('productsolutions_product_category', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('productsolutions_id')->unsigned();
            $table->integer('product_category_id')->unsigned();
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
        Schema::dropIfExists('products');
        Schema::dropIfExists('product_solution_product');
    }
}
