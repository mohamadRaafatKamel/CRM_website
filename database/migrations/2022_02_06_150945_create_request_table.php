<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('request', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('doctor_id')->nullable();
            $table->foreign('doctor_id')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('nurse_id')->nullable();
            $table->foreign('nurse_id')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('driver_id')->nullable();
            $table->foreign('driver_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('fullname')->nullable();
            $table->string('name_caregiver')->nullable();
            $table->integer('gender')->nullable();
            $table->string('location')->nullable();
            $table->unsignedBigInteger('governorate_id')->nullable();
            $table->foreign("governorate_id")->references('id')->on('governorates')->onDelete('cascade');
            $table->unsignedBigInteger('city_id')->nullable();
            $table->foreign("city_id")->references('id')->on('cities')->onDelete('cascade');
            $table->string('adress')->nullable();
            $table->string('land_mark')->nullable();
            $table->string('floor')->nullable();
            $table->string('apartment')->nullable();
            $table->string('phone')->nullable();
            $table->string('phone2')->nullable();
            $table->integer('whatapp')->nullable();
            $table->integer('whatapp2')->nullable();
            $table->string('whatsApp_group')->nullable();
            $table->string('age')->nullable();
            $table->string('physician')->nullable();
            $table->integer('type')->nullable();
            $table->integer('covid19')->nullable();
            $table->unsignedBigInteger('referral_id')->nullable();
            $table->foreign('referral_id')->references('id')->on('referral')->onDelete('cascade');
            $table->unsignedBigInteger('corporate_id')->nullable();
            $table->foreign('corporate_id')->references('id')->on('company_info')->onDelete('cascade');
            $table->unsignedBigInteger('specialty_id')->nullable();
            $table->foreign('specialty_id')->references('id')->on('specialty')->onDelete('cascade');
            $table->unsignedBigInteger('service_id')->nullable();
            $table->foreign('service_id')->references('id')->on('service')->onDelete('cascade');
            $table->unsignedBigInteger('package_id')->nullable();
            $table->foreign('package_id')->references('id')->on('package')->onDelete('cascade');
            $table->date('visit_time_day')->nullable();
            $table->time('visit_time_from')->nullable();
            $table->time('visit_time_to')->nullable();
            $table->integer('expectation_cost')->nullable();
            $table->integer('real_cost')->nullable();
            $table->string('bill_serial')->nullable();
            $table->integer('pay_or_not')->nullable();
            $table->string('code_zone_patient_id')->nullable();
            $table->string('bed_number')->nullable();
            $table->string('symptoms')->nullable();
            $table->string('doc_note')->nullable();
            $table->string('Feedback')->nullable();
            $table->integer('doc_rate')->nullable();
            $table->integer('user_rate')->nullable();
            $table->unsignedBigInteger('opd_admin_id')->nullable();
            $table->foreign('opd_admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->unsignedBigInteger('cc_admin_id')->nullable();
            $table->foreign('cc_admin_id')->references('id')->on('admin')->onDelete('cascade');
            $table->unsignedBigInteger('admin_id_in_out')->nullable();
            $table->foreign('admin_id_in_out')->references('id')->on('admin')->onDelete('cascade');
            $table->integer('status_doc')->nullable()->default(1);
            $table->integer('status_user')->nullable()->default(1);
            $table->integer('status_cc')->nullable()->default(1);
            $table->integer('status_in_out')->nullable()->default(1);
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
        Schema::dropIfExists('request');
    }
}
