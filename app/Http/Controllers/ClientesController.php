<?php

namespace App\Http\Controllers;
// namespace App\Imports;


use Auth;
use DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Collection as Collection;
use Validator;
use Excel;
use Carbon\Carbon;  
use App\Imports\TicketImport;
use App\Ticket;


class ClientesController extends Controller
{      
    
   //----------------------------HERRAMIENTAS---------------------------------------------------
   public function herramientaClientes()
   {
       $valida = 0;

       //-- Validación para mostrar mensajes al realizar un CRUD
       $validacion = DB::table('validacion')
                       ->select('valor')
                       ->where('idusuario',Auth::user()->id)->get();

       foreach ($validacion as $val) {
           $valida = $val->valor;
       }
       if ($valida > 0) {
           DB::table('validacion')
           ->where('idusuario',strval(Auth::user()->id))
           ->update(['valor' => 0]);
       }

       return view('forms.herramientas.importExport',[
           'valida'    => $valida
       ]);
   }
   public function importarClientes(Request $request)
   {   //dd($request);
       $key = new MaestroController();
       $codigo = null;
       $estado = 0;
       $iddocumento = null;
       $idforma_pago = null;
       $iddoc_venta = null;
       $idmoneda = null;
       $cliente = null;
       $count=0;
        $file = $request->file('clientesXLS');
        //   $array =Excel::import(new TicketImport, $file); 
          $array = Excel::toArray(new TicketImport, $file);  
            foreach ($array[0] as $datos) { 

                $count+=1;
                //   / dd( $datos);
              if($count > 3){
                // dd( $datos);
                    // dd('lelgo',$datos);
                
                $NombreRegimen= $datos[26]; 
               if(empty($NombreRegimen) )
               { 
                $NombreRegimen="IMPORTADO SIN DATOS";
               } 
               $regimen= DB::table('regimen_laboral')->where('nombre', $NombreRegimen)->get(); 
               $dateRegistro=date('Y-m-d H:m:s'); 
               if(count($regimen)==0){  
                        $regimen=null;
                            DB::table('regimen_laboral')
                                        ->insert([ 
                                            'nombre'                =>$NombreRegimen, 
                                            'descripcion'           =>"IMPORTADO DESDE EL PADRON GENERAL",   
                                            'fecha_creacion'        => $dateRegistro,
                                            'estado'                => '1' 
                                        ]);  
                            $regimen= DB::table('regimen_laboral')->where('fecha_creacion', $dateRegistro)->get(); 
                }
               //datos del la situacion laboral 
               $NombreSituacion_laboral= $datos[27]; 
               if(empty($NombreSituacion_laboral) )
               {  
                $NombreSituacion_laboral="IMPORTADO SIN DATOS";
               } 
               $situacion_laboral= DB::table('situacion_laboral')->where('nombre', $NombreSituacion_laboral)->get(); 
                    if(count($situacion_laboral)==0){  
                        $situacion_laboral=null; 
                            DB::table('situacion_laboral')
                                        ->insert([ 
                                            'nombre'                =>$NombreSituacion_laboral, 
                                            'descripcion'           =>"IMPORTADO DESDE EL PADRON GENERAL",   
                                            'fecha_creacion'        => $dateRegistro,
                                            'estado'                => '1' 
                                        ]);  
                            $situacion_laboral= DB::table('situacion_laboral')->where('fecha_creacion', $dateRegistro)->get(); 
                    }
                //datos del area  laboral 
                $NombreArea_laboral= $datos[39]; 
               if(empty($NombreArea_laboral) )
               { 
                $NombreArea_laboral="IMPORTADO SIN DATOS";
               } 
               $area_laboral= DB::table('area_laboral')->where('nombre', $NombreArea_laboral)->get(); 
                    if(count($area_laboral)==0){  
                        $area_laboral=null; 
                            DB::table('area_laboral')
                                        ->insert([ 
                                            'nombre'                =>$NombreArea_laboral, 
                                            'descripcion'           =>"IMPORTADO DESDE EL PADRON GENERAL",   
                                            'fecha_creacion'        => $dateRegistro,
                                            'estado'                => '1' 
                                        ]);  
                            $area_laboral= DB::table('area_laboral')->where('fecha_creacion', $dateRegistro)->get(); 
                    }
                //datos del cargo laboral
                $NombreCargo_laboral= $datos[25]; 
               if(empty($NombreCargo_laboral) )
               { 
                $NombreCargo_laboral="IMPORTADO SIN DATOS";
               }
               $cargo_laboral= DB::table('cargo_laboral')->where('nombre', $NombreCargo_laboral)->get(); 
                    if(count($cargo_laboral)==0){  
                            $cargo_laboral=null; 
                            DB::table('cargo_laboral')
                                        ->insert([ 
                                            'nombre'                =>$NombreCargo_laboral, 
                                            'descripcion'           =>"IMPORTADO DESDE EL PADRON GENERAL",   
                                            'fecha_creacion'        => $dateRegistro,
                                            'estado'                => '1' 
                                        ]);  
                            $cargo_laboral= DB::table('cargo_laboral')->where('fecha_creacion', $dateRegistro)->get(); 
                    } 
               //datos del cargo laboral
               $nivel_remunerativo= $datos[28]; 
               if(empty($nivel_remunerativo) )
               { 
                $nivel_remunerativo="IMPORTADO SIN DATOS";
               }
               $cargo_laboral= DB::table('nivel_remunerativo')->where('nombre', $nivel_remunerativo)->get();  
                    if(count($cargo_laboral)==0){  
                            $cargo_laboral=null; 
                            DB::table('nivel_remunerativo')
                                        ->insert([ 
                                            'nombre'                =>$nivel_remunerativo, 
                                            'descripcion'           =>"IMPORTADO DESDE EL PADRON GENERAL",   
                                            'fecha_creacion'        => $dateRegistro,
                                            'estado'                => '1' 
                                        ]);   
                            $cargo_laboral= DB::table('nivel_remunerativo')->where('fecha_creacion', $dateRegistro)->get(); 
                    }  
                    $horaRegistro=null;
                    $horaRegistro=date('Y-m-d h:m:s');
                 $registroUsuario=   DB::table('users')
                    ->insert([
                        'idempresa'         => "E01",
                        'iddocumento'       => 1 ,
                        'codigo_pliego'     =>$datos[0],
                        'validado_reniec'   =>$datos[1],
                        'nro_documento'     => $datos[2], 
                        'nombre'            => $datos[3],
                        'apellidos'         => $datos[4]." ".$datos[5],
                        'apellido_paterno'  => $datos[4],
                        'apellido_materno'  => $datos[5],
                        'apellidos_casada'  => $datos[6],
                        'fecha_nacimiento'  => $datos[7],
                        'estado_civil'      => $datos[8],
                        'direccion'         => $datos[9],
                        'telefono'          => $datos[10], 
                        'regimen_laboral'   => $regimen[0]->codigo,
                        'situacion_laboral' => $situacion_laboral[0]->codigo, 
                        'area_trabajador'   => $area_laboral[0]->codigo, 
                        'cargo'             => $cargo_laboral[0]->codigo,      
                        // 'SEXO'             => $request->idSexo, 
                        'idtipo'            => "TRA",
                        'email'             => "------",
                        'usuario'           => $datos[2], 
                        'password'          => Hash::make("123456"),
                        'idusuario'         => intval(Auth::user()->id),
                        'avatar'            => null, 
                        'estado'            => 1,
                        'created_at'        => $horaRegistro, 
                        'glosa'             => "IMPORTADO DE ECXEL",
                    ]);
                  // if($registroUsuario==false);{
                  //  dd($datos); 

                  // }
                // dd('llego');
                $trabajador=null;
                $trabajador= DB::table('users')->where('nro_documento',$datos[2])->get(); 
                $nivel_educativo=null;
                $nivel_educativo= $datos[11]; 
               if(empty($nivel_educativo) )
               {  
                $nivel_educativo="IMPORTADO SIN DATOS";
               }else{ 
                DB::table('nivel_educativo')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador[0]->id),  
                        'nivel_educativo'       =>$datos[11], 
                        'centro_estudios'       =>'--------', 
                        'situacion_academica'   =>$datos[14], 
                        'ano_inicio'            =>'---', 
                        'ano_fin'               =>'---',  
                        'nombre_nivel'          =>$datos[13], 
                        'descripcion'           =>'CODIGO DE PROFESIÓN: '.$datos[15],
                        'fecha_creacion'        => $horaRegistro,
                        'estado'                => '1' 
                    ]);  
              }  

