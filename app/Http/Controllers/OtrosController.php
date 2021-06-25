<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;

class OtrosController extends Controller
{
    //
    public function Index(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
        $situacion_laboral = DB::table('situacion_laboral')->where('estado',1)->get();
        $regimen_laboral = DB::table('regimen_laboral')->where('estado',1)->get();
        $cargo_laboral = DB::table('cargo_laboral')->where('estado',1)->get();
        $area_laboral = DB::table('area_laboral')->where('estado',1)->get(); 
        $jornada_laboral = DB::table('jornada_laboral')->where('estado',1)->get(); 
        $area_laboral = DB::table('area_laboral')->where('estado',1)->get(); 
          if(is_null($trabajador_id)){//
              return redirect('/home');
          }  
        return view('forms.otros.general',[
            'regimen_laboral'       => $regimen_laboral,
            'cargo_laboral'       => $cargo_laboral,
            'situacion_laboral'       => $situacion_laboral,
            'jornada_laboral'       => $jornada_laboral,
            'area_laboral'       => $area_laboral 
        ]);
    }
    
    public function  archivosList(){
        //  dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
        $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',15],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    } 
    public function  eliminarArchivos($id){ 
 
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 

        DB::table('otros') 
            ->where('id_doc',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar

    } 
    public function  agregarDatos(Request $request){ 
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560',  
                'numeroResolucion'                  => 'required', 
                'motivoResolucion'                  => 'required', 
                'fechaResolucion'                   => 'required', 
                'anotacionesResolucion'             => 'required', 
                'numeroFoliosResolucionLaboral'     => 'required',  
                'tipoResolucion'                    =>'required',  
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
                        'seccion'                =>'15',
                        'fecha_creacion'         => $tiempoRegistro,
                        'estado'                 => '1' 
                    ]); 
                     $documentoD=DB::table('documentos_digitalizados')->where('fecha_creacion',$tiempoRegistro)->get();
                     $trabajador=DB::table('users')->where('id',$trabajador_id)->get();
 

                      DB::table('otros')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador_id),   
                        'numero_resolucion'     =>$request->numeroResolucion, 
                        'fecha_resolucion'      =>$request->fechaResolucion,  
                        'tipo_resolucion'       =>$request->tipoResolucion, 
                        'motivo_resolucion'       =>$request->motivoResolucion, 
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
 
            $desplazamiento = DB::table('otros')->where('id_trabajador',intval($trabajador_id))->where('estado',1)->get(); 
            foreach ($desplazamiento as  $value) {
                # code...
                // $situacion_laboral = DB::table('situacion_laboral')->where('codigo',$value->situacion_laboral)->get();
                // $cargo_laboral = DB::table('cargo_laboral')->where('codigo',$value->cargo_laboral)->get();
                array_push($ARRAY,[
                    'tipoResolucion'=>$value->tipo_resolucion ,
                    'numeroResolucion'=>$value->numero_resolucion ,
                    // 'situacionLaboral'=>$situacion_laboral[0]->nombre,
                    // 'cargoLaboral'    =>$cargo_laboral[0]->nombre,
                    'fechaResolucion'=>$value->fecha_resolucion, 
                    'descripcion'=>$value->descripcion, 
                    'motivo_resolucion'=>$value->motivo_resolucion, 
                    'estado'=>$value->estado ,
                    'codigo'=>$value->codigo ,


                ]);
            }
        return ($ARRAY);

    }
    public function eliminarDatos(Request $request){ 
        // dd($request);
       $codigo= DB::table('otros')->select('id_doc')->where('codigo',$request->id)->get();
        //    dd($codigo[0]->id_doc);

         DB::table('otros') 
            ->where('codigo',$request->id)
            ->delete(); 
        
            DB::table('documentos_digitalizados') 
            ->where('codigo',$codigo[0]->id_doc)
            ->delete(); 
    }
}
