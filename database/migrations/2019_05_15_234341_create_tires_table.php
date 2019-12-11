<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTiresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tires', function (Blueprint $table) {
            $table->increments('id');

            //$fillable = ['tire_code', 'tire_name', 'tire_type', 'brand_id', 'radius_id', 'witdh_id', 'profile_id', 'description',
            //    'price', 'discount_rate', 'final_price', 'state', 'featured', 'photo'];

            $table->string('tire_code')->nullable();
            $table->string('tire_name');

            $table->enum('tire_type', ['RADIAL', 'CONVENCIONAL'])->nullable();

            $table->integer('brand_id')->unsigned();
            $table->foreign('brand_id')->references('id')->on('brands');

            $table->integer('radius_id')->unsigned();
            $table->foreign('radius_id')->references('id')->on('radiuses');

            $table->integer('width_id')->unsigned();
            $table->foreign('width_id')->references('id')->on('widths');

            $table->integer('profile_id')->unsigned();
            $table->foreign('profile_id')->references('id')->on('profiles');

            $table->text('description')->nullable();
            $table->float('price')->nullable();
            $table->float('discount_rate')->nullable()->default(0);
            $table->float('final_price')->nullable();

            $table->enum('state', ['ACTIVO', 'INACTIVO'])->default('ACTIVO');
            $table->boolean('featured')->default(true);

            $table->boolean('show_price')->default(true);

            $table->integer('visit_counter')->nullable();

            $table->string('photo')->nullable();

            $table->softDeletes();
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
        Schema::dropIfExists('tires');
    }
}