              $especialidad=null;
                $especialidad= $datos[16];
               if($especialidad=="NO")
               {  
                $especialidad="IMPORTADO SIN DATOS";
               }else{ 
                DB::table('nivel_educativo')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador[0]->id),  
                        'nivel_educativo'       =>$datos[20], 
                        'centro_estudios'       =>'--------', 
                        'situacion_academica'   =>$datos[18], 
                        'ano_inicio'            =>'---', 
                        'ano_fin'               =>'---',  
                        'nombre_nivel'          =>$datos[17], 
                        'descripcion'           =>'RN :'.$datos[19],
                        'fecha_creacion'        => $horaRegistro,
                        'estado'                => '1' 
                    ]);  
              }   

              // dd('contrato',$trabajador[0]);

               $contratos=null;
                $contratos= $datos[16]; 
               if(empty($contratos) )
               {  
                $contratos="IMPORTADO SIN DATOS";
               }else{  
// dd($datos[33]);
                 DB::table('contratos')
                    ->insert([
                        'id_trabajador'         =>intval($trabajador[0]->id),   
                        'area_trabajador'       =>$trabajador[0]->area_trabajador , 
                        'situacion_laboral'     =>$trabajador[0]->situacion_laboral ,  
                        'regimen_laboral'       =>$trabajador[0]->regimen_laboral, 
                        'cargo_laboral'         =>$trabajador[0]->cargo,  
                        'fecha_resolucion'      =>"-/-/-", 
                        'jornada_laboral'       =>1,
                        'tipo_resolucion'       =>"RESOLUCIÓN DIRECTORIAL", 
                        'fecha_inicio'          =>$datos[33], 
                        // 'fecha_fin'             =>$request-> fechaResolucionFin, 
                        // 'url_doc'               =>'storage/'.$url_Pdf,
                        // 'name_doc'              => $nombre, 
                        // 'id_doc'                =>$documentoD[0]->codigo,
                        // 'folios'                =>$request->numeroFoliosResolucionLaboral,  
                        'descripcion'           =>"IMPORTADO DE PADRON GENRAL",
                        'fecha_creacion'        => date('Y-m-d H:m:s'),
                        'estado'                => '1'  
                    ]);  
              }  


            } 

    } 
    dd('llego');
 

   }




   public function addUserPPPoE()
   {
       $usuario_cliente = null;
       $contrasena_cliente = null;
       $ip = null;
       
       $router = DB::table('router')->get();

       foreach ($router as $rou) {
           $API = new routeros_api();
           $API->debug = false;
           $ARRAY = null;

           $servicios = DB::table('servicio_internet')->where('idrouter',$rou->idrouter)->get();

           if ($API->connect($rou->ip , $rou->usuario , $rou->password, $rou->puerto )) { 
               $ARRAY = $API->comm("/ppp/active/print");

                   foreach ($servicios as $serv) {
                       foreach ($ARRAY as $value) {
                           if ($value['name'] == trim($serv->usuario_cliente)) {
                               $ip = $value['address'];   
                               
                               $ARRAY2 = $API->comm("/ppp/secret/print"); 

                               foreach ($ARRAY2 as $data) {
                                   if ($data['name'] == trim($serv->usuario_cliente)) {
                                       $id = $data['.id'];  
                                   }
                               }
                               
                               $ARRAY2 = $API->comm("/ppp/secret/set", array(
                                     ".id"     => $id,
                                     "remote-address" => $ip
                               )); 

                               //----------Creación de los servicios de internet-----------------                    
                               DB::table('servicio_internet')
                               ->where('idcliente',$serv->idcliente)
                               ->update([
                                   'ip'        => $ip
                               ]);  

                               dd($serv->idcliente, $ip, $serv->usuario_cliente);
                           }
                       }     
                   }                            
               }    

           
       }
   }

   public function addIpPool()
   {
       //dd($request);
       $ip_inicial = null;
       $ip_final = null;
       $pool = DB::table('ip_pool')->get();

       foreach ($pool as $val) {
           $ip_inicial = $val->ip_inicial;
           $ip_final = $val->ip_final;
       }

       $ipsOcupados = DB::table('servicio_internet')
           ->select('ip')
           ->get();

       $rango[] = null;
       $x = 0;
       $bandera = null;

       $ini = strpos($ip_inicial, '.',4)+1;
       $fin = strpos($ip_inicial, '.',$ini);
       $var = substr($ip_inicial, $ini,$fin-$ini);
       $xini = substr($ip_inicial, $fin+1,strlen($ip_inicial));

       $cadena = substr($ip_inicial, 0,$ini);

       $ini = strpos($ip_final, '.',4)+1;
       $fin = strpos($ip_final, '.',$ini);
       $var2 = substr($ip_final, $ini,$fin-$ini);
       $xfin = substr($ip_final, $fin+1,strlen($ip_final));

       for ($i=$var; $i <= $var2; $i++) { 
           $valor = 1;
           $valor2 = 255;
           if ($i == $var) {
               $valor = $xini;
           }            
           if ($i == $var2) {
               $valor2 = $xfin;
           }
           
           for ($a=$valor; $a <= $valor2; $a++) {
               $IP = $cadena.$i.'.'.$a;
               foreach ($ipsOcupados as $value) {
                   $bandera = 0;
                   if ($IP == $value->ip) {
                       $bandera = 1;
                       break;
                   }
               } 
               if ($bandera == 0) {
                   array_push($rango, ['ip' => $cadena.$i.'.'.$a]);
               }                
           }            
       }

       unset($rango[0]);
       //dd($rango);

       $usuario_cliente = null;
       $contrasena_cliente = null;
       $ip = null;
       
       $router = DB::table('router')->get();

       foreach ($router as $rou) {
           

               foreach ($rango as $pool) {
                   //dd($pool);
                   //$servicios = DB::table('servicio_internet')->where('idrouter',$rou->idrouter)->get();
                   //foreach ($servicios as $serv) {
                       //if (empty($serv->ip)) {
                   $API = new routeros_api();
                   $API->debug = false;
                   $ARRAY = null;

                   //$servicios = DB::table('servicio_internet')->where('idrouter',$rou->idrouter)->get();

                   if ($API->connect($rou->ip , $rou->usuario , $rou->password, $rou->puerto )) { 
                       $ARRAY = $API->comm("/ppp/secret/print"); 

                           foreach ($ARRAY as $value) {
                               //if ($value['name'] == trim($serv->usuario_cliente)) {
                                   
                                   $ARRAY2 = $API->comm("/ppp/secret/set", array(
                                         ".id"     => $value['.id'],
                                         "remote-address" => $pool['ip']
                                   )); 

                                   //----------Creación de los servicios de internet-----------------                    
                                   DB::table('servicio_internet')
                                   ->where('usuario_cliente',trim($value['name']))
                                   ->update([
                                       'ip'        => $pool['ip']
                                   ]);  

                                   //dd($serv->idcliente, $ip, $serv->usuario_cliente);
                                   //break 1;
                               }
                           //} 
                           //break; 

                       //}                        
                   }         
               //}

                                      
           }
           
       }
   }

   public function addIpPool2()
   {
       //dd($request);
       $ip_inicial = null;
       $ip_final = null;
       $pool = DB::table('ip_pool')->get();

       foreach ($pool as $val) {
           $ip_inicial = $val->ip_inicial;
           $ip_final = $val->ip_final;
       }

       $ipsOcupados = DB::table('servicio_internet')
           ->select('ip')
           ->get();

       $rango[] = null;
       $x = 0;
       $bandera = null;

       $ini = strpos($ip_inicial, '.',4)+1;
       $fin = strpos($ip_inicial, '.',$ini);
       $var = substr($ip_inicial, $ini,$fin-$ini);
       $xini = substr($ip_inicial, $fin+1,strlen($ip_inicial));

       $cadena = substr($ip_inicial, 0,$ini);

       $ini = strpos($ip_final, '.',4)+1;
       $fin = strpos($ip_final, '.',$ini);
       $var2 = substr($ip_final, $ini,$fin-$ini);
       $xfin = substr($ip_final, $fin+1,strlen($ip_final));

       for ($i=$var; $i <= $var2; $i++) { 
           $valor = 1;
           $valor2 = 255;
           if ($i == $var) {
               $valor = $xini;
           }            
           if ($i == $var2) {
               $valor2 = $xfin;
           }
           
           for ($a=$valor; $a <= $valor2; $a++) {
               $IP = $cadena.$i.'.'.$a;
               foreach ($ipsOcupados as $value) {
                   $bandera = 0;
                   if ($IP == $value->ip) {
                       $bandera = 1;
                       break;
                   }
               } 
               if ($bandera == 0) {
                   array_push($rango, ['ip' => $cadena.$i.'.'.$a]);

                   $router = DB::table('router')->get();

                   foreach ($router as $rou) {   
                       $API = new routeros_api();
                       $API->debug = false;
                       $ARRAY = null;

                       if ($API->connect($rou->ip , $rou->usuario , $rou->password, $rou->puerto )) { 
                           $ARRAY = $API->comm("/ppp/secret/print"); 

                               foreach ($ARRAY as $value) {
                                   if ($value['name'] == trim($serv->usuario_cliente)) {
                                       
                                       $ARRAY2 = $API->comm("/ppp/secret/set", array(
                                             ".id"     => $value['.id'],
                                             "remote-address" => $pool['ip']
                                       )); 

                                       //----------Creación de los servicios de internet-----------------                    
                                       DB::table('servicio_internet')
                                       ->where('usuario_cliente',trim($value['name']))
                                       ->update([
                                           'ip'        => $pool['ip']
                                       ]);  

                                       //dd($serv->idcliente, $ip, $serv->usuario_cliente);
                                       //break 1;
                                   }
                               } 
                               //break; 

                           //}                        
                       }       
                   }
               }                
           }            
       }

       unset($rango[0]);
       //dd($rango);

       $usuario_cliente = null;
       $contrasena_cliente = null;
       $ip = null;
       
       $router = DB::table('router')->get();

       foreach ($router as $rou) {
           

               foreach ($rango as $pool) {
                   //dd($pool);
                   //$servicios = DB::table('servicio_internet')->where('idrouter',$rou->idrouter)->get();
                   //foreach ($servicios as $serv) {
                       //if (empty($serv->ip)) {
                   $API = new routeros_api();
                   $API->debug = false;
                   $ARRAY = null;

                   //$servicios = DB::table('servicio_internet')->where('idrouter',$rou->idrouter)->get();

                   if ($API->connect($rou->ip , $rou->usuario , $rou->password, $rou->puerto )) { 
                       $ARRAY = $API->comm("/ppp/secret/print"); 
                       $cont = count($ARRAY);

                           foreach ($ARRAY as $value) {
                               //if ($value['name'] == trim($serv->usuario_cliente)) {
                                   
                                   $ARRAY2 = $API->comm("/ppp/secret/set", array(
                                         ".id"     => $value['.id'],
                                         "remote-address" => $pool['ip']
                                   )); 

                                   //----------Creación de los servicios de internet-----------------                    
                                   DB::table('servicio_internet')
                                   ->where('usuario_cliente',trim($value['name']))
                                   ->update([
                                       'ip'        => $pool['ip']
                                   ]);  

                                   //dd($serv->idcliente, $ip, $serv->usuario_cliente);
                                   //break 1;
                               }
                           //} 
                           //break; 

                       //}                        
                   }         
               //}

                                      
           }
           
       }
   }

   public function mapaPrueba(){
    return view('forms.pruebas.mapaAutocomplete');
   //return view('forms.clientes.mapa.modalUpdate');
}

