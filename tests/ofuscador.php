<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;


class TrabajadorController extends Controller
{
    $text='
    public function index(){ 
        return view('forms.general.general');
    } 
    
    
    public function ingresoReingreso(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.ingresoReingreso.general');
    }
    public function trayectoria(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.TrayectoriaLaboral.general');
    }
    public function incentivos(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');
        return view('forms.incentivos.general');
    }
    public function pension(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.pension.general');
    }
    public function premios(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.premios.general');
    }
    public function sanciones(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.sanciones.general');
    }
    public function licencias(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          } 
        //dd('ingreso');

        return view('forms.licencias02.general');
    }
    public function otros(){
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
          if(is_null($trabajador_id)){//
              return redirect('/home');
          }  
         return view('forms.otros.general');
    }
    
    public function datosTrabajador(){
        // dd('llego');
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar 
        // dd($trabajador_id);
         $ARRAY=[];  

         $trabajadores = DB::table('users') 
            ->where('id',$trabajador_id)
            // iddocumento
            ->where('idtipo','TRA')   
            ->get();
            //    dd($trabajadores);
            foreach ($trabajadores as   $trabajador) {
                $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get(); 
                array_push($ARRAY,[ 
                        'nro_documento'     =>$trabajador->nro_documento,            
                        'iddocumento'       =>$trabajador->iddocumento,            
                        'nombresServidor'   =>$trabajador->nombre." ".$trabajador->apellidos,
                        'nombreServidor'    =>$trabajador->nombre,                   
                        'apeliidosServidor' =>$trabajador->apellidos,         
                        'situacionLaboral'  =>$situacion[0]->nombre ,
                        'regimen_laboral'    =>$regimen[0]->nombre ,
                        'centroLaboral'     =>$empresa[0]->razon_social,
                        'cargoServidor'     =>$cargo[0]->nombre,    
                        'url_imagen'        =>$trabajador->url_imagen,   
                        'validado_reniec'   =>$trabajador->validado_reniec,  
                        'direccionPrincipal'=> $trabajador->direccion,
                        'ubicacion'         => $trabajador->ubicacion,
                        'estado_civil'      => $trabajador->estado_civil,
                        'SEXO'              => $trabajador->SEXO,
                        'telefono'          =>$trabajador->telefono,
                        'email'             =>$trabajador->email,
                        'email_profesional'          =>$trabajador->email_profesional
                        // 'cargoServidor'     =>$trabajador-> ,          
                    ]); 
                 
            } 
         return ([$ARRAY,"estado"=>"datos encontrados"]);
          
    }
    public function buscarTrabajador($id) 
    { 
        $error=null;
        $trabajadores = DB::table('users') 
            ->where('nro_documento',$id)
            // iddocumento
            ->where('idtipo','TRA')   
            ->get();
            
            if(count($trabajadores) >0){
                    // session(['idtrabajadores' => $trabajadores->id]);
                    if ($trabajadores[0]->apertura_legajo=="SI") {
                      // dd('llego');
                        return ([$trabajadores,"estado"=>"tiene legajo"]);
                    } else {
                        $ARRAY=[];
                        foreach ($trabajadores as   $trabajador) {
                                $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                                $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                                $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                                $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                                $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get(); 
                                array_push($ARRAY,[ 
                                        'nro_documento'     =>$trabajador->nro_documento,            
                                        'id'                =>$trabajador->id,            
                                        'iddocumento'       =>$trabajador->iddocumento,            
                                        'nombresServidor'   =>$trabajador->nombre." ".$trabajador->apellidos,
                                        'nombreServidor'    =>$trabajador->nombre,                   
                                        'apeliidosServidor' =>$trabajador->apellidos,         
                                        'situacionLaboral'  =>$situacion[0]->nombre ,
                                        'area_trabajador'   =>$area[0]->nombre ,
                                        'regimen_laboral'   =>$regimen[0]->nombre ,
                                        'centroLaboral'     =>$empresa[0]->razon_social,
                                        'cargoServidor'     =>$cargo[0]->nombre,    
                                        'url_imagen'        =>$trabajador->url_imagen,      
                                    ]); 
                                
                            }


                        return ([$ARRAY,"estado"=>"no tiene legajo"]);
                    }
                    
                      
            }else{ 
                    return ([$trabajadores,"estado"=>"error"]); 
            }
    }
    
    public function store(Request $request){
        //   dd($request);
        
            $rules = array(      
                'tipoResolucion'                => 'required',
                'archivo'                       => 'required|mimes:pdf|max:2560', 
                'fechaResolucion'              => 'required|string|',
                'numeroResolucion'              => 'required|string|', 
                'foliosResolucion'              => 'required|string|', 
                'lugarFisicoResolucion'         => 'required|string|', 
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }

                 $file = $request->file('archivo');//archivo 
                $extension = $file->getClientOriginalExtension();   
                if ($request->file('archivo')) {
                    $url_Pdf = Storage::disk('public')->put('PDF', $request->file('archivo'));
                    // dd($url_Pdf);
                } 

             


                 DB::table('legajo')
                    ->insert([
                        'id_trabajador'          =>intval($request->idTrabajador),
                        'fecha_resolucion'       => $request->fechaResolucion,
                        'folios_resolucion'      => $request->foliosResolucion, 
                        'numero_resolucion'      => $request->numeroResolucion, 
                        'lugar_fisico'           => $request->lugarFisicoResolucion,  
                        'url_doc'                   =>'storage/'.$url_Pdf,
                        'extencion'              => $extension,  
                        // 'apertura_legajo'        =>"SI", 
                        // 'regimen_laboral'        => $request->, 
                        // 'accion'                 => $request->, 
                        // 'motivo_accion'          => $request->, 
                        // 'tipo_doc'               => 'PDF', 
                        // 'nombre'                 => $request->,  
                        // 'carpeta'                => $request->,  
                        // 'descripcion'            => $request->,  
                        // 'carpeta'                => $request->,   
                        // 'glosa'                  => $glosa,  
                        'fecha_creacion'         => date('Y-m-d H:m:s'),
                        'estado'                 => '1', 
                        // 'extencion'              => $extencion,
                        // 'carpeta'                =>$carpeta  
                    ]); 

                    DB::table('users')
                    ->where('id',intval($request->idTrabajador))
                    ->update([
                    'apertura_legajo' =>"SI"
                    ]);


                    
         return view('forms.situacionAcademica.general');
        // return redirect()->action('${App\Http\Controllers\HomeController@index}', ['parameterKey' => 'value']);
    }
    public function LegajosList(Request $request){ 
        //    dd($request);
        $error=null;
        if($request->numeroDocumento != null){
            // dd('llego');
            $rules = array(      
                'tipoDocumento'                => 'required', 
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }
            $trabajador = DB::table('users') 
            ->where('nro_documento',$request->numeroDocumento)
            // iddocumento
            ->where('idtipo','TRA')   
            ->get();

            $ARRAY=[];
                     foreach ($trabajador as   $trabaj) {
                        $empresa = DB::table('empresa')->where('idempresa',intval($trabaj->idempresa))->get();
                        $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabaj->regimen_laboral))->get();
                        $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabaj->situacion_laboral))->get();
                        $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabaj->cargo))->get();
                        $area       = DB::table('area_laboral')->where('codigo',intval($trabaj->area_trabajador))->get();
                        $legajo       = DB::table('legajo')->where('id_trabajador',intval($trabaj->id))->get();
                        // dd($empresa);
                        array_push($ARRAY,[ 
                                'id'                =>$trabaj->id,            
                                'nro_documento'     =>$trabaj->nro_documento,            
                                'nombre'            =>$trabaj->nombre,                 
                                'apellidos'         =>$trabaj->apellidos,         
                                'area_trabajador'   =>$area[0]->nombre , 
                                'regimen_laboral'    =>$regimen[0]->nombre , 
                                'cargo'             =>$cargo[0]->nombre,     
                                'situacion_laboral' => $situacion[0]->nombre,
                                'legajo_numero'     => $legajo[0]->numero_resolucion,
                                'legajo_lugar'      => $legajo[0]->lugar_fisico,
                                'legajo_folios'     => $legajo[0]->folios_resolucion,
                                'legajo_URL'     => $legajo[0]->url_doc,
                                // 'cargoServidor'     =>$trabajador-> ,       
                            ]); 
                        
                    }

            if(count($trabajador) >0){ 
                    if ($trabajador[0]->apertura_legajo=="SI") { 
                        return ([$ARRAY,"estado"=>"documento tiene legajo"]);
                    } else {
                    //   dd('no llego');
                        return ([$ARRAY,"estado"=>"documento  no tiene legajo"]);
                    }
            }else{ 
                    return ([$ARRAY,"estado"=>"documento no registrado"]); 
            }

        }else if($request->nombre && $request->apellidos){
             $trabajadores = DB::table('users')->where([
                    ['apellidos', 'like', '%'.$request->apellidos. '%'],
                    ['nombre', 'like', '%'.$request->nombre. '%'],
                    ['idtipo', '=', 'TRA'],
                    ['apertura_legajo', '=', 'SI'],
                ])->get();
                $ARRAY=[];
                     foreach ($trabajadores as   $trabajador) {
                        $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                        $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                        $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                        $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                        $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get();
                        $legajo       = DB::table('legajo')->where('id_trabajador',intval($trabajador->id))->get();

                        // dd($empresa);
                        array_push($ARRAY,[ 
                                'id'                =>$trabajador->id,            
                                'nro_documento'     =>$trabajador->nro_documento,            
                                'nombre'            =>$trabajador->nombre,                 
                                'apellidos'         =>$trabajador->apellidos,         
                                'area_trabajador'   =>$area[0]->nombre , 
                                'regimen_laboral'    =>$regimen[0]->nombre , 
                                'cargo'             =>$cargo[0]->nombre,     
                                'situacion_laboral' => $situacion[0]->nombre,
                                'legajo_numero'     => $legajo[0]->numero_resolucion,
                                'legajo_lugar'      => $legajo[0]->lugar_fisico,
                                'legajo_folios'     => $legajo[0]->folios_resolucion,
                                'legajo_URL'     => $legajo[0]->url_doc,
                                // 'cargoServidor'     =>$trabajador-> ,       
                            ]); 
                        
                    }

                 return ([$ARRAY,"estado"=>"lista de nombre y apellidos"]); 

        }else if($request->nombre != null){ 

            $trabajadores = DB::table('users')->where([
                    ['nombre', 'like', '%'.$request->nombre. '%'],
                    ['idtipo', '=', 'TRA'],
                    ['apertura_legajo', '=', 'SI'],
                ])->get();
                 $ARRAY=[];
                     foreach ($trabajadores as   $trabajador) {
                        $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                        $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                        $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                        $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                        $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get();
                        $legajo       = DB::table('legajo')->where('id_trabajador',intval($trabajador->id))->get();

                        // dd($empresa);
                        array_push($ARRAY,[ 
                                'id'                =>$trabajador->id,            
                                'nro_documento'     =>$trabajador->nro_documento,            
                                'nombre'            =>$trabajador->nombre,                 
                                'apellidos'         =>$trabajador->apellidos,         
                                'area_trabajador'   =>$area[0]->nombre , 
                                'regimen_laboral'    =>$regimen[0]->nombre , 
                                'cargo'             =>$cargo[0]->nombre,     
                                'situacion_laboral' => $situacion[0]->nombre,
                                'legajo_numero'     => $legajo[0]->numero_resolucion,
                                'legajo_lugar'      => $legajo[0]->lugar_fisico,
                                'legajo_folios'     => $legajo[0]->folios_resolucion,
                                'legajo_URL'     => $legajo[0]->url_doc,
                                // 'cargoServidor'     =>$trabajador-> ,       
                            ]); 
                        
                    }

                 return ([$ARRAY,"estado"=>"lista de nombres"]); 

        }else if($request->apellidos != null){

            $trabajadores = DB::table('users')->where([
                    ['apellidos', 'like', '%'.$request->apellidos. '%'],
                    ['idtipo', '=', 'TRA'],
                    ['apertura_legajo', '=', 'SI'],
                ])->get();
                $ARRAY=[];
                     foreach ($trabajadores as   $trabajador) {
                        $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                        $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                        $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                        $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                        $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get();
                        $legajo       = DB::table('legajo')->where('id_trabajador',intval($trabajador->id))->get();

                        // dd($empresa);
                        array_push($ARRAY,[ 
                                'id'                =>$trabajador->id,            
                                'nro_documento'     =>$trabajador->nro_documento,            
                                'nombre'            =>$trabajador->nombre,                 
                                'apellidos'         =>$trabajador->apellidos,         
                                'area_trabajador'   =>$area[0]->nombre , 
                                'regimen_laboral'    =>$regimen[0]->nombre , 
                                'cargo'             =>$cargo[0]->nombre,     
                                'situacion_laboral' => $situacion[0]->nombre,
                                'legajo_numero'     => $legajo[0]->numero_resolucion,
                                'legajo_lugar'      => $legajo[0]->lugar_fisico,
                                'legajo_folios'     => $legajo[0]->folios_resolucion,
                                'legajo_URL'     => $legajo[0]->url_doc,
                                // 'cargoServidor'     =>$trabajador-> ,       
                            ]); 
                        
                    }

                 return ([$ARRAY,"estado"=>"lista de apellidos"]); 
        }else{
            // dd('llego');
                 $trabajadores = DB::table('users')->where([ 
                    ['idtipo', '=', 'TRA'],
                    ['apertura_legajo', '=', 'SI'],
                ])->get();
                // dd($trabajadores);
                $ARRAY=[];
                     foreach ($trabajadores as   $trabajador) {
                        $empresa = DB::table('empresa')->where('idempresa',intval($trabajador->idempresa))->get();
                        $regimen  = DB::table('regimen_laboral')->where('codigo',intval($trabajador->regimen_laboral))->get();
                        $situacion  = DB::table('situacion_laboral')->where('codigo',intval($trabajador->situacion_laboral))->get();
                        $cargo      = DB::table('cargo_laboral')->where('codigo',intval($trabajador->cargo))->get();
                        $area       = DB::table('area_laboral')->where('codigo',intval($trabajador->area_trabajador))->get();
                        $legajo       = DB::table('legajo')->where('id_trabajador',intval($trabajador->id))->get();

                        // dd($empresa);
                        array_push($ARRAY,[ 
                                'id'                =>$trabajador->id,            
                                'nro_documento'     =>$trabajador->nro_documento,            
                                'nombre'            =>$trabajador->nombre,                 
                                'apellidos'         =>$trabajador->apellidos,         
                                'area_trabajador'   =>$area[0]->nombre , 
                                'regimen_laboral'    =>$regimen[0]->nombre , 
                                'cargo'             =>$cargo[0]->nombre,     
                                'situacion_laboral' => $situacion[0]->nombre,
                                'legajo_numero'     => $legajo[0]->numero_resolucion,
                                'legajo_lugar'      => $legajo[0]->lugar_fisico,
                                'legajo_folios'     => $legajo[0]->folios_resolucion,
                                'legajo_URL'     => $legajo[0]->url_doc,
                                // 'cargoServidor'     =>$trabajador-> ,       
                            ]); 
                        
                    }

                 return ([$ARRAY,"estado"=>"lista de trabajadores"]); 

        }

        
        //  return view('forms.escalafonario.general');
    }
    public function SubirImagen(Request $request){
        //   dd($request);
        $trabajador_id = session('trabajador_Id');//obtenber los datos del trabajador a consultar
        
            $rules = array(       
                'imagen'                       => 'required|mimes:jpg,',  
            );
            $validator = Validator::make ( $request->all(), $rules );

            if ($validator->fails()){
                $var = $validator->getMessageBag()->toarray();
                array_push($var, 'error');
                //return response::json(array('errors'=> $validator->getMessageBag()->toarray()));
                return response()->json($var);
            }

                 $file = $request->file('imagen');//archivo 
                $extension = $file->getClientOriginalExtension();   
                if ($request->file('imagen')) {
                    $url_imagen = Storage::disk('public')->put('IMAGEN', $request->file('imagen'));
                    // dd($url_imagen);
                } 
 

                    DB::table('users')
                    ->where('id',intval($trabajador_id))
                    ->update([
                    'url_imagen' =>'storage/'.$url_imagen,
                    ]);
            return (["ruta"=>'storage/'.$url_imagen]);
 
        // return redirect()->action('${App\Http\Controllers\HomeController@index}', ['parameterKey' => 'value']);
    }'
    echo base64_encode($text);

}