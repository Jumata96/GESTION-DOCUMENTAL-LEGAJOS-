<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Auth::routes();

// Route::resource('/notas', 'NotaController')->middleware('auth');


Route::get('/'                      ,'Auth\LoginController@showLoginForm')->name('/');
Route::get('/login'                 ,'Auth\LoginController@showLoginForm')->name('login'); 
// Route::get('/cerrar','HomeController@cerrar')->name('cerrar'); 
Route::post('/herramientaPlantilla' ,'HomeController@herramientaPlantilla')->name('herramientaPlantilla');
Route::get('/cerrar'                ,'HomeController@cerrar');



//legajo
 
Route::group(['middleware' => 'auth'], function(){ 
     // Route::get('/home', 'HomeController@index')->name('home');
    //Usuarios
    
    Route::get('/usuarios'                ,'UsuarioController@index');
    Route::get('/usuario/nuevo'           ,'UsuarioController@create');
    Route::post('/usuario/grabar'         ,'UsuarioController@store');
    Route::get('/usuario/mostrar/{id}'    ,'UsuarioController@show');
    Route::post('/usuario/actualizar'     ,'UsuarioController@update');
    Route::get('/usuario/eliminar/{id}'   ,'UsuarioController@destroy');
    Route::post('/usuario/desabilitar'    ,'UsuarioController@disabled');
    Route::post('/usuario/habilitar'      ,'UsuarioController@habilitar');
    Route::post('/usuario/updContra'      ,'UsuarioController@updContra');
    Route::post('usuario/verificarID'     ,'UsuarioController@verificarID');
    Route::post('usuario/verificarUsuario','UsuarioController@verificarUsuario'); 
    //gestion de usuario trabajador
    Route::get('/trabajadores'            ,'UsuarioController@indexTrabajadores');
    Route::get('/trabajador/nuevo'        ,'UsuarioController@createTrabajador');
    Route::post('/trabajador/grabar'      ,'UsuarioController@storeUsuarioTrabajador');
    Route::get('/trabajador/mostrar/{id}' ,'UsuarioController@showUsuarioTrabjador');
    Route::post('/trabajador/actualizar'  ,'UsuarioController@updateUsuarioTrabajador');  
    //Empresa
    Route::get('/empresa'               ,'EmpresaController@index');
    Route::get('/empresa/nuevo'         ,'EmpresaController@create');
    Route::post('/empresa/grabar'       ,'EmpresaController@store');
    Route::get('/empresa/mostrar/{id}'  ,'EmpresaController@show');
    Route::post('/empresa/actualizar'   ,'EmpresaController@update');
    Route::get('/empresa/eliminar/{id}' ,'EmpresaController@destroy');
    Route::post('/empresa/verificarID','EmpresaController@verificarID');


    // Route::get('/gestion-trabajador','TrabajadorController@index')->name('gestion-trabajador'); 
    
   
    Route::get('/home'                              ,'TrabajadorController@index')->name('home');
    Route::get('/gestion-trayectoria'               ,'TrabajadorController@trayectoria')->name('gestion-trayectoria');  
    Route::get('/gestion-ingreso'                   ,'TrabajadorController@ingresoReingreso')->name('gestion-ingreso');  
    Route::get('/gestion-incentivos'                ,'TrabajadorController@incentivos')->name('gestion-incentivos');  
    Route::get('/gestion-pension'                   ,'TrabajadorController@pension')->name('gestion-pension');  
    Route::get('/gestion-premios'                   ,'TrabajadorController@premios')->name('gestion-premios'); 
    Route::get('/gestion-sanciones'                 ,'TrabajadorController@sanciones')->name('gestion-sanciones'); 
    // Route::get('/gestion-otros','TrabajadorController@otros')->name('gestion-otros');  
    

    //gestion de fileacion e idendificacion  SECCION-01
    Route::get('/gestion-fileacion'                 ,'FiliacionIdentificacion@filiacionEidentidad')->name('gestion-fileacion'); 
    Route::get('/fileacion-direcciones'             ,'FiliacionIdentificacion@direccionesList') ;
    Route::post('/fileacion-direcciones/agregar'    ,'FiliacionIdentificacion@agregarDireccion');
    Route::get('/eliminarDireccion/{id}'            ,'FiliacionIdentificacion@eliminarDireccion');
    Route::get('/fileacion-DJ'                      ,'FiliacionIdentificacion@archivosList') ;
    Route::post('/fileacion-dj/agregar'             ,'FiliacionIdentificacion@agregarArchivosSec1');
    Route::get('/eliminarDJ/{id}'                   ,'FiliacionIdentificacion@eliminarArchivosSec1');

    //nivel educativo  SECCION-02
    Route::get('/gestion-academica'                     ,'NivelEducativoController@situacionAcademica')->name('gestion-academica'); 
    Route::get('/nivelAcademico-Documentos'             ,'NivelEducativoController@archivosList');
    Route::get('/nivelAcademico-eliminarDocumento/{id}' ,'NivelEducativoController@eliminarArchivosSec2');
    Route::post('/nivelAcademico-doc/agregar'           ,'NivelEducativoController@agregarArchivosSec2'); 
    Route::get('/nivelAcademico/list'                   ,'NivelEducativoController@nivelEducativoList') ;
    Route::post('/nivelAcademico/agregar'               ,'NivelEducativoController@agregarNivelAcademicoDet');
    Route::post('/eliminarNivelEducativo'               ,'NivelEducativoController@eliminarNivelEducativo');

    //capacitaciones  SECCION-03
    Route::get('/gestion-capacitaciones'                ,'CapacitacionesController@capacitacionesIndex')->name('gestion-capacitaciones'); 
    Route::get('/capacitaciones-Documentos'             ,'CapacitacionesController@archivosList');
    Route::post('/capacitaciones-doc/agregar'           ,'CapacitacionesController@agregarArchivosSec3');     
    Route::get('/capacitaciones-eliminarDocumento/{id}' ,'CapacitacionesController@eliminarArchivosSec3'); 
    Route::get('/capacitaciones/list'                   ,'CapacitacionesController@nivelEducativoList') ;
    Route::post('/capacitaciones/agregar'               ,'CapacitacionesController@agregarNivelAcademicoDet');
    Route::post('/eliminarDocumento'                    ,'CapacitacionesController@eliminarNivelEducativo');

    //contratos     SECCION-04

    Route::get('/gestion-Contratos'                      ,'ContratosController@ContratosIndex')->name('gestion-Contratos'); 
    Route::get('/Contratos-Documentos'                   ,'ContratosController@archivosList');
    Route::post('/Contratos-doc/agregar'                ,'ContratosController@agregarArchivosSec4');     
    Route::get('/Contratos-eliminarDocumento/{id}'      ,'ContratosController@eliminarArchivosSec4'); 
    Route::get('/Contratos/list'                        ,'ContratosController@ContratosList') ;
    Route::post('/Contratos/agregar'                    ,'ContratosController@agregarNivelAcademicoDet');
    Route::post('/Contratos/eliminarDocumento'          ,'ContratosController@eliminarNivelEducativo');


    // gestion-Renuncias SECCION-05
    Route::get('/gestion-Renuncias'                     ,'RenunciasController@Index')->name('gestion-Renuncias'); 
    Route::get('/Renuncias-Documentos'                  ,'RenunciasController@archivosList'); 
    Route::get('/Renuncias-eliminarDocumento/{id}'      ,'RenunciasController@eliminarArchivos'); 
    Route::get('/Renuncias/list'                        ,'RenunciasController@DatosList') ;
    Route::post('/Renuncias/agregar'                    ,'RenunciasController@agregarDatos');
    Route::post('/Renuncias/eliminar'                   ,'RenunciasController@eliminarDatos');

    //Desaplazamiento   SECCION-06
    Route::get('/gestion-Desplazamiento'                     ,'DesplazamientoController@Index')->name('gestion-Desplazamiento');  
    Route::get('/Desplazamiento-Documentos'                  ,'DesplazamientoController@archivosList'); 
    Route::get('/Desplazamiento-eliminarDocumento/{id}'      ,'DesplazamientoController@eliminarArchivos'); 
    Route::get('/Desplazamiento/list'                        ,'DesplazamientoController@DatosList') ;
    Route::post('/Desplazamiento/agregar'                    ,'DesplazamientoController@agregarDatos');
    Route::post('/Desplazamiento/eliminar'                   ,'DesplazamientoController@eliminarDatos');


    //licencias  SECCION-07
     Route::get('/gestion-licencias'                   ,'LicenciasController@Index')->name('gestion-licencias');   
     Route::get('/gestion-licencias02'                 ,'TrabajadorController@licencias')->name('gestion-licencias02');   
     Route::get('/Licencias-Documentos'                ,'LicenciasController@archivosList'); 
     Route::get('/Licencias-eliminarDocumento/{id}'    ,'LicenciasController@eliminarArchivos'); 
     Route::get('/Licencias/list'                      ,'LicenciasController@DatosList') ;
     Route::post('/Licencias/agregar'                  ,'LicenciasController@agregarDatos');
     Route::post('/Licencias/eliminar'                 ,'LicenciasController@eliminarDatos');     
      //vacaciones    SECCION-08
     Route::get('/gestion-vacaciones'                  ,'VacacionesController@Index')->name('gestion-vacaciones');       
     Route::get('/Vacaciones-Documentos'               ,'VacacionesController@archivosList'); 
     Route::get('/Vacaciones-eliminarDocumento/{id}'   ,'VacacionesController@eliminarArchivos'); 
     Route::get('/Vacaciones/list'                     ,'VacacionesController@DatosList') ;
     Route::post('/Vacaciones/agregar'                 ,'VacacionesController@agregarDatos');
     Route::post('/Vacaciones/eliminar'                ,'VacacionesController@eliminarDatos');  

     //ascensos     SECCION-09
     Route::get('/gestion-ascensos'                     ,'AscensosController@Index')->name('gestion-ascensos');       
     Route::get('/Ascensos-Documentos'                  ,'AscensosController@archivosList'); 
     Route::get('/Ascensos-eliminarDocumento/{id}'      ,'AscensosController@eliminarArchivos'); 
     Route::get('/Ascensos/list'                        ,'AscensosController@DatosList') ;
     Route::post('/Ascensos/agregar'                    ,'AscensosController@agregarDatos');
     Route::post('/Ascensos/eliminar'                   ,'AscensosController@eliminarDatos');  

      //remuneracion    SECCION-10
     Route::get('/gestion-remuneracion'                  ,'RemuneracionController@Index')->name('gestion-remuneracion');       
     Route::get('/Remuneracion-Documentos'               ,'RemuneracionController@archivosList'); 
     Route::get('/Remuneracion-eliminarDocumento/{id}'   ,'RemuneracionController@eliminarArchivos'); 
     Route::get('/Remuneracion/list'                     ,'RemuneracionController@DatosList') ;
     Route::post('/Remuneracion/agregar'                 ,'RemuneracionController@agregarDatos');
     Route::post('/Remuneracion/eliminar'                ,'RemuneracionController@eliminarDatos');  

       //remuneracionFamiliar SECCION-11
     Route::get('/gestion-remuneracionFamiliar'          ,'RemuneracionFamiliarController@Index')->name('gestion-remuneracionFamiliar');       
     Route::get('/remuneracionFam-Documentos'            ,'RemuneracionFamiliarController@archivosList'); 
     Route::get('/remuneracionFam-eliminarDocumento/{id}','RemuneracionFamiliarController@eliminarArchivos'); 
     Route::get('/remuneracionFam/list'                  ,'RemuneracionFamiliarController@DatosList') ;
     Route::get('/remuneracionFam/listFamiliares'        ,'RemuneracionFamiliarController@DatosListFamiliares') ;
     Route::post('/remuneracionFam/agregar'              ,'RemuneracionFamiliarController@agregarDatos');
     Route::post('/remuneracionFam/agregarFamiliar'      ,'RemuneracionFamiliarController@agregarDatosFamiliar');
     Route::post('/remuneracionFam/eliminar'             ,'RemuneracionFamiliarController@eliminarDatos');  
     Route::post('/remuneracionFamiliar/eliminar'        ,'RemuneracionFamiliarController@eliminarFamiliarDatos');
    Route::post('/remuneracionFamiliar/desactivar'       ,'RemuneracionFamiliarController@desactivarFamiliarDatos');
    Route::post('/remuneracionFamiliar/habilitar'        ,'RemuneracionFamiliarController@habilitarFamiliarDatos');
    Route::post('/remuneracionFamiliar/consultar'        ,'RemuneracionFamiliarController@consultarFamiliar');
    Route::post('/remuneracionFamiliar/actualizar'       ,'RemuneracionFamiliarController@actualizarFamiliarDatos'); 
    //evaluaciones  SECCION-12
    Route::get('/gestion-evaluaciones'                ,'EvaluacionesController@Index')->name('gestion-evaluaciones');       
    Route::get('/evaluaciones-Documentos'             ,'EvaluacionesController@archivosList'); 
    Route::get('/evaluaciones-eliminarDocumento/{id}' ,'EvaluacionesController@eliminarArchivos'); 
    Route::get('/evaluaciones/list'                   ,'EvaluacionesController@DatosList') ;
    Route::post('/evaluaciones/agregar'               ,'EvaluacionesController@agregarDatos');
    Route::post('/evaluaciones/eliminar'              ,'EvaluacionesController@eliminarDatos');  

    //Merito      SECCION-13
    Route::get('/gestion-merito'                       ,'MeritoController@Index')->name('gestion-merito');       
    Route::get('/Merito-Documentos'                    ,'MeritoController@archivosList'); 
    Route::get('/Merito-eliminarDocumento/{id}'        ,'MeritoController@eliminarArchivos'); 
    Route::get('/Merito/list'                          ,'MeritoController@DatosList') ;
    Route::post('/Merito/agregar'                      ,'MeritoController@agregarDatos');
    Route::post('/Merito/eliminar'                     ,'MeritoController@eliminarDatos');  

    //Demerito    SECCION-14
    Route::get('/gestion-demerito'                     ,'DemeritoController@Index')->name('gestion-demerito');       
    Route::get('/Demerito-Documentos'                  ,'DemeritoController@archivosList'); 
    Route::get('/Demerito-eliminarDocumento/{id}'      ,'DemeritoController@eliminarArchivos'); 
    Route::get('/Demerito/list'                        ,'DemeritoController@DatosList') ;
    Route::post('/Demerito/agregar'                    ,'DemeritoController@agregarDatos');
    Route::post('/Demerito/eliminar'                   ,'DemeritoController@eliminarDatos');  

    //otros   SECCION-15
    Route::get('/gestion-otros'                         ,'OtrosController@Index')->name('gestion-otros');       
    Route::get('/Otros-Documentos'                      ,'OtrosController@archivosList'); 
    Route::get('/Otros-eliminarDocumento/{id}'          ,'OtrosController@eliminarArchivos'); 
    Route::get('/Otros/list'                            ,'OtrosController@DatosList') ;
    Route::post('/Otros/agregar'                        ,'OtrosController@agregarDatos');
    Route::post('/Otros/eliminar'                       ,'OtrosController@eliminarDatos');  

    //escalafonario 
    Route::get('/gestion-escalafonario'                 ,'InformeEscalafonarioController@escalafonario')->name('gestion-escalafonario');  
    Route::post('/Escalafonario/reporte'                ,'InformeEscalafonarioController@generarReporte');


    

    
    
    ///herrameintas pR list 
    Route::get('/tipoDocumentos'      ,'HerramientasController@listarTiposDocumentos');
    Route::get('/departamentosList'   ,'HerramientasController@listarDepartamentos');
    Route::get('/provinciasList/{id}' ,'HerramientasController@listarProvincias');
    Route::get('/distritoList/{id}'   ,'HerramientasController@listarDistritos');




    Route::get('/trabajador/{id}/{idDoc}'  ,'TrabajadorController@buscarTrabajador');
    Route::post('/trabajador/expediente'   ,'TrabajadorController@store');
    Route::post('/trabajador/LegajosList'  ,'TrabajadorController@LegajosList');
    Route::get('/trabajador/datos'         ,'TrabajadorController@datosTrabajador');   
    Route::post('/trabajador/subirImagen'  ,'TrabajadorController@SubirImagen');


    
  
 
    //gestion legajo
    Route::get('/gestion-legajo'      ,'LegajoController@index')->name('gestion-legajo'); 
    //gestion sedebar
    Route::post('/sidebar/activar'    ,'HerramientasController@activarSidebar');   
    Route::get('/sidebar/estado'      ,'HerramientasController@sidebarEstado');    
    Route::get('/sidebar/desactivar'    ,'HerramientasController@desactivarSidebar');   


    Route::get('/gestion-SituacionLaboral'      ,'SituacionLaboralController@index')->name('gestion-SituacionLaboral'); 
    Route::get('/situacionLaboral/list'         ,'SituacionLaboralController@listar') ; 
    Route::post('/situacionLaboral/agregar'     ,'SituacionLaboralController@agregarSituacionLaboral'); 
    Route::post('/situacionLaboral/eliminar'    ,'SituacionLaboralController@eliminarSituacionLaboral');
    Route::post('/situacionLaboral/desactivar'  ,'SituacionLaboralController@desactivarSituacionLaboral');
    Route::post('/situacionLaboral/habilitar'   ,'SituacionLaboralController@habilitarSituacionLaboral');
    Route::post('/situacionLaboral/consultar'   ,'SituacionLaboralController@consultarSituacionLaboral');
    Route::post('/situacionLaboral/actualizar'  ,'SituacionLaboralController@actualizarSituacionLaboral'); 


    Route::get('/gestion-RegimenLaboral'        ,'RegimenLaboralController@index')->name('gestion-RegimenLaboral'); 
    Route::get('/regimenLaboral/list'           ,'RegimenLaboralController@listar') ; 
    Route::post('/regimenLaboral/agregar'       ,'RegimenLaboralController@agregarRegimenLaboral'); 
    Route::post('/regimenLaboral/eliminar'      ,'RegimenLaboralController@eliminarRegimenLaboral');
    Route::post('/regimenLaboral/desactivar'    ,'RegimenLaboralController@desactivarRegimenLaboral');
    Route::post('/regimenLaboral/habilitar'     ,'RegimenLaboralController@habilitarRegimenLaboral');
    Route::post('/regimenLaboral/consultar'     ,'RegimenLaboralController@consultarRegimenLaboral');
    Route::post('/regimenLaboral/actualizar'    ,'RegimenLaboralController@actualizarRegimenLaboral'); 



    Route::get('/gestion-CargoLaboral'      ,'CargoLaboralController@index')->name('gestion-CargoLaboral'); 
    Route::get('/CargoLaboral/list'         ,'CargoLaboralController@listar') ; 
    Route::post('/CargoLaboral/agregar'     ,'CargoLaboralController@agregarCargoLaboral'); 
    Route::post('/CargoLaboral/eliminar'    ,'CargoLaboralController@eliminarCargoLaboral');
    Route::post('/CargoLaboral/desactivar'  ,'CargoLaboralController@desactivarCargoLaboral');
    Route::post('/CargoLaboral/habilitar'   ,'CargoLaboralController@habilitarCargoLaboral');
    Route::post('/CargoLaboral/consultar'   ,'CargoLaboralController@consultarCargoLaboral');
    Route::post('/CargoLaboral/actualizar'  ,'CargoLaboralController@actualizarCargoLaboral'); 


    Route::get('/gestion-AreaLaboral'       ,'AreaLaboralController@index')->name('gestion-AreaLaboral'); 
    Route::get('/AreaLaboral/list'          ,'AreaLaboralController@listar') ; 
    Route::post('/AreaLaboral/agregar'      ,'AreaLaboralController@agregarAreaLaboral'); 
    Route::post('/AreaLaboral/eliminar'     ,'AreaLaboralController@eliminarAreaLaboral');
    Route::post('/AreaLaboral/desactivar'   ,'AreaLaboralController@desactivarAreaLaboral');
    Route::post('/AreaLaboral/habilitar'    ,'AreaLaboralController@habilitarAreaLaboral');
    Route::post('/AreaLaboral/consultar'    ,'AreaLaboralController@consultarAreaLaboral');
    Route::post('/AreaLaboral/actualizar'   ,'AreaLaboralController@actualizarAreaLaboral'); 


    Route::get('/gestion-JornadaLaboral'        ,'JornadaLaboralController@index')->name('gestion-JornadaLaboral'); 
    Route::get('/JornadaLaboral/list'           ,'JornadaLaboralController@listar') ; 
    Route::post('/JornadaLaboral/agregar'       ,'JornadaLaboralController@agregarJornadaLaboral'); 
    Route::post('/JornadaLaboral/eliminar'      ,'JornadaLaboralController@eliminarJornadaLaboral');
    Route::post('/JornadaLaboral/desactivar'    ,'JornadaLaboralController@desactivarJornadaLaboral');
    Route::post('/JornadaLaboral/habilitar'     ,'JornadaLaboralController@habilitarJornadaLaboral');
    Route::post('/JornadaLaboral/consultar'     ,'JornadaLaboralController@consultarJornadaLaboral');
    Route::post('/JornadaLaboral/actualizar'    ,'JornadaLaboralController@actualizarJornadaLaboral'); 


    Route::get('/gestion-ResolucionLaboral'     ,'ResolucionLaboralController@index')->name('gestion-ResolucionLaboral'); 
    Route::get('/ResolucionLaboral/list'        ,'ResolucionLaboralController@listar') ; 
    Route::post('/ResolucionLaboral/agregar'    ,'ResolucionLaboralController@agregarResolucionLaboral'); 
    Route::post('/ResolucionLaboral/eliminar'   ,'ResolucionLaboralController@eliminarResolucionLaboral');
    Route::post('/ResolucionLaboral/desactivar' ,'ResolucionLaboralController@desactivarResolucionLaboral');
    Route::post('/ResolucionLaboral/habilitar'  ,'ResolucionLaboralController@habilitarResolucionLaboral');
    Route::post('/ResolucionLaboral/consultar'  ,'ResolucionLaboralController@consultarResolucionLaboral');
    Route::post('/ResolucionLaboral/actualizar' ,'ResolucionLaboralController@actualizarResolucionLaboral');
    

     Route::get('/gestion-nivelRemunerativo'        ,'NivelRemunerativoController@index')->name('gestion-nivelRemunerativo'); 
    Route::get('/NivelRemunerativo/list'            ,'NivelRemunerativoController@listar') ; 
    Route::post('/NivelRemunerativo/agregar'        ,'NivelRemunerativoController@agregarNivelRemunerativo'); 
    Route::post('/NivelRemunerativo/eliminar'       ,'NivelRemunerativoController@eliminarNivelRemunerativo');
    Route::post('/NivelRemunerativo/desactivar'     ,'NivelRemunerativoController@desactivarNivelRemunerativo');
    Route::post('/NivelRemunerativo/habilitar'      ,'NivelRemunerativoController@habilitarNivelRemunerativo');
    Route::post('/NivelRemunerativo/consultar'      ,'NivelRemunerativoController@consultarNivelRemunerativo');
    Route::post('/NivelRemunerativo/actualizar'     ,'NivelRemunerativoController@actualizarNivelRemunerativo');  

    	Route::get('/herramientas/clientes','ClientesController@herramientaClientes');
    Route::post('herramientas/importarClientes','ClientesController@importarClientes');

    

});