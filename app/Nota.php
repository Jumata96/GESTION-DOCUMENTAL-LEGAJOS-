<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Schema;

class Nota extends Model
{
    Schema::create('notas', function (Blueprint $table) {
        $table->bigIncrements('id');
        $table->string('nombre');
        $table->text('descripcion');
        $table->bigInteger('user_id')->unsigned();
        $table->foreign('user_id')->references('id')->on('users');
        $table->timestamps();
    });
}
