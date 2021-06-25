<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;


class ContratosController extends Controller
{
    //
    public function ContratosIndex(){
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

        return view('forms.Contratos.general',[
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
                        ['seccion',4],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    }
    
    public function  ContratosList(){
    //  dd('llego');
             $ARRAY=[];  
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $contratos = DB::table('contratos') 
            ->where('id_trabajador',intval($trabajador_id))
            ->where('estado',1)
            ->get(); 
            // dd($capacitacontratosciones);
            foreach ($contratos as $value) {

                $situacion_laboral = DB::table('situacion_laboral')->where('codigo',$value->situacion_laboral)->get();
                $regimen_laboral = DB::table('regimen_laboral')->where('codigo',$value->regimen_laboral)->get();
                $cargo_laboral = DB::table('cargo_laboral')->where('codigo',$value->cargo_laboral)->get();
                $area_laboral = DB::table('area_laboral')->where('codigo',$value->area_trabajador)->get(); 
                $jornada_laboral = DB::table('jornada_laboral')->where('codigo',$value->jornada_laboral)->get();  
                // dd( $situacion_laboral, $regimen_laboral,$cargo_laboral,$area_laboral,$jornada_laboral);
                array_push($ARRAY,[    
                        'codigo'              =>$value->codigo,   
                        'tipoContrato'   =>$value->tipo_resolucion ,         
                        'situacionLaboral'  =>$situacion_laboral[0]->nombre ,
                        'regimenLaboral'    =>$regimen_laboral[0]->nombre ,
                         'centroLaboral'     =>$area_laboral[0]->nombre,
                         'cargoServidor'     =>$cargo_laboral[0]->nombre,    
                         'jornadaLaboral'    =>$jornada_laboral[0]->nombre,      
                         'fecha_resolucion'  =>$value->fecha_resolucion,      
                         'fecha_inicio'      =>$value->fecha_inicio,      
                         'fecha_fin'         =>$value->fecha_fin,      
                    ]); 
                # code...
            }
        return ($ARRAY);

    }
    public function  agregarNivelAcademicoDet(Request $request){
                //  dd($request);  

 
            $rules = array(      
                'archivo'                           => 'required|mimes:pdf|max:2560', 
                'regimenLaboral'                    => 'required', 
                'situacionLaboral'                  => 'required',  
                'cargoLaboral'                      => 'required', 
                'areaLaboral'                       => 'required',   
                'numeroResolucion'                  => 'required', 
                'fechaResolucion'                   => 'required', 
                'anotacionesResolucion'             => 'required', 
                'numeroFoliosResolucionLaboral'     => 'required', 
                'jornadaLaboral'                    => 'required', 
                'tipoResolucion'                    =>'required', 
                'fechaResolucionInicio'             =>'required', 
                'fechaResolucionFin'                =>'required', 
                
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
                    // dd($request->cargoLaboral);
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
                        'seccion'                =>'4',
                        'fecha_creacion'         => $tiempoRegistro,
                        'estado'                 => '1' 
                    ]); 
                    $documentoD=DB::table('documentos_digitalizados')->where('fecha_creacion',$tiempoRegistro)->get();
                     $trabajador=DB::table('users')->where('id',$trabajador_id)->get();


                     DB::table('contratos')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador_id),  
                        'area_trabajador'       =>$request->areaLaboral , 
                        'situacion_laboral'     =>$request->situacionLaboral ,  
                        'regimen_laboral'       =>$request->regimenLaboral, 
                        'cargo_laboral'         =>$request->cargoLaboral,  
                        'fecha_resolucion'      =>$request->fechaResolucion, 
                        'jornada_laboral'       =>$request->jornadaLaboral,
                        'tipo_resolucion'       =>$request->tipoResolucion,
                        'fecha_inicio'          =>$request-> fechaResolucionInicio, 
                        'fecha_fin'             =>$request-> fechaResolucionFin, 
                        'url_doc'               =>'storage/'.$url_Pdf,
                        'name_doc'              => $nombre, 
                        'id_doc'                =>$documentoD[0]->codigo,
                        'folios'                =>$request->numeroFoliosResolucionLaboral,  
                        'descripcion'           =>$request->anotacionesResolucion,
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1'  
                    ]);  
                    DB::table('users')
                     ->where('id',$trabajador_id)
                     ->update([
                         'cargo'             =>$request->cargoLaboral,
                         'regimen_laboral'   =>$request->regimenLaboral,
                         'situacion_laboral' =>$request->situacionLaboral,  
                         'area_trabajador'   =>$request->areaLaboral, 
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
    public function  agregarArchivosSec4(Request $request){
        //   dd($request); 
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'tipoDocumentoDeclaracionJurada'                => 'required', 
                'fechaEmisionDeclaracionJurada'                  => 'required|string|',
                'anotacionesDeclaracionJurada'              => 'required|string|',  
                'numeroFoliosDeclaracionJurada'             => 'required|Integer|min:1'
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }  
 
                    $file = $request->file('archivo');//archivo 
                    $nombre =$file->getClientOriginalName();
                    // dd($file->getClientOriginalName());
                    $extension = $file->getClientOriginalExtension();   
                    if ($request->file('archivo')) {
                        $url_Pdf = Storage::disk('public')->put('PDF', $request->file('archivo'));
                        // dd($url_Pdf);
                    } 

                     DB::table('documentos_digitalizados')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),   
                        'tipo_documento'          => $request->tipoDocumentoDeclaracionJurada,   
                        'fecha_emision'          => $request->fechaEmisionDeclaracionJurada,   
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'name_archivo'           =>$nombre,  
                        'folios_resolucion'      =>$request->numeroFoliosDeclaracionJurada,
                        'seccion'                =>'4',
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 
                    // $declaraciones = DB::table('documentos_digitalizados') 
                    // ->where([   
                    //     ['id_trabajador',intval($trabajador_id)],
                    //     ['seccion',4],
                    //     ['estado',1]
                    // ])->get();    
                    // return ($declaraciones); 
    }
    public function  eliminarArchivosSec4($id){
        //  dd('llego');
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 

        DB::table('contratos') 
            ->where('id_doc',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $direcciones = DB::table('documentos_digitalizados') 
            ->where([   
                ['id_trabajador',intval($trabajador_id)],
                ['seccion',4],
                ['estado',1]
            ])->get();  
        return ($direcciones);

    }
    public function eliminarNivelEducativo(Request $request){
        // dd($request);
        $codigo= DB::table('contratos')->select('id_doc')->where('codigo',$request->id)->get();

         DB::table('contratos') 
            ->where('codigo',$request->id)
            ->delete(); 

        DB::table('documentos_digitalizados') 
            ->where('codigo',$codigo[0]->id_doc)
            ->delete(); 
    }
    
}
