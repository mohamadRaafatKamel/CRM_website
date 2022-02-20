<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveCityKeyColumsFromUsersAndRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Users
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign(['city_id']);
            $table->dropColumn('city_id');
        });
        Schema::table('users', function (Blueprint $table) {
            $table->string('city_id')->after('governorate_id')->nullable();
        });
        // Request
        Schema::table('request', function (Blueprint $table) {
            $table->dropForeign(['city_id']);
            $table->dropColumn('city_id');
        });
        Schema::table('request', function (Blueprint $table) {
            $table->string('city_id')->after('governorate_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('city_id');
        });
        Schema::table('request', function (Blueprint $table) {
            $table->dropColumn('city_id');
        });
    }
}
