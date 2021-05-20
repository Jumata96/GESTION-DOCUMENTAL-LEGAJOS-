<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TrabajadorController extends Controller
{
    public function index(){
        //dd('ingreso');

        return view('forms.general.general');
    }
    public function filiacionEidentidad(){
        //dd('ingreso');

        return view('forms.filiacion.filiacionEidentidad');
    }
    public function situacionAcademica(){
        //dd('ingreso');

        return view('forms.situacionAcademica.general');
    }
}
