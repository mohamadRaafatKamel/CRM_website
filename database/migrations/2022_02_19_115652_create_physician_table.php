<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhysicianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('physician', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('description')->nullable();
            $table->unsignedBigInteger('admin_id');
            $table->foreign('admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->timestamps();
        });
        Schema::table('request', function (Blueprint $table) {
            $table->dropColumn('physician');
        });
        Schema::table('request', function (Blueprint $table) {
            $table->unsignedBigInteger('physician')->after('package_id')->nullable();
            $table->foreign('physician')->references('id')->on('physician')->onDelete('cascade');
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
            $table->dropForeign(['physician']);
            $table->dropColumn('physician');
        });
        Schema::dropIfExists('physician');
    }
}
