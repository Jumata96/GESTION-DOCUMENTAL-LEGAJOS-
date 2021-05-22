<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Storage;
Use DB;


class TrabajadorController extends Controller
{
    public function index(){
        //dd('ingreso');

        return view('forms.general.general');
    }
    public function filiacionEidentidad(){
        //dd('ingreso');

        return view('forms.filiacion.filiacionEidentidad');
    }
    public function situacionAcademica(){
        //dd('ingreso');

        return view('forms.situacionAcademica.general');
    }
    public function ingresoReingreso(){
        //dd('ingreso');

        return view('forms.ingresoReingreso.general');
    }
    public function trayectoria(){
        //dd('ingreso');

        return view('forms.TrayectoriaLaboral.general');
    }
    public function store(Request $request){
        //   dd($request);
        
            $rules = array(      
                'tipoResolucion'                => 'required',
                'archivo'                       => 'required|mimes:pdf', 
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

                 DB::table('resolucion')
                    ->insert([
                        'id_trabajador'          =>intval($request->idTrabajador),
                        'fecha_resolucion'       => $request->fechaResolucion,
                        'folios_resolucion'      => $request->foliosResolucion, 
                        'numero_resolucion'      => $request->numeroResolucion, 
                        'lugar_fisico'           => $request->lugarFisicoResolucion,  
                        'url_doc'                   =>'storage/'.$url_Pdf,
                        'extencion'              => $extension,  
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


                    
         return view('forms.situacionAcademica.general');
        // return redirect()->action('${App\Http\Controllers\HomeController@index}', ['parameterKey' => 'value']);
    }
    // public function buscarTrabajador($id)
    public function buscarTrabajador(Request  $request)
    {
        //  dd('llego');
        // dd($request); 
        $error=null;
        $trabajador = DB::table('users') 
            ->where('nro_documento',$id)
            // iddocumento
            ->where('idtipo','TRA')
            ->get();
            
            if(count($trabajador) >0){
                     return ([$trabajador,"estado"=>"consulto"]); 
            }else{ 
                    return ([$trabajador,"estado"=>"error"]); 
            }
    }

}
