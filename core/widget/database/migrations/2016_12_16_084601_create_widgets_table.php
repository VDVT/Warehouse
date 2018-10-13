<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWidgetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('widget_areas');
        Schema::dropIfExists('widgets');

        Schema::create('widgets', function (Blueprint $table) {
            $table->increments('id');
            $table->string('widget_id', 120);
            $table->string('sidebar_id', 120);
            $table->string('theme', 120);
            $table->tinyInteger('position')->unsigned()->default(0);
            $table->text('data')->nullable();
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
        Schema::dropIfExists('widgets');
    }
}
