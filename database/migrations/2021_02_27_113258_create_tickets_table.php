<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->increments('id');  
            $table->string('persona', 180)->nullable()->default('NO REGISTRADO'); 
            // $table->string('persona', 180)->nullable();  
            $table->string('direccion', 180)->nullable();  
            $table->string('celular')->nullable();     
            $table->string('numero')->nullable();;   
            $table->string('descripcion', 100)->nullable();  
            $table->string('condicion', 100)->default('ENTREGADO')->nullable();  
            // $table->boolean('condicion')->default(1);   
            // $table->foreign('idfolio')->references('id')->on('folios'); 
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
        Schema::dropIfExists('tickets');
    }
}
