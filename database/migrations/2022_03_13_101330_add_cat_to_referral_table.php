<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCatToReferralTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users_referral', function (Blueprint $table) {
            $table->string('referral')->after('referral_id')->nullable();
            // $table->dropForeign(['referral_id']);
            // $table->dropColumn('referral_id');
        });

        Schema::table('referral', function (Blueprint $table) {
            $table->unsignedBigInteger('cat_id')->after('name_en')->nullable();
            $table->foreign('cat_id')->references('id')->on('referal_cat')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users_referral', function (Blueprint $table) {
            //
        });
    }
}
