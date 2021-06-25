<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use Auth;
use DB;
class HerramientasController extends Controller
{
     
    public function listarTiposDocumentos()
    {
        // dd('llego');
        $documentos = DB::table('documento') 
            ->where('estado',1)
            ->get(); 
        return ($documentos);
    }
    public function listarDepartamentos()
    {
        // dd('llego');
        $departamentos = DB::table('ubdepartamento')->get(); 
        return ($departamentos);
    }
    public function listarProvincias($id)
    { 
        $provincias = DB::table('ubprovincia')->where('idDepa',intval($id))->get(); 
        return ($provincias);
    }
    public function listarDistritos($id)
    { 
        $distritos = DB::table('ubdistrito')->where('idProv',intval($id))->get(); 
        return ($distritos);
    }
    public function activarSidebar(Request $request)
    {
          session(['trabajador_Id' => $request->trabajador]); 
          //agregamosla session para que se active el  sidebard
    }
    public function desactivarSidebar(Request $request)
    {
          session()->flash('trabajador_Id' );
          //eliminamos session para que se desactive el  sidebard
    }
    public function sidebarEstado()
    { 
          $trabajador_id = session('trabajador_Id');//obtenber los datos
        //   dd($trabajador_id);
          if(is_null($trabajador_id)){
            // dd($trabajador_id,'llego'); 
            return (["estado"=>"desactivado"]);
          }else{
            return (["estado"=>"activado"]);

          } 
    }
    

}
