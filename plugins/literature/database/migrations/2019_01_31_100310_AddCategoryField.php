<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCategoryField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasColumn('literature', 'tab_category_id')) {
            Schema::table('literature', function (Blueprint $table) {
                $table->integer('tab_category_id')->nullable();
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
        if (Schema::hasColumn('literature', 'tab_category_id')) {
            Schema::table('literature', function (Blueprint $table) {
                $table->dropColumn('tab_category_id');
            });
        }
    }
}
