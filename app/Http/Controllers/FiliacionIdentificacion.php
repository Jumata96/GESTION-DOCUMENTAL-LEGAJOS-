<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;

class FiliacionIdentificacion extends Controller
{
    //
    public function filiacionEidentidad(){
         $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 

        return view('forms.filiacion.filiacionEidentidad');
    }
    public function  direccionesList(){
        // dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $direcciones = DB::table('direcciones') 
            ->where('id_trabajador',intval($trabajador_id))
            ->where('estado',1)
            ->get(); 
        return ($direcciones);

    }
    public function  agregarDireccion(Request $request){
        //  dd($request); 
  
            $rules = array(      
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'tipoDirecciónDomicilio'                => 'required', 
                'zonaDomicilio'                  => 'required|string|',
                'tipoViaDomicilio'              => 'required|string|', 
                'departamentoDomicilio'          => 'required|string|', 
                'provinciaDomicilio'                => 'required|string|', 
                'distritoDomicilio'                 => 'required|string|', 
                'direccionDomicilio'         => 'required|string|', 
                // 'referenciaDomicilio'         => 'required|string|', 
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            } 

            $departamento = DB::table('ubdepartamento')->where('idDepa',intval($request->departamentoDomicilio))->get(); 
 
            $provincia = DB::table('ubprovincia')->where('idProv',intval($request->provinciaDomicilio))->get();  
            $distrito = DB::table('ubdistrito')->where('idDist',intval($request->distritoDomicilio))->get(); 
            // dd($distrito[0]->distrito); 
                 $trabajador_id = session('trabajador_Id');
                  if($request->tipoDirecciónDomicilio=="PRINCIPAL"){
                        $direccionAntigua = DB::table('direcciones') 
                        ->where('id_trabajador',intval($trabajador_id))
                        ->where('tipo_direccion',"PRINCIPAL")
                        ->get();
                        if(count($direccionAntigua) >0){
                            DB::table('direcciones')
                            ->where('codigo',intval($direccionAntigua[0]->codigo))
                            ->update([
                                'tipo_direccion' => "SECUNDARIO"
                            ]
                            ); 
                        } 
                        DB::table('users')
                            ->where('id',intval($trabajador_id))
                            ->update([ 
                                'direccion' =>$request->direccionDomicilio,
                                'ubicacion' =>$distrito[0]->distrito."/".$distrito[0]->distrito."/".$departamento[0]->departamento,
                            ]
                            );  
                    }
                    $file = $request->file('archivo');//archivo 
                    $extension = $file->getClientOriginalExtension();  
                    $nombre =$file->getClientOriginalName(); 
                    if ($request->file('archivo')) {
                        $url_Pdf = Storage::disk('public')->put('PDF', $request->file('archivo'));
                        // dd($url_Pdf);
                    } 

                     DB::table('direcciones')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),  
                        'tipo_direccion'         =>$request->tipoDirecciónDomicilio,
                        'tipo_via'               =>$request->tipoViaDomicilio,
                        'zonas'                  =>$request->zonaDomicilio ,
                        'direccion'              =>$request->direccionDomicilio ,
                        'departamento'           =>$departamento[0]->departamento ,
                        'provincia'              =>$provincia[0]->provincia ,
                        'distrito'               => $distrito[0]->distrito , 
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 
                    DB::table('documentos_digitalizados')
                    ->insert([
                        'id_trabajador'          =>intval($trabajador_id),   
                        'tipo_documento'          =>"CERTIFICADO DOMICILIARIO",   
                        'fecha_emision'          => date('Y-m-d H:m:s'),   
                        'url_archivo'            =>'storage/'.$url_Pdf,
                        'name_archivo'           =>$nombre,  
                        'folios_resolucion'      =>"1",
                        'seccion'                =>'1',
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 

                    $direcciones = DB::table('direcciones') 
                    ->where('id_trabajador',intval($trabajador_id))
                    ->where('estado',1)
                    ->get();   
                    return ($direcciones); 
    }
    public function  eliminarDireccion($id){
        // dd('llego');
        DB::table('direcciones') 
            ->where('codigo',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $direcciones = DB::table('direcciones') 
            ->where('id_trabajador',intval($trabajador_id))
            ->where('estado',1)
            ->get();  
        return ($direcciones);

    }
    public function  archivosList(){
        // dd('llego');
          $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
        $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',1],
                        ['estado',1]
                    ])->get();    
       return ($declaraciones); 



    }
    public function  agregarArchivosSec1(Request $request){
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
                        'seccion'                =>'1',
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1' 
                    ]); 
                    $declaraciones = DB::table('documentos_digitalizados') 
                    ->where([   
                        ['id_trabajador',intval($trabajador_id)],
                        ['seccion',1],
                        ['estado',1]
                    ])->get();    
                    return ($declaraciones); 
    }
    public function  eliminarArchivosSec1($id){
        //  dd('llego');
        DB::table('documentos_digitalizados') 
            ->where('codigo',$id)
            ->delete(); 
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
 
            $direcciones = DB::table('documentos_digitalizados') 
            ->where([   
                ['id_trabajador',intval($trabajador_id)],
                ['seccion',1],
                ['estado',1]
            ])->get();  
        return ($direcciones);

    }
}
