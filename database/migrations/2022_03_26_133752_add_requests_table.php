<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request', function (Blueprint $table) {
            $table->dropColumn('Feedback');
        });

        Schema::table('request', function (Blueprint $table) {
            $table->string('feedback')->after('co')->nullable();
            $table->string('reason_cancel')->after('co')->nullable();
            $table->string('schedule_date')->after('co')->nullable();
            $table->string('end_service_date')->after('co')->nullable();

            $table->string('nurse_evaluation')->after('end_service_date')->nullable();
            $table->string('satisfaction')->after('nurse_evaluation')->nullable();
            $table->string('nomination_rate')->after('satisfaction')->nullable();
            $table->string('speed_services_overall')->after('nomination_rate')->nullable();
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
