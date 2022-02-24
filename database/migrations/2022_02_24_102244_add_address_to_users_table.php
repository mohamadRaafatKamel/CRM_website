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
            $table->string('land_mark')->nullable();
            $table->string('floor')->nullable();
            $table->string('apartment')->nullable();
            $table->integer('whatapp')->nullable();
            $table->integer('whatapp2')->nullable();
            $table->string('age')->nullable();
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
            $table->dropColumn('land_mark');
            $table->dropColumn('floor');
            $table->dropColumn('apartment');
            $table->dropColumn('whatapp');
            $table->dropColumn('whatapp2');
            $table->dropColumn('age');
        });
    }
}
