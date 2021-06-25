<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;

class SituacionLaboralController extends Controller
{
    public function index()
    {
         return view('forms.situacionLaboral.index');
    }
    public function listar()
    {
        // dd('llego');
        $situacion_laboral = DB::table('situacion_laboral')->get(); 
        return ($situacion_laboral);
    }
    public function  agregarSituacionLaboral(Request $request){
      
            $rules = array(       
                'nombreSituacionLaboral'                => 'required|max:240', 
                'detalleSituacionLaboral'                => 'required|max:550',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('situacion_laboral')
                    ->insert([ 
                        'nombre'                =>$request->nombreSituacionLaboral, 
                        'descripcion'           =>$request->detalleSituacionLaboral,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarSituacionLaboral(Request $request){ 
        // dd($request);
        DB::table('situacion_laboral') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarSituacionLaboral(Request $request){ 
        // dd($request);
        DB::table('situacion_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarSituacionLaboral(Request $request){ 
        // dd($request);
        DB::table('situacion_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarSituacionLaboral(Request $request){ 
        // dd($request);
        
            $situacion_laboral = DB::table('situacion_laboral') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($situacion_laboral); 
    }
    public function  actualizarSituacionLaboral(Request $request){
        // dd($request);
      
            $rules = array(       
                'nombreSituacionLaboralUpd'                => 'required|max:240', 
                'detalleSituacionLaboralUpd'                => 'required|max:550',  
            );
            
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('situacion_laboral')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                          'nombre'                =>$request->nombreSituacionLaboralUpd, 
                        'descripcion'           =>$request->detalleSituacionLaboralUpd,   
                     ]); 
    }
    
}
