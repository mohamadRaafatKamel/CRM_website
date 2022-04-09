<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUpdateUserSrvSpTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('img')->after('username')->nullable();
        });

        Schema::table('specialty', function (Blueprint $table) {
            $table->string('image_app')->after('image')->nullable();
            $table->string('note')->after('image_app')->nullable();
        });

        Schema::table('service', function (Blueprint $table) {
            $table->unsignedBigInteger('specialty_id')->after('site')->nullable();
            $table->foreign('specialty_id')->references('id')->on('specialty')->onDelete('cascade');
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
            //
        });
    }
}