public function mapaClientes(){
    //dd("llego");

    
        $zonas  = DB::table('zonas')->where('estado','1')->get(); 

        $usuarios = DB::table('servicio_internet')
        ->select('clientes.nombres','servicio_internet.emisor_conectado','equipos.modelo','modo_equipo.descripcion','servicio_internet.latitud','servicio_internet.longitud','zonas.nombre', DB::raw('equipos.latitud as latitudE'), DB::raw('equipos.longitud as longitudE'),'equipos.idequipo')
        ->join('clientes', 'servicio_internet.idcliente','=','clientes.idcliente') 
        ->join('equipos', 'equipos.idequipo', '=', 'servicio_internet.emisor_conectado') 
        ->join('modo_equipo', 'modo_equipo.idmodo', '=', 'equipos.idmodo')
        ->join('zonas', 'zonas.id', '=', 'servicio_internet.idZona')
        ->where('modo_equipo.descripcion',  'EMISOR')
        //->groupBy('equipos.modelo')
        ->get();  


       $equipos = DB::table('servicio_internet')
       ->select('equipos.modelo','modo_equipo.descripcion', 'equipos.idequipo','zonas.nombre','equipos.idZona',DB::raw('equipos.descripcion as modeloE'),DB::raw('equipos.latitud as latitudE'), DB::raw('equipos.longitud as longitudE')) 
       ->join('clientes', 'servicio_internet.idcliente','=','clientes.idcliente') 
       ->join('equipos', 'equipos.idequipo', '=', 'servicio_internet.emisor_conectado')
       ->join('modo_equipo', 'modo_equipo.idmodo', '=', 'equipos.idmodo')
       ->join('zonas', 'zonas.id', '=', 'servicio_internet.idZona')
       ->where('modo_equipo.descripcion',  'EMISOR')
       //->groupBy('equipos.modelo')
       ->get();
       //dd($usuarios ,$equipos);
       //dd($zonas,$usuarios,$equipos);

        return view('forms.clientes.mapa.lstClientesMapa', [
            'zonas'=>$zonas,
            'equipos' => $equipos ,
            'usuarios'=>$usuarios
    
        ]);
    

}

