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
            $table->string('birth_date')->nullable();
            $table->string('phone')->unique();
            $table->string('mobile')->nullable();
            $table->string('type')->nullable();
            $table->string('verification')->nullable();
            $table->string('gender')->nullable();
            $table->string('title')->nullable();
            // $table->string('nationality_code')->references('code')->on('nationality')->nullable();
            // $table->foreign("governorate_id")->references('id')->on('governorate')->nullable();
            // $table->foreign("city_id")->references('id')->on('city')->nullable();
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
