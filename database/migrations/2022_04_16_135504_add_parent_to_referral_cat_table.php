<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddParentToReferralCatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('referal_cat', function (Blueprint $table) {
            $table->unsignedBigInteger('parent')->after('name')->nullable();
            $table->foreign('parent')->references('id')->on('referal_cat')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('referal_cat', function (Blueprint $table) {
            //
        });
    }
}