public function recibir(Request $request)
{  
        session(['latitud' => $request->latitude]);
        session(['longitud' => $request->longitud]);
        session(['direccion' => $request->direccionf]);  
}
public function pasar(Request $request)
{ 
        $datos = array(); 
        $latitud = session('latitud');
        $longitud = session('longitud');
        $direccion = session('direccion'); 
        $datos['latitud'] = $latitud;
        $datos['longitud'] = $longitud;
        $datos['direccion'] =  $direccion;
        /*if( $latitud !=null or  $latitud=='true'  )
        {
            $request->session()->flash('latitud' );
            $request->session()->flash('longitud' );
            $request->session()->flash('direccion' );
        } */
        //Session::flush();
       // dd($datos);
    return response()->json($datos);
}
public function pasarCreate(Request $request)
{ 
        $datos = array(); 
        $latitud = session('latitud');
        $longitud = session('longitud');
        $direccion = session('direccion'); 
        $datos['latitud'] = $latitud;
        $datos['longitud'] = $longitud;
        $datos['direccion'] =  $direccion;
        /*if( $latitud !=null or  $latitud=='true'  )
        {
            $request->session()->flash('latitud' );
            $request->session()->flash('longitud' );
            $request->session()->flash('direccion' );
        }  */

       // $request->session()->flash('latitud' );
      //  $request->session()->flash('longitud' );
       // $request->session()->flash('direccion' );
        //Session::flush();
       // dd($datos);
    return response()->json($datos);
}
public function iframe(){
    //$identificador_carrito = session('latitud');
    //$cookie_leida = $request->cookie('nombre');
    //dd($cookie_leida);
    /*$id = session('latitud');
    dd($id);*/
    $datos = array();
    $latitud = session('latitud');
        $longitud = session('longitud');
        $direccion = session('direccion');
         
        $datos['latitud'] = $latitud;
        $datos['longitud'] = $longitud;
        $datos['direccion'] =  $direccion;
       // Session::flush();
       //if(is_null($latitud)) 
       
        dd($datos);
    
    return view('forms.pruebas.iframe');
}

}
