<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;

class RemuneracionController extends Controller
{
    //
    public function Index(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
        $situacion_laboral = DB::table('situacion_laboral')->where('estado',1)->get();
        $regimen_laboral = DB::table('regimen_laboral')->where('estado',1)->get();
        $cargo_laboral = DB::table('cargo_laboral')->where('estado',1)->get();
        $area_laboral = DB::table('area_laboral')->where('estado',1)->get(); 
        $jornada_laboral = DB::table('jornada_laboral')->where('estado',1)->get(); 
        $nivel_remunerativo = DB::table('nivel_remunerativo')->where('estado',1)->get(); 
          if(is_null($trabajador_id)){//
              return redirect('/home');
          }  
        return view('forms.remunearcion.general',[
            'regimen_laboral'       => $regimen_laboral,
            'cargo_laboral'       => $cargo_laboral,
            'situacion_laboral'       => $situacion_laboral,
            'jornada_laboral'       => $jornada_laboral,
            'nivel_remunerativo'       => $nivel_remunerativo 
        ]);
    }
    
    public function  archivosList(){
        //  dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
        $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',10],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    } 
    public function  eliminarArchivos($id){ 
 
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 

        DB::table('remuneracion_personal') 
            ->where('id_doc',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar 

    } 
    public function  agregarDatos(Request $request){
                // dd($request);   
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560',  
                'numeroResolucion'                  => 'required', 
                'fechaResolucion'                   => 'required', 
                'anotacionesResolucion'             => 'required', 
                'numeroFoliosResolucionLaboral'     => 'required', 
                'nivelRemunerativo'                    => 'required', 
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }  
            // dd($distrito[0]->distrito); 
                 $trabajador_id = session('trabajador_Id'); 

                    $file = $request->file('archivo');//archivo 
                    $extension = $file->getClientOriginalExtension();  
                    $nombre =$file->getClientOriginalName(); 
                    if ($request->file('archivo')) {
                        $url_Pdf = Storage::disk('public')->put('PDF', $request->file('archivo'));
                        // dd($url_Pdf);
                    } 
                    $tiempoRegistro=date('Y-m-d H:m:s');
                    DB::table('documentos_digitalizados')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),   
                        'tipo_documento'         => $request->tipoResolucion,   
                        'numero_resolucion'         => $request->numeroResolucion,   
                        'fecha_emision'          => date('Y-m-d H:m:s'),   
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'name_archivo'           =>$nombre,  
                        'folios_resolucion'      =>$request->numeroFoliosResolucionLaboral,
                        'seccion'                =>'10',
                        'fecha_creacion'         => $tiempoRegistro,
                        'estado'                 => '1' 
                    ]); 
                     $documentoD=DB::table('documentos_digitalizados')->where('fecha_creacion',$tiempoRegistro)->get();
                     $trabajador=DB::table('users')->where('id',$trabajador_id)->get();
                      DB::table('remuneracion_personal')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador_id),  
                        'tipo_resolucion'       =>$request->tipoResolucion,
                        'fecha_resolucion'      =>$request->fechaResolucion, 
                        // 'fecha_pago'          =>$request-> fechaResolucionInicio, 
                        'nivelRemunerativo'       =>$trabajador[0]->area_trabajador, 
                        'numero_resolucion'     =>$request->numeroResolucion, 
                        'url_doc'               =>'storage/'.$url_Pdf,
                        'name_doc'              => $nombre, 
                        'id_doc'                =>$documentoD[0]->codigo,
                        'folios'                =>$request->numeroFoliosResolucionLaboral,  
                        'descripcion'           =>$request->anotacionesResolucion,
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1'  
                    ]);   
                    $legajo= DB::table('legajo')->where('id_trabajador',intval($trabajador_id))->get();
                    // $legajo[0]->folios_resolucion;
                    $numeroFolios=intval($legajo[0]->folios_resolucion)+intval($request->numeroFoliosResolucionLaboral);
                    DB::table('legajo') 
                    ->where('id_trabajador',intval($trabajador_id))
                    ->update([
                        'folios_resolucion'=>$numeroFolios

                    ]);
    }
    public function  DatosList(){
        //  dd('llego');
            $ARRAY=[];
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $remuneracion_personal = DB::table('remuneracion_personal')->where('id_trabajador',intval($trabajador_id))->where('estado',1)->get(); 
            // dd($remuneracion_personal);
            foreach ($remuneracion_personal as  $value) {
                # code...
                // $situacion_laboral = DB::table('situacion_laboral')->where('codigo',$value->situacion_laboral)->get();
                $nivel_remunerativo = DB::table('nivel_remunerativo')->where('codigo',$value->nivelRemunerativo)->get();
                array_push($ARRAY,[
                    'tipoResolucion'=>$value->tipo_resolucion ,
                    'numeroResolucion'=>$value->numero_resolucion ,
                    'nivelRemunerativo'=>$nivel_remunerativo[0]->nombre,
                    // 'cargoLaboral'    =>$cargo_laboral[0]->nombre,
                    'fechaResolucion'=>$value->fecha_resolucion,
                    // 'fechaInicioContrato'=>$value->fecha_inicio,
                    // 'fechaFinContrato'=>$value->fecha_fin,
                    'estado'=>$value->estado ,
                    'codigo'=>$value->codigo ,


                ]);
            }
        return ($ARRAY);

    }
    public function eliminarDatos(Request $request){ 
        // dd($request);
       $codigo= DB::table('remuneracion_personal')->select('id_doc')->where('codigo',$request->id)->get();
        //    dd($codigo[0]->id_doc);

         DB::table('remuneracion_personal') 
            ->where('codigo',$request->id)
            ->delete(); 
        
            DB::table('documentos_digitalizados') 
            ->where('codigo',$codigo[0]->id_doc)
            ->delete(); 
    }
}
