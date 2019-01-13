<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOrder extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasColumn('literature', 'number_order')) {
            Schema::table('literature', function (Blueprint $table) {
                $table->integer('number_order')->default(0);
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('literature', 'number_order')) {
            Schema::table('literature', function (Blueprint $table) {
                $table->dropColumn('number_order');
            });
        }
    }
}
