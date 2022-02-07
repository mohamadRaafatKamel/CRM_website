<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSpecialtyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specialty', function (Blueprint $table) {
            $table->id();
            $table->string('name_ar');
            $table->string('name_en')->unique();
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->foreign('parent_id')->references('id')->on('specialty')->onDelete('cascade');
            $table->string('image')->nullable();
            $table->unsignedBigInteger('admin_id');
            $table->foreign('admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->binary('disabled')->default(0);
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
        Schema::dropIfExists('specialty');
    }
}