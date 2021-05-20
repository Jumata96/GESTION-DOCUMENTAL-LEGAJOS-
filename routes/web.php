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


Route::get('/','Auth\LoginController@showLoginForm')->name('/');
Route::get('/login','Auth\LoginController@showLoginForm')->name('login'); 
Route::post('/herramientaPlantilla','HomeController@herramientaPlantilla')->name('herramientaPlantilla');


//legajo
 
Route::group(['middleware' => 'auth'], function(){ 
     // Route::get('/home', 'HomeController@index')->name('home');
    //Usuarios
    Route::get('/home','TrabajadorController@index')->name('home');
    Route::get('/usuarios','UsuarioController@index');
    Route::get('/usuario/nuevo','UsuarioController@create');
    Route::post('/usuario/grabar','UsuarioController@store');
    Route::get('/usuario/mostrar/{id}','UsuarioController@show');
    Route::post('/usuario/actualizar','UsuarioController@update');
    Route::get('/usuario/eliminar/{id}','UsuarioController@destroy');
    Route::post('/usuario/desabilitar','UsuarioController@disabled');
    Route::post('/usuario/habilitar','UsuarioController@habilitar');
    Route::post('/usuario/updContra','UsuarioController@updContra');
    Route::post('usuario/verificarID','UsuarioController@verificarID');
    Route::post('usuario/verificarUsuario','UsuarioController@verificarUsuario'); 
    //Empresa
    Route::get('/empresa','EmpresaController@index');
    Route::get('/empresa/nuevo','EmpresaController@create');
    Route::post('/empresa/grabar','EmpresaController@store');
    Route::get('/empresa/mostrar/{id}','EmpresaController@show');
    Route::post('/empresa/actualizar','EmpresaController@update');
    Route::get('/empresa/eliminar/{id}','EmpresaController@destroy');

    // Route::get('/gestion-trabajador','TrabajadorController@index')->name('gestion-trabajador'); 
    Route::get('/gestion-fileacion','TrabajadorController@filiacionEidentidad')->name('gestion-fileacion');
    Route::get('/gestion-academica','TrabajadorController@situacionAcademica')->name('gestion-academica'); 
    Route::get('/gestion-legajo','LegajoController@index')->name('gestion-legajo');


});