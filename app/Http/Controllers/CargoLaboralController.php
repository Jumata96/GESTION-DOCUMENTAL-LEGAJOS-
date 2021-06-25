<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;

class CargoLaboralController extends Controller
{
    public function index()
    {
         return view('forms.cargoLaboral.index');
    }
    public function listar()
    {
        // dd('llego');
        $situacion_laboral = DB::table('cargo_laboral')->get(); 
        return ($situacion_laboral);
    }
    public function  agregarCargoLaboral(Request $request){
      
            $rules = array(       
                'nombreCargoLaboral'                => 'required|max:240', 
                'detalleCargoLaboral'                => 'required|max:550',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('cargo_laboral')
                    ->insert([ 
                        'nombre'                =>$request->nombreCargoLaboral , 
                        'descripcion'           =>$request->detalleCargoLaboral,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarCargoLaboral(Request $request){ 
        // dd($request);
        DB::table('cargo_laboral') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarCargoLaboral(Request $request){ 
        // dd($request);
        DB::table('cargo_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarCargoLaboral(Request $request){ 
        // dd($request);
        DB::table('cargo_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarCargoLaboral(Request $request){ 
        // dd($request);
        
            $situacion_laboral = DB::table('cargo_laboral') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($situacion_laboral); 
    }
    public function  actualizarCargoLaboral(Request $request){
        // dd($request);
      
            $rules = array(       
                'nombreCargoLaboralUpd'                => 'required|max:240', 
                'detalleCargoLaboralUpd'                => 'required|max:550',  
            );
            
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }   

                     DB::table('cargo_laboral')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                          'nombre'                =>$request->nombreCargoLaboralUpd, 
                        'descripcion'           =>$request->detalleCargoLaboralUpd,   
                     ]); 
    }
    
}
