<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColsToTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('service', function (Blueprint $table) {
            $table->double('price', 8, 2)->after('description')->nullable();
        });

        Schema::table('package', function (Blueprint $table) {
            $table->double('price', 8, 2)->after('description')->nullable();
        });

        Schema::table('request_action', function (Blueprint $table) {
            $table->double('price', 8, 2)->after('action_date')->nullable();
        });

        Schema::table('request', function (Blueprint $table) {
            $table->string('created_by')->after('status_in_out')->nullable();
            $table->unsignedBigInteger('opd2_admin_id')->after('opd_admin_id')->nullable();
            $table->foreign('opd2_admin_id')->references('id')->on('admin')->onDelete('cascade');
        });

        Schema::table('specialty', function (Blueprint $table) {
            $table->integer('slot_time')->after('name_en')->nullable(); // number by min
            $table->integer('over_slot')->after('slot_time')->nullable();
        });

        Schema::table('doctor_info', function (Blueprint $table) {
            $table->integer('slot_time')->after('specialty')->nullable(); // number by min
            $table->integer('over_slot')->after('slot_time')->nullable();
            $table->integer('degree')->after('over_slot')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('service', function (Blueprint $table) {
            //
        });
    }
}
