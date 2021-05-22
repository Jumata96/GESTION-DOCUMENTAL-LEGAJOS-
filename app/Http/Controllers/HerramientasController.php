<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use Auth;
use DB;
class HerramientasController extends Controller
{
    //
    public function listarTiposDocumentos()
    {
        // dd('llego');
        $documentos = DB::table('documento') 
            ->where('estado',1)
            ->get();

        return ($documentos);
    }

}
