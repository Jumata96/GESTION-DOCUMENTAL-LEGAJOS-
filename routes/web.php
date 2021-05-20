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

Route::resource('/notas', 'NotaController')->middleware('auth');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/','Auth\LoginController@showLoginForm')->name('/');
Route::get('/login','Auth\LoginController@showLoginForm')->name('login');
Route::get('/gestion-trabajador','TrabajadorController@index')->name('gestion-trabajador');

Route::get('/gestion-fileacion02','TrabajadorController@filiacionEidentidad')->name('gestion-fileacion02');

//legajo
Route::get('/gestion-legajo','LegajoController@index')->name('gestion-legajo');
 
