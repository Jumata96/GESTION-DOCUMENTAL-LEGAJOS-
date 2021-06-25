<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    //
    protected $fillable = ['persona','direccion','celular','numero','descripcion','condicion'];

    /* public function folios(){ 
        return $this->hasMany('App\Ticket');

    } */

}
