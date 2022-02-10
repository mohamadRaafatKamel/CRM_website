<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNurseSheetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nurse_sheet', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('nurse_id');
            $table->foreign('nurse_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('shift_type')->nullable();
            $table->date('shift_date')->nullable();
            $table->string('investigation')->nullable();
            $table->string('oxygen')->nullable();
            $table->string('situation')->nullable();
            $table->string('issues')->nullable();
            $table->string('remarks')->nullable();
            $table->string('notes')->nullable();
            $table->string('add_devices')->nullable();
            $table->unsignedBigInteger('request_id');
            $table->foreign('request_id')->references('id')->on('request')->onDelete('cascade');
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
        Schema::dropIfExists('nurse_sheet');
    }
}
