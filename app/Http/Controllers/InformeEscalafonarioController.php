<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;

class InformeEscalafonarioController extends Controller
{
    //
    public function escalafonario(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          }  
         return view('forms.escalafonario.general');
    }
    public function generarReporte(Request $request){

    //   "motivoInformeCrear" => "reporte general"
    //   "numeroExpedienteCrear" => "2019-06"
    //   "nombreDelSolicitante" => "juan"
    //   "anotacionesInformeCrear" => "nota 02"
    //   "filiacion" => "on"
    //   "nivelEducativo" => "on"
    //   "capacitacion" => "on"
    //   "contratos" => "on"
    //   "renuncias" => "on"
    //   "desplazamiento" => "on"
    //   "licencias" => "on"
    //   "vacaciones" => "on"
    //   "ascenso" => "on"
    //   "remuneracion" => "on"
    //   "remuneracionFamiliar" => "on"
    //   "evaluaciones" => "on"
    //   "merito" => "on"
    //   "Demerito" => "on"
    //   "otros" => "on"
        dd($request->filiacion,$request);
         $rules = array(        
                'motivoInformeCrear'                  => 'required', 
                'numeroExpedienteCrear'                  => 'required', 
                'nombreDelSolicitante'                   => 'required',       
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }  
        // $request->filiacion


    }
}
