<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Collection as Collection;
use DB;
use Validator;
use Auth;

class UsuarioController extends Controller
{
    public function index()
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

        //--

        $usuarios = DB::table('users')->whereIn('idtipo', ['ADM','VEN','TEC'])->get();
        //dd($usuarios);
        //$usuarios = DB::table('users')->where('estado', 1)->get();

        return view('forms.usuarios.lstUsuarios', [
                    'usuarios'   => $usuarios,
                    'valida'     => $valida
                ]);
    }


    public function create()
    {
        $empresa = DB::table('empresa')->where('estado',1)->get();
        $tipo_documento = DB::table('documento')
            ->select('iddocumento', 'descripcion', 'dsc_corta')
            ->where('estado', '1')
            ->get();

        return view('forms.usuarios.addUsuario',[
            'empresa'           => $empresa,
            'tipo_documento'    => $tipo_documento
        ]);
    }

    public function store(Request $request)
    {
        //dd($request);
        $autoriza = null;
        $rules = array(     
            'idempresa'     => 'required',
            'iddocumento'   => 'required',
            'nro_documento' => 'required',
            'nombre'        => 'required',
            'apellidos'     => 'required',
            'usuario'       => 'required|string|max:255',
            'email'         => 'required|string|email|max:255|unique:users',
            'password'      => 'required|string|min:6|confirmed',
        );

        $validator = Validator::make ( $request->all(), $rules );

        if ($validator->fails()){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'error');            
            return response()->json($var);
        }
        //dd("validacion");
        $idusu = Auth::user()->id;
        $validacion = DB::table('validacion')->where('idusuario',$idusu)->get();
        $parametros = DB::table('parametros')->whereIn('tipo_parametro',['CLIENTES','FACTURACION','GENERAL'])->get();

        foreach ($parametros as $parametro) {
            if ($parametro->parametro == 'AUTORIZACION_ESTADO') {
                $autoriza = $parametro->valor; 
            }
        }
        //dd($parametros);
        //dd($autoriza,Auth::user()->idtipo);
        //$id = count(DB::table('users')->get()) + 1;
        if ($autoriza == 'SI' and Auth::user()->idtipo != 'ADM') {
            DB::table('users')
            ->insert([
                'idempresa'         => $request->idempresa,
                'nombre'            => $request->nombre,
                'apellidos'         => $request->apellidos,
                'idtipo'            => $request->idtipo,
                'estado'            => 0,
                'email'             => $request->email,
                'password'          => Hash::make($request->password),
                'usuario'           => $request->usuario,
                'iddocumento'       => $request->iddocumento,
                'nro_documento'     => $request->nro_documento,
                'cargo'             => $request->cargo,
                'avatar'            => null,
                'telefono'          => $request->telefono,
                'glosa'             => $request->glosa,
                'idusuario'         => Auth::user()->id,
                'created_at'        => date('Y-m-d h:m:s')
            ]);
        }else{
            DB::table('users')
            ->insert([
                'idempresa'         => $request->idempresa,
                'nombre'            => $request->nombre,
                'apellidos'         => $request->apellidos,
                'idtipo'            => $request->idtipo,
                'estado'            => 1,
                'email'             => $request->email,
                'password'          => Hash::make($request->password),
                'usuario'           => $request->usuario,
                'iddocumento'       => $request->iddocumento,
                'nro_documento'     => $request->nro_documento,
                'cargo'             => $request->cargo,
                'avatar'            => null,
                'telefono'          => $request->telefono,
                'glosa'             => $request->glosa,
                'idusuario'         => Auth::user()->id,
                'created_at'        => date('Y-m-d h:m:s')
            ]);
        }
        
        

        if (count($validacion) === 0) {
            DB::table('validacion')
            ->insert([
                'idusuario' => $idusu,
                'valor'     => 1
            ]);
        }else{
            DB::table('validacion')
            ->where('idusuario',strval($idusu))
            ->update(['valor' => 1]);
            
        }

        return redirect('/usuarios');
    }


    public function show($id)
    {
        $usuario = DB::table('users')
                    ->where('id',$id)->get();
        $empresa = DB::table('empresa')->where('estado',1)->get();
        $tipo_documento = DB::table('documento')
            ->select('iddocumento', 'descripcion', 'dsc_corta')
            ->where('estado', '1')
            ->get();

        return view('forms.usuarios.updUsuario',[
            'usuario'           => $usuario,
            'empresa'           => $empresa,
            'tipo_documento'    => $tipo_documento
        ]);
    }


     public function update(Request $request)
    { 
         $rules = array(     
            'idempresa'     => 'required',
            'nro_documento' => 'required',
            'nombre'        => 'required',
            'apellidos'     => 'required',
            'usuario'       => 'required|string|max:255',
            'email'         => 'required|string|email|max:255',
        );

        $validator = Validator::make ( $request->all(), $rules );

        if ($validator->fails()){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'error');            
            return response()->json($var);
        }
        

        DB::table('users')
        ->where('id',strval($request->id))
        ->update([
            'idempresa'         => $request->idempresa,
            'idtipo'            => $request->idtipo,
            'nombre'			=> $request->nombre,
            'apellidos'         => $request->apellidos,
            'email'            	=> $request->email,
            'usuario'         	=> $request->usuario,
            'iddocumento'       => $request->iddocumento,
            'nro_documento'     => $request->nro_documento,
            'cargo'        		=> $request->cargo,
            'avatar'            => null,
            'telefono'    		=> $request->telefono,
            'glosa'             => $request->glosa 
        ]);
                
        $idusu = Auth::user()->id;
        $validacion = DB::table('validacion')->where('idusuario',$idusu)->get();

        
        if (Auth::user()->idtipo == 'ADM') {
            if (count($validacion) > 0) {           
                DB::table('validacion')
                ->where('idusuario',strval($idusu))
                ->update(['valor' => 2]);  
            }
        }

        return redirect('/usuarios');
    }

    public function destroy($id)
    {        
    	//dd($id);
        DB::table('users')
            ->where('id',$id)->delete();

        $idusu = Auth::user()->id;
        $validacion = DB::table('validacion')->where('idusuario',$idusu)->get();

        if (count($validacion) === 0) {
            DB::table('validacion')
            ->insert([
                'idusuario' => $idusu,
                'valor'     => 3
            ]);
        }else{
            DB::table('validacion')
            ->where('idusuario',strval($idusu))
            ->update(['valor' => 3]);
            
        }

        return redirect('/usuarios');
    }


    public function disabled(Request $request)
    {
        DB::table('users')
            ->where('id',$request->id)
            ->update([
                'estado'    => 0
            ]);

        $users = DB::table('users')->where('id',$request->id)->get();
        $collection = Collection::make($users);
                
        return response()->json($collection->toJson());   
    }

    public function habilitar(Request $request)
    {
        DB::table('users')
            ->where('id',strval($request->id))
            ->update([
                'estado'    => 1
            ]);

        $users = DB::table('users')->where('id',$request->id)->get();
        $collection = Collection::make($users);
                
        return response()->json($collection->toJson());   
    }

    public function updContra(Request $request)
    {        
        //dd($request);
        $rules = array(     
            'contra'    => 'required',
            'contra2'   => 'required',
            'contra3'   => 'required'
        );

        $validator = Validator::make ( $request->all(), $rules );

        if ($validator->fails()){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'error');            
            return response()->json($var);
        }

        $contra = null;
        $user = DB::table('users')->where('id',strval($request->id))->get();

        foreach ($user as $val) {
            $contra = $val->password;
        }

        if(!Hash::check($request->contra, $contra)){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'BAD_CONTRA');
            return response()->json($var);
        }

        if ($request->contra2 != $request->contra3) {
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'BAD_CONTRA2');
            return response()->json($var);
        }

        DB::table('users')
        ->where('id',strval($request->id))
        ->update([
            'password'  => Hash::make($request->contra2),
        ]);

        $tipo = DB::table('tipo')->get();

        $collection = Collection::make($tipo);
                
        return response()->json($collection->toJson());   
    }

    public function verificarID(Request $request)
    {
        //dd($request);
        $usuario = DB::table('users')->where('nro_documento', $request->codigo)->get();

        if(count($usuario) > 0){
            return response()->json(array('errors'=> 'EXISTE'));
        }
        
        $collection = Collection::make($usuario);
                
        return response()->json($collection->toJson());   
    }

    public function verificarUsuario(Request $request)
    {
        //dd($request);
        $usuario = DB::table('users')->where('usuario', $request->codigo)->get();

        if(count($usuario) > 0){
            return response()->json(array('errors'=> 'EXISTE'));
        }
        
        $collection = Collection::make($usuario);  
        return response()->json($collection->toJson());   
    }

