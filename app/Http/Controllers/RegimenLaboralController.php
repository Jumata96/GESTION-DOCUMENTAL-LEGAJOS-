<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;

class RegimenLaboralController extends Controller
{
    //
    public function index()
    {
         return view('forms.regimenLaboral.index');
    }
    public function listar()
    {
        // dd('llego');
        $regimen_laboral = DB::table('regimen_laboral')->get(); 
        return ($regimen_laboral);
    }
    public function  agregarRegimenLaboral(Request $request){
      
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

                     DB::table('regimen_laboral')
                    ->insert([ 
                        'nombre'                =>$request->nombreSituacionLaboral, 
                        'descripcion'           =>$request->detalleSituacionLaboral,   
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]);   
    }
    
    public function  eliminarRegimenLaboral(Request $request){ 
        // dd($request);
        DB::table('regimen_laboral') 
            ->where('codigo',$request->id)
            ->delete();  
    }
    public function  desactivarRegimenLaboral(Request $request){ 
        // dd($request);
        DB::table('regimen_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '2' 
            ]);
    }
    public function  habilitarRegimenLaboral(Request $request){ 
        // dd($request);
        DB::table('regimen_laboral') 
            ->where('codigo',$request->id)
            ->update([
                'estado'                => '1' 
            ]);
    }
    public function  consultarRegimenLaboral(Request $request){ 
        // dd($request);
        
            $regimen_laboral = DB::table('regimen_laboral') 
            ->where('codigo',$request->codigo)
            ->get();

        return ($regimen_laboral); 
    }
    public function  actualizarRegimenLaboral(Request $request){
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

                     DB::table('regimen_laboral')
                     ->where('codigo',intval($request->codigoRegistro))
                     ->update([
                          'nombre'                =>$request->nombreSituacionLaboralUpd, 
                        'descripcion'           =>$request->detalleSituacionLaboralUpd,   
                     ]); 
    }
    
}
