<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LegajoController extends Controller
{
    public function index(){
        //dd('ingreso');

        return view('forms.general.legajo');
    }
}