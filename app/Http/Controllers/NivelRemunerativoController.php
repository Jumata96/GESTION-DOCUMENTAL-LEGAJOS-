<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;use Validator;
use Auth;
use DB;

class NivelRemunerativoController extends Controller
{
    public function index()
    {
         return view('forms.nivelRemunerativo.index');
    }
    public function listar()
    {
        // dd('llego');
        $situacion_laboral = DB::table('nivel_remunerativo')->get(); 
        return ($situacion_laboral);
    }
    public function  agregarNivelRemunerativo(Request $request){ 
        
            $rules = array(       
                'nombreNivelRemunerativo'                => 'required|max:240', 
                'desCortaNivelRemunerativo'                => 'required|max:6',  
                'detalleNivelRenumerativo'                => 'required|max:550',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }    
                     DB::table('nivel_remunerativo')
                    ->insert([ 
                        'nombre'                =>$request->nombreNivelRemunerativo, 
                        'desc_corta'            =>$request->desCortaNivelRemunerativo, 
                        'id_MEF'                =>$request->idNivelRemunerativo, 
                        'id_PLH'                =>$request->idNivelRemunerativoPLH,  
                        'descripcion'           =>$request->detalleNivelRenumerativo,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarNivelRemunerativo(Request $request){ 
        // dd($request);
        DB::table('nivel_remunerativo') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarNivelRemunerativo(Request $request){ 
        // dd($request);
        DB::table('nivel_remunerativo') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarNivelRemunerativo(Request $request){ 
        // dd($request);
        DB::table('nivel_remunerativo') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarNivelRemunerativo(Request $request){ 
        // dd($request);
        
            $situacion_laboral = DB::table('nivel_remunerativo') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($situacion_laboral); 
    }
    public function  actualizarNivelRemunerativo(Request $request){
        // dd($request);
      
            $rules = array(       
                'nombreNivelRemunerativoUpd'                => 'required|max:240', 
                'desCortaNivelRemunerativoUpd'                => 'required|max:6',  
                'detalleNivelRenumerativoUpd'                => 'required|max:550',   
            );
            
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('nivel_remunerativo')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                        'nombre'                =>$request->nombreNivelRemunerativoUpd, 
                        'desc_corta'            =>$request->desCortaNivelRemunerativoUpd, 
                        'id_MEF'                =>$request->idNivelRemunerativoUpd, 
                        'id_PLH'                =>$request->idNivelRemunerativoPLHUpd,  
                        'descripcion'           =>$request->detalleNivelRenumerativoUpd,    
                     ]); 
    }
}
