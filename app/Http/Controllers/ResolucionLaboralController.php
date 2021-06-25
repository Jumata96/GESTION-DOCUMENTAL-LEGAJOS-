<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;

class ResolucionLaboralController extends Controller
{
    //
    public function index()
    {
         return view('forms.resolucionLaboral.index');
    }
    public function listar()
    {
        // dd('llego');
        $situacion_laboral = DB::table('resolucion_laboral')->get(); 
        return ($situacion_laboral);
    }
    public function  agregarResolucionLaboral(Request $request){
      
            $rules = array(       
                'nombreResolucionLaboral'                => 'required|max:240', 
                'detalleResolucionLaboral'                => 'required|max:550',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('resolucion_laboral')
                    ->insert([ 
                        'nombre'                =>$request->nombreResolucionLaboral, 
                        'descripcion'           =>$request->detalleResolucionLaboral,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarResolucionLaboral(Request $request){ 
        // dd($request);
        DB::table('resolucion_laboral') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarResolucionLaboral(Request $request){ 
        // dd($request);
        DB::table('resolucion_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarResolucionLaboral(Request $request){ 
        // dd($request);
        DB::table('resolucion_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarResolucionLaboral(Request $request){ 
        // dd($request);
        
            $situacion_laboral = DB::table('resolucion_laboral') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($situacion_laboral); 
    }
    public function  actualizarResolucionLaboral(Request $request){
        // dd($request);
      
            $rules = array(       
                'nombreResolucionLaboralUpd'                => 'required|max:240', 
                'detalleResolucionLaboralUpd'                => 'required|max:550',  
            );
            
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('resolucion_laboral')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                          'nombre'                =>$request->nombreResolucionLaboralUpd, 
                        'descripcion'           =>$request->detalleResolucionLaboralUpd,   
                     ]); 
    }
}