///  gestion de usuarios trabajadores
     public function indexTrabajadores()
    {
        // dd('llego');
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

        //--

        $usuarios = DB::table('users')->where('idtipo','TRA' )->get();
        //dd($usuarios);
        //$usuarios = DB::table('users')->where('estado', 1)->get();

        return view('forms.trabajadores.lstUsuarios', [
                    'usuarios'   => $usuarios,
                    'valida'     => $valida
                ]);
    }
    public function createTrabajador()
    {
        $empresa = DB::table('empresa')->where('estado',1)->get();
        $situacion_laboral = DB::table('situacion_laboral')->where('estado',1)->get();
        $regimen_laboral = DB::table('regimen_laboral')->where('estado',1)->get();
        $cargo_laboral = DB::table('cargo_laboral')->where('estado',1)->get();
        $area_laboral = DB::table('area_laboral')->where('estado',1)->get();
        $tipo_documento = DB::table('documento')
            ->select('iddocumento', 'descripcion', 'dsc_corta')
            ->where('estado', '1')
            ->get();
            //  dd( $cargo_laboral);

        return view('forms.trabajadores.addUsuario',[
            'empresa'           => $empresa,
            'tipo_documento'    => $tipo_documento,
            'situacion_laboral'    => $situacion_laboral,
            'regimen_laboral'    => $regimen_laboral,
            'cargo_laboral'    => $cargo_laboral,
            'area_laboral'    => $area_laboral,
        ]);
    }
    
    public function storeUsuarioTrabajador(Request $request)
    {
        //  dd($request);
        $autoriza = null;
        $rules = array(     
            'idempresa'         => 'required',
            'iddocumento'       => 'required',
            'nro_documento'     => 'required',
            'nombre'            => 'required',
            'idSexo'            => 'required',
            'apellidos'         => 'required',
            'situacionLaboral'  => 'required',
            'regimenLaboral'    => 'required',
            'cargo'             => 'required',
            'areaLaboral'       => 'required',
            'tipoTrabajador'    => 'required', 
            'email'             => 'required|string|email|max:255|unique:users',
            // 'password'      => 'required|string|min:6|confirmed',
        );

        $validator = Validator::make ( $request->all(), $rules );

        if ($validator->fails()){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'error');            
            return response()->json($var);
        }
        //dd("validacion");
        $idusu = Auth::user()->id;
        $validacion = DB::table('validacion')->where('idusuario',$idusu)->get();
        $parametros = DB::table('parametros')->whereIn('tipo_parametro',['CLIENTES','FACTURACION','GENERAL'])->get();

        foreach ($parametros as $parametro) {
            if ($parametro->parametro == 'AUTORIZACION_ESTADO') {
                $autoriza = $parametro->valor; 
            }
        }
        //dd($parametros);
        //dd($autoriza,Auth::user()->idtipo);
        //$id = count(DB::table('users')->get()) + 1;
        if ($autoriza == 'SI' and Auth::user()->idtipo != 'ADM') {
            DB::table('users')
            ->insert([
                'idempresa'         => $request->idempresa,
                'nombre'            => $request->nombre,
                'apellidos'         => $request->apellidos,
                'idtipo'            => $request->tipoTrabajador,
                'estado'            => 0,
                'email'             => $request->email,  
                'iddocumento'       => $request->iddocumento,
                'nro_documento'     => $request->nro_documento,
                'direccion'         => $request->direccion,
                'cargo'             => $request->cargo,
                'avatar'            => null,
                'telefono'          => $request->telefono,
                'glosa'             => $request->glosa,
                'idusuario'         => Auth::user()->id,
                'created_at'        => date('Y-m-d h:m:s')
            ]);
        }else{
            DB::table('users')
            ->insert([
                'idempresa'         => $request->idempresa,
                'nombre'            => $request->nombre,
                'apellidos'         => $request->apellidos,
                'idtipo'            => $request->tipoTrabajador,
                'estado'            => 1,
                'email'             => $request->email,
                'password'          => Hash::make("123456"),
                'usuario'           => $request->nro_documento,
                'iddocumento'       => intval($request->iddocumento),
                'nro_documento'     => $request->nro_documento,
                'cargo'             => $request->cargo,
                'direccion'         => $request->direccion,
                'avatar'            => null, 
                'telefono'          => $request->telefono,
                'glosa'             => $request->glosa,
                'idusuario'         => Auth::user()->id,
                'area_trabajador'   => $request->areaLaboral,
                'situacion_laboral' => $request->situacionLaboral,  
                'regimen_laboral'   => $request->regimenLaboral,
                'SEXO'             => $request->idSexo,
                'created_at'        => date('Y-m-d h:m:s')
            ]);
        }
        
        

        if (count($validacion) === 0) {
            DB::table('validacion')
            ->insert([
                'idusuario' => $idusu,
                'valor'     => 1
            ]);
        }else{
            DB::table('validacion')
            ->where('idusuario',strval($idusu))
            ->update(['valor' => 1]);
            
        }

        return redirect('/trabajadores');
    }
    public function showUsuarioTrabjador($id)
    {
        $usuario = DB::table('users')
                    ->where('id',$id)->get();
        $empresa = DB::table('empresa')->where('estado',1)->get();
        $situacion_laboral = DB::table('situacion_laboral')->where('estado',1)->get();
        $regimen_laboral = DB::table('regimen_laboral')->where('estado',1)->get();
        $cargo_laboral = DB::table('cargo_laboral')->where('estado',1)->get();
        $area_laboral = DB::table('area_laboral')->where('estado',1)->get();
        $tipo_documento = DB::table('documento')
            ->select('iddocumento', 'descripcion', 'dsc_corta')
            ->where('estado', '1')
            ->get();

        return view('forms.trabajadores.updUsuario',[
            'usuario'           => $usuario,
            'empresa'           => $empresa,
            'situacion_laboral'    => $situacion_laboral,
            'regimen_laboral'    => $regimen_laboral,
            'cargo_laboral'    => $cargo_laboral,
            'area_laboral'    => $area_laboral,
            'tipo_documento'    => $tipo_documento
        ]);
    }
    public function updateUsuarioTrabajador(Request $request)
    { 
        // dd($request);
         $rules = array(     
             'idempresa'         => 'required',
            'iddocumento'       => 'required',
            'nro_documento'     => 'required',
            'nombre'            => 'required',
            'idSexo'            => 'required',
            'apellidos'         => 'required',
            'situacionLaboral'  => 'required',
            'regimenLaboral'    => 'required',
            'cargo'             => 'required',
            'areaLaboral'             => 'required',
            'tipoTrabajador'    => 'required',  
        );

        $validator = Validator::make ( $request->all(), $rules );

        if ($validator->fails()){
            $var = $validator->getMessageBag()->toarray();
            array_push($var, 'error');            
            return response()->json($var);
        }
        

        DB::table('users')
        ->where('id',strval($request->id))
        ->update([
            'idempresa'         => $request->idempresa,
            'idtipo'            => $request->tipoTrabajador,
            'nombre'			=> $request->nombre,
            'apellidos'         => $request->apellidos,
            'email'            	=> $request->email,
            // 'usuario'         	=> $request->usuario,
            'iddocumento'       => $request->iddocumento,
            'direccion'         => $request->direccion,
            'nro_documento'     => $request->nro_documento,
            'cargo'        		=> $request->cargo,
            'avatar'            => null,
            'telefono'    		=> $request->telefono,
            'area_trabajador'   => $request->areaLaboral,
            'situacion_laboral' => $request->situacionLaboral,  
            'regimen_laboral'   => $request->regimenLaboral,
            'SEXO'             => $request->idSexo, 
            'glosa'             => $request->glosa 
        ]);
                
        $idusu = Auth::user()->id;
        $validacion = DB::table('validacion')->where('idusuario',$idusu)->get();

        
        if (Auth::user()->idtipo == 'ADM') {
            if (count($validacion) > 0) {           
                DB::table('validacion')
                ->where('idusuario',strval($idusu))
                ->update(['valor' => 2]);  
            }
        }

        return redirect('/trabajadores');
    }




}
