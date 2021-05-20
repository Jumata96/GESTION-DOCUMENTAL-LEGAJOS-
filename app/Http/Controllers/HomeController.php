<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Illuminate\Support\Collection as Collection;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function herramientaPlantilla(Request $req)
    {  
        //dd($req);

        DB::table('users')
        ->where('id',Auth::user()->id)
        ->update([
            'cabecera_color'            => $req->cabecera_color,
            'footer_color'              => $req->footer_color,
            'menu_dark'                 => (isset($req->menu_dark)? 1 : 0),
            'menu_colapsible'           => (isset($req->menu_colapsible)? 1 : 0),
            'cabecera_dark'             => (isset($req->cabecera_dark)? 1 : 0),
            'cabecera_fija'             => (isset($req->cabecera_fija)? 1 : 0),
            'cabecera_fondo_ocultar'    => (isset($req->cabecera_fondo_ocultar)? 1 : 0),
            'footer_dark'               => (isset($req->footer_dark)? 1 : 0),
            'footer_fija'               => (isset($req->footer_fija)? 1 : 0),
            'footer_ocultar'            => (isset($req->footer_ocultar)? 1 : 0) 
        ]);

        return response()->json(array('valor' => 'CONFORME'));   
        
    }

}
