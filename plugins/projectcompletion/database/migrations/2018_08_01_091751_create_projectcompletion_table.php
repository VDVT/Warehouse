<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProjectcompletionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projectcompletion', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120)->nullable();
            $table->string('foreman', 120)->nullable();
            $table->string('date', 120)->nullable();
            $table->string('job_number', 50)->nullable();
            $table->string('company_name', 120)->nullable();
            $table->string('address', 120)->nullable();
            $table->string('work', 500)->nullable();
            $table->string('comment', 500)->nullable();

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
        Schema::dropIfExists('projectcompletion');
    }
}
