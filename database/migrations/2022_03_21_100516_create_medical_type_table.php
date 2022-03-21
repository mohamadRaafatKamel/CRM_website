<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMedicalTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('medical_type', function (Blueprint $table) {
            $table->id();
            $table->string('name_ar');
            $table->string('name_en')->unique();
            $table->unsignedBigInteger('price_list_id')->nullable();
            $table->foreign('price_list_id')->references('id')->on('price_list')->onDelete('cascade');
            $table->unsignedBigInteger('admin_id')->nullable();
            $table->foreign('admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->integer('disabled')->default(0);
            $table->integer('status')->default(0);
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
        Schema::dropIfExists('medical_type');
    }
}
