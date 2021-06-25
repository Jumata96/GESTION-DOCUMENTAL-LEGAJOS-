<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;


class RenunciasController extends Controller
{
    //
    public function Index(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
        $situacion_laboral = DB::table('situacion_laboral')->where('estado',1)->get(); 
          if(is_null($trabajador_id)){//
              return redirect('/home');
          }   
        return view('forms.renuncias.general',[
            'situacion_laboral'       => $situacion_laboral
        ]);
    }
    
    public function  archivosList(){
        //  dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
        $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',5],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    } 
    public function  eliminarArchivos($id){ 
 
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 

        DB::table('renuncias') 
            ->where('id_doc',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            // $direcciones = DB::table('documentos_digitalizados') 
            // ->where([   
            //     ['id_trabajador',intval($trabajador_id)],
            //     ['seccion',5],
            //     ['estado',1]
            // ])->get();  
        // return ($direcciones);

    } 
    public function  agregarDatos(Request $request){
            //  dd($request);  
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'tipoResolucion'                => 'required', 
                'situacionLaboral'                => 'required',  
                'numeroResolucion'                => 'required', 
                'fechaResolucion'                => 'required',   
                'fechaFinContrato'                => 'required', 
                'anotacionesResolucion'                => 'required', 
                'numeroFoliosResolucionLaboral'                => 'required', 
                // 'referenciaDomicilio'         => 'required|string|', 
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
                        'seccion'                =>'5',
                        'fecha_creacion'         => $tiempoRegistro,
                        'estado'                 => '1' 
                    ]); 
                     $documentoD=DB::table('documentos_digitalizados')->where('fecha_creacion',$tiempoRegistro)->get();
                     DB::table('renuncias')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador_id),  
                        'tipo_resolucion'       =>$request->tipoResolucion, 
                        'situacion_laboral'     =>$request->situacionLaboral,  
                        'fecha_resolucion'      =>$request->fechaInicioCapacitaciones, 
                        'fecha_fin_contrato'    =>$request->fechaFinCapacitaciones, 
                        'numero_resolucion'     =>$request->numeroResolucion, 
                        'url_doc'               =>'storage/'.$url_Pdf,
                        'name_doc'              => $nombre, 
                        'id_doc'                =>$documentoD[0]->codigo,
                        'folios'                =>$request->numeroFoliosResolucionLaboral,  
                        'descripcion'           =>$request->anotacionesResolucion,
                        'fecha_creacion'        => $tiempoRegistro,
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

                    // $direcciones = DB::table('direcciones') 
                    // ->where('id_trabajador',intval($trabajador_id))
                    // ->where('estado',1)
                    // ->get();   
                    // return ($direcciones); 
    }
    public function  DatosList(){
        //  dd('llego');
            $ARRAY=[];
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $renuncias = DB::table('renuncias')->where('id_trabajador',intval($trabajador_id))->where('estado',1)->get(); 
            foreach ($renuncias as  $value) {
                # code...
                $situacion_laboral = DB::table('situacion_laboral')->where('codigo',$value->situacion_laboral)->get();
                array_push($ARRAY,[
                    'tipoResolucion'=>$value->tipo_resolucion ,
                    'numeroResolucion'=>$value->numero_resolucion ,
                    'situacionLaboral'=>$situacion_laboral[0]->nombre,
                    'fechaResolucion'=>$value->fecha_resolucion,
                    'fechaFinContrato'=>$value->fecha_fin_contrato,
                    'estado'=>$value->estado ,
                    'codigo'=>$value->codigo ,


                ]);
            }
        return ($ARRAY);

    }
    public function eliminarDatos(Request $request){ 
       $codigo= DB::table('renuncias')->select('id_doc')->where('codigo',$request->id)->get();

         DB::table('renuncias') 
            ->where('codigo',$request->id)
            ->delete(); 
        
            DB::table('documentos_digitalizados') 
            ->where('codigo',intval($codigo[0]->id_doc))
            ->delete(); 
    }
}
