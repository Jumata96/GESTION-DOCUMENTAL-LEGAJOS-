<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;


class CapacitacionesController extends Controller
{
    //
    public function capacitacionesIndex(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.capacitaciones.general');
    }
    
    public function  archivosList(){
        //  dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
        $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',3],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    }
    public function  agregarArchivosSec3(Request $request){
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
                        'seccion'                =>'3',
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 
                    $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',3],
                        ['estado',1]
                    ])->get();    
                    return ($declaraciones); 
    }
    public function  eliminarArchivosSec3($id){
        //  dd('llego');
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 

         DB::table('capacitaciones') 
            ->where('id_doc',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $direcciones = DB::table('documentos_digitalizados') 
            ->where([   
                ['id_trabajador',intval($trabajador_id)],
                ['seccion',3],
                ['estado',1]
            ])->get();  
        return ($direcciones);

    }
    public function  agregarNivelAcademicoDet02(Request $request){
        //    dd($request);  
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'nivelEducativoTitulos'                => 'required', 
                'centroEstudiosTitulos'                => 'required', 
                'situacionAcademicaTitulos'                => 'required', 
                'inicioDeTitulos'                => 'required', 
                'finDeTitulos'                => 'required', 
                'cursoProfesionGradoTitulos'                => 'required', 
                'numeroFoliosDocumento'                => 'required',  
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

                     DB::table('nivel_educativo')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),  
                        'nivel_educativo'         =>$request->nivelEducativoTitulos, 
                        'centro_estudios'         =>$request->centroEstudiosTitulos, 
                        'situacion_academica'         =>$request->situacionAcademicaTitulos, 
                        'ano_inicio'         =>$request->inicioDeTitulos, 
                        'ano_fin'         =>$request->finDeTitulos, 
                        'url_doc'            =>'storage/'.$url_Pdf,
                        'name_doc'             => $nombre,
                        'folios'      =>$request->numeroFoliosDocumento, 
                        'nombre_nivel'         =>$request->cursoProfesionGradoTitulos, 
                        'descripcion'         =>$request->anotacionesTitulos,
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 
                    DB::table('documentos_digitalizados')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),   
                        'tipo_documento'          =>"CERTIFICADO DE ESTUDIOS ".$request->nivelEducativoTitulos,   
                        'fecha_emision'          => date('Y-m-d H:m:s'),   
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'name_archivo'           =>$nombre,  
                        'folios_resolucion'      =>$request->numeroFoliosDocumento,
                        'seccion'                =>'2',
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 

                    // $direcciones = DB::table('direcciones') 
                    // ->where('id_trabajador',intval($trabajador_id))
                    // ->where('estado',1)
                    // ->get();   
                    // return ($direcciones); 
    } 
    public function  agregarNivelAcademicoDet(Request $request){
            // dd($request);  
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'nivelEducativoTitulos'                => 'required', 
                'centroEstudiosTitulos'                => 'required',  
                'cursoProfesionGradoTitulos'                => 'required', 
                'numeroFoliosDocumento'                => 'required',   
                'horasCapacitaciones'                => 'required', 
                'fechaInicioCapacitaciones'                => 'required', 
                'fechaFinCapacitaciones'                => 'required', 
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
                        'tipo_documento'         => $request->nivelEducativoTitulos,   
                        // 'numero_resolucion'         => $request->numeroResolucion,   
                        'fecha_emision'          => date('Y-m-d H:m:s'),   
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'name_archivo'           =>$nombre,  
                        'folios_resolucion'      =>$request->numeroFoliosDocumento,
                        'seccion'                =>'3',
                        'fecha_creacion'         => $tiempoRegistro,
                        'estado'                 => '1' 
                    ]); 
                     $documentoD=DB::table('documentos_digitalizados')->where('fecha_creacion',$tiempoRegistro)->get();
                     $trabajador=DB::table('users')->where('id',$trabajador_id)->get();
                     DB::table('capacitaciones')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador_id),  
                        'tipo_capacitacion'     =>$request->nivelEducativoTitulos, 
                        'centro_estudios'       =>$request->centroEstudiosTitulos,  
                        'fecha_inicio'          =>$request->fechaInicioCapacitaciones, 
                        'fecha_fin'             =>$request->fechaFinCapacitaciones, 
                        'url_doc'               =>'storage/'.$url_Pdf,
                        'name_doc'              => $nombre,
                        'horas_capacitacion'    =>$request->horasCapacitaciones, 
                        'folios'                =>$request->numeroFoliosDocumento, 
                        'id_doc'                =>$documentoD[0]->codigo,
                        'nombre_capacitacion'   =>$request->cursoProfesionGradoTitulos, 
                        'descripcion'           =>$request->anotacionesTitulos,
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1' 
                    ]); 
                    $legajo= DB::table('legajo')->where('id_trabajador',intval($trabajador_id))->get();
                    // $legajo[0]->folios_resolucion;
                    $numeroFolios=intval($legajo[0]->folios_resolucion)+intval($request->numeroFoliosDocumento);
                    DB::table('legajo') 
                    ->where('id_trabajador',intval($trabajador_id))
                    ->update([
                        'folios_resolucion'=>$numeroFolios

                    ]);
                    // DB::table('documentos_digitalizados')
                    // ->insert([
                    //     'id_trabajador'          =>intval($trabajador_id),   
                    //     'tipo_documento'         => $request->nivelEducativoTitulos,   
                    //     'fecha_emision'          => date('Y-m-d H:m:s'),   
                    //     'url_archivo'            =>'storage/'.$url_Pdf,
                    //     'name_archivo'           =>$nombre,  
                    //     'folios_resolucion'      =>$request->numeroFoliosDocumento,
                    //     'seccion'                =>'3',
                    //     'fecha_creacion'         => date('Y-m-d H:m:s'),
                    //     'estado'                 => '1' 
                    // ]); 

                    // $direcciones = DB::table('direcciones') 
                    // ->where('id_trabajador',intval($trabajador_id))
                    // ->where('estado',1)
                    // ->get();   
                    // return ($direcciones); 
    }
    public function  nivelEducativoList(){
    //  dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $capacitaciones = DB::table('capacitaciones') 
            ->where('id_trabajador',intval($trabajador_id))
            ->where('estado',1)
            ->get(); 
        return ($capacitaciones);

    }
    public function eliminarNivelEducativo(Request $request){
        $codigo= DB::table('capacitaciones')->select('id_doc')->where('codigo',$request->id)->get();

         DB::table('capacitaciones') 
            ->where('codigo',$request->id)
            ->delete(); 

             DB::table('documentos_digitalizados') 
            ->where('codigo',$codigo[0]->id_doc)
            ->delete();
    }
}
