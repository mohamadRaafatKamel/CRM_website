<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateForPlTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request', function (Blueprint $table) {
            $table->unsignedBigInteger('price_list_id')->after('real_cost')->nullable();
            $table->foreign('price_list_id')->references('id')->on('price_list')->onDelete('cascade');
            $table->unsignedBigInteger('medical_type_id')->after('real_cost')->nullable();
            $table->foreign('medical_type_id')->references('id')->on('medical_type')->onDelete('cascade');
        });

        Schema::table('company_info', function (Blueprint $table) {
            $table->unsignedBigInteger('price_list_id')->after('description')->nullable();
            $table->foreign('price_list_id')->references('id')->on('price_list')->onDelete('cascade');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
