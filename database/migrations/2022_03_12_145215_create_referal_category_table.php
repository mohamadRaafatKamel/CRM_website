<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReferralCategoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('referral_category', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->unsignedBigInteger('admin_id')->nullable();
            $table->foreign('admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->timestamps();
        });

        Schema::table('users_referral', function (Blueprint $table) {
            $table->string('referral')->after('referral_id')->nullable();
            $table->string('cat_id')->after('referral')->nullable();
            $table->foreign('cat_id')->references('id')->on('referral_category')->onDelete('cascade');
            $table->dropForeign(['referral_id']);
            $table->dropColumn('referral_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('referal_category');
    }
}
