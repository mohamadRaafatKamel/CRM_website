<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColToRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('request', function (Blueprint $table) {
            $table->string('co')->after('doc_note')->nullable();
            $table->string('history')->after('doc_note')->nullable();
            $table->string('diagnose')->after('doc_note')->nullable();
            $table->date('date_in')->after('doc_note')->nullable();
            $table->date('date_out')->after('doc_note')->nullable();
            $table->string('Long')->after('doc_note')->nullable();
            $table->string('reason_out')->after('doc_note')->nullable();
            $table->string('come_from')->after('doc_note')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('request', function (Blueprint $table) {
            //
        });
    }
}
