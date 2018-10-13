<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateContactAccountManagerColumns extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('contactaccountmanager', function (Blueprint $table) {
            $table->string('find_us', 30)->nullable();
            $table->text('find_us_other')->nullable();
            $table->string('title', 120)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('contactaccountmanager', function (Blueprint $table) {
            $table->dropColumn(['find_us', 'find_us_other', 'title']);
        });
    }
}
