<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLogInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_info', function (Blueprint $table) {
            $table->id();
            $table->string('old_val')->nullable();
            $table->string('new_val')->nullable();
            $table->string('notes')->nullable();
            $table->unsignedBigInteger('log_id');
            $table->foreign('log_id')->references('id')->on('log')->onDelete('cascade');
            $table->unsignedBigInteger('admin_id');
            $table->foreign('admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('log_info');
    }
}
