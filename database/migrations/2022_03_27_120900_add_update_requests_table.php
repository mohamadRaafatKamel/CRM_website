<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUpdateRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request', function (Blueprint $table) {
            $table->dropColumn('schedule_date');
            $table->dropColumn('end_service_date');
        });

        Schema::table('request', function (Blueprint $table) {
            $table->date('schedule_date')->after('co')->nullable();
            $table->date('end_service_date')->after('co')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Requests', function (Blueprint $table) {
            //
        });
    }
}
