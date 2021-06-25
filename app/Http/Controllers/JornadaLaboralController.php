<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;

class JornadaLaboralController extends Controller
{
    //
        public function index()
    {
         return view('forms.jornadaLaboral.index');
    }
    public function listar()
    {
        // dd('llego');
        $situacion_laboral = DB::table('jornada_laboral')->get(); 
        // dd($situacion_laboral);
        return ($situacion_laboral);
    }
    public function  agregarJornadaLaboral(Request $request){
      
            $rules = array(       
                'nombreJornadaLaboral'                => 'required|max:240', 
                'detalleJornadaLaboral'                => 'required|max:550',  
                'finJornada'                           => 'required',  
                'inicioJornada'                        => 'required',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('jornada_laboral')
                    ->insert([ 
                        'nombre'                =>$request->nombreJornadaLaboral, 
                        'hora_inicio'           =>$request->inicioJornada,
                        'hora_fin'           =>$request->finJornada,
                        'descripcion'           =>$request->detalleJornadaLaboral,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarJornadaLaboral(Request $request){ 
        // dd($request);
        DB::table('jornada_laboral') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarJornadaLaboral(Request $request){ 
        // dd($request);
        DB::table('jornada_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarJornadaLaboral(Request $request){ 
        // dd($request);
        DB::table('jornada_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarJornadaLaboral(Request $request){ 
        // dd($request);
        
            $situacion_laboral = DB::table('jornada_laboral') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($situacion_laboral); 
    }
    public function  actualizarJornadaLaboral(Request $request){
        // dd($request);
      
            $rules = array(       
                'nombreJornadaLaboralUpd'                => 'required|max:240', 
                'detalleJornadaLaboralUpd'                => 'required|max:550',  
                'finJornadaUpd'                           => 'required',  
                'inicioJornadaUpd'                        => 'required',  
            );
            
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('jornada_laboral')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                          'nombre'                =>$request->nombreJornadaLaboralUpd, 
                        'descripcion'           =>$request->detalleJornadaLaboralUpd,  
                        'hora_inicio'           =>$request->inicioJornadaUpd,
                        'hora_fin'           =>$request->finJornadaUpd, 
                     ]); 
    }
}
