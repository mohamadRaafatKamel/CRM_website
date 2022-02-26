<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAddressToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('land_mark')->after('adress2')->nullable();
            $table->string('floor')->after('adress2')->nullable();
            $table->string('apartment')->after('adress2')->nullable();
            $table->integer('whatapp')->after('adress2')->nullable();
            $table->integer('whatapp2')->after('adress2')->nullable();
            $table->string('age')->after('adress2')->nullable();
            $table->string('location')->after('adress2')->nullable();
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
