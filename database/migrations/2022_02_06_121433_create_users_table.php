<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('fname')->nullable();
            $table->string('lname')->nullable();
            $table->string('username')->nullable();
            $table->string('email')->unique()->nullable();
            $table->date('birth_date')->nullable();
            $table->string('phone')->unique()->nullable();
            $table->string('mobile')->nullable();
            $table->integer('type')->nullable()->default(1);
            $table->integer('verification')->nullable()->default(0);
            $table->integer('quick')->nullable();
            $table->integer('gender')->nullable();
            $table->string('title')->nullable();
            $table->string('nationality_code')->nullable();
            $table->foreign('nationality_code')->references('country_code')->on('countries')->onDelete('cascade');
            $table->unsignedBigInteger('governorate_id')->nullable();
            $table->foreign("governorate_id")->references('id')->on('governorates')->onDelete('cascade');
            // remove--
            $table->unsignedBigInteger('city_id')->nullable();
            $table->foreign("city_id")->references('id')->on('cities')->onDelete('cascade');
            // --------
            $table->string('address')->nullable();
            $table->string('adress2')->nullable();
            $table->string('code_zone_patient_id')->nullable();
            $table->string('account_owner_name')->nullable();
            $table->string('account_num')->nullable();
            $table->string('bank_name')->nullable();
            $table->string('identity_id')->nullable();
            $table->string('passport_id')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
