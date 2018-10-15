<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('company_name')->nullable();
            $table->string('do_business')->nullable();
            $table->integer('founded_year')->nullable();
            $table->string('phone')->nullable();
            $table->string('fax')->nullable();
            $table->string('email')->nullable();
            $table->string('contact_name')->nullable();
            $table->string('title')->nullable();
            $table->string('contact_phone')->nullable();
            $table->string('contact_fax')->nullable();
            $table->string('contact_email')->nullable();

            $table->string('tax_number')->nullable();
            $table->string('duns_number')->nullable();
            $table->string('resale_numer')->nullable();
            $table->text('address')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('zip')->nullable();
            $table->string('phone_1')->nullable();
            $table->string('fax_1')->nullable();
            $table->string('email_1')->nullable();
            $table->string('phone_2')->nullable();
            $table->string('fax_2')->nullable();
            $table->string('email_2')->nullable();
            $table->string('bank_name')->nullable();
            $table->text('bank_address')->nullable();
            $table->boolean('is_amount')->default(false);


            $table->string('trade_1_company_name')->nullable();
            $table->string('trade_1_account_type')->nullable();
            $table->string('trade_1_address')->nullable();
            $table->string('trade_1_city')->nullable();
            $table->string('trade_1_state')->nullable();
            $table->string('trade_1_zip')->nullable();
            $table->string('trade_1_phone')->nullable();
            $table->string('trade_1_fax')->nullable();
            $table->string('trade_1_email')->nullable();

            $table->string('trade_2_company_name')->nullable();
            $table->string('trade_2_account_type')->nullable();
            $table->string('trade_2_address')->nullable();
            $table->string('trade_2_city')->nullable();
            $table->string('trade_2_state')->nullable();
            $table->string('trade_2_zip')->nullable();
            $table->string('trade_2_phone')->nullable();
            $table->string('trade_2_fax')->nullable();
            $table->string('trade_2_email')->nullable();

            $table->string('trade_3_company_name')->nullable();
            $table->string('trade_3_account_type')->nullable();
            $table->string('trade_3_address')->nullable();
            $table->string('trade_3_city')->nullable();
            $table->string('trade_3_state')->nullable();
            $table->string('trade_3_zip')->nullable();
            $table->string('trade_3_phone')->nullable();
            $table->string('trade_3_fax')->nullable();
            $table->string('trade_3_email')->nullable();

            $table->boolean('is_check_cod')->default(false);
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
        Schema::dropIfExists('customers');
    }
}
