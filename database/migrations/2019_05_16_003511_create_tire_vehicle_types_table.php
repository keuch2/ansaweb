<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTireVehicleTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tire_vehicle_types', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('tires_id')->unsigned();
            $table->integer('vehicle_types_id')->unsigned();
            $table->foreign('tires_id')->references('id')->on('tires');
            $table->foreign('vehicle_types_id')->references('id')->on('vehicle_types');

            $table->unique(['tires_id', 'vehicle_types_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tire_vehicle_types');
    }
}
