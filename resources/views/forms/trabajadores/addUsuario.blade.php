@extends('layouts2.app')
@section('titulo','Registrar Ususario')
@section('main-content')
<br>
<div class="row">
   <div class="col s12 m12 l12">
      <div class="card">
         <div class="card-header">
            <i class="fa fa-table fa-lg material-icons">receipt</i>
            <h2>REGISTRAR TRABAJADOR</h2>
         </div>
         <form class="formValidate right-alert" id="myForm" accept-charset="UTF-8" enctype="multipart/form-data">
            <div class="row card-header sub-header">
               <div class="col s12 m12 herramienta">                         
                  <a id="add" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" name="action" data-position="top" data-delay="500" data-tooltip="Guardar">
                  <i class="material-icons blue-text text-darken-2">check</i></a>
                  <a style="margin-left: 6px"></a>   
                  <a href="{{url('/trabajadores')}}" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped" href="#!" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
                  <i class="material-icons" style="color: #424242">keyboard_tab</i></a>            
               </div>
               @include('forms.scripts.modalInformacion')              
            </div>
            <div class="row cuerpo">
               <input type="hidden" name="_token" value="{{ csrf_token() }}">
               <div class="col s12 m12 l6">
                  <div class="card white">
                     <div class="card-content">
                        <span class="card-title">DATOS GENERALES</span>
                        <div class="row">
                           <div class="col s12 m6 l6">
                              <label for="idempresa">Tipo documento</label>  
                              <select class="browser-default" id="iddocumento" name="iddocumento" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($tipo_documento as $documento)
                                 <option value="{{$documento->iddocumento}}">{{$documento->dsc_corta}} - {{$documento->descripcion}}</option>
                                 @endforeach                                                                                  
                              </select>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix active">label_outline</i>
                              <input id="nro_documento" name="nro_documento" type="text" data-error=".errorTxt1" minlength="8" maxlength="11">
                              <label for="nro_documento">Nro. doc. Identidad</label>
                              <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">account_circle</i>
                              <input id="nombre" name="nombre" type="text" data-error=".errorTxt4" maxlength="50">
                              <label for="nombre">Nombres</label>
                              <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">account_circle</i>
                              <input id="apellidos" name="apellidos" type="text" maxlength="50">
                              <label for="apellidos">Apellidos</label>
                              <div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="col s12 m6 l6">
                              <label for="sexo">SEXO</label>  
                              <select class="browser-default" id="idSexo" name="idSexo" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 <option value="MASCULINO">MASCULINO</option>
                                 <option value="FEMENINO">FEMENINO</option>
                              </select>
                              <div class="errorTxt1" id="error_sexo" style="color: red; font-size: 8px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">call</i>
                              <input id="telefono" name="telefono" type="text" maxlength="20">
                              <label for="telefono">Telefono</label>
                           </div>
                           <div class="input-field col s12 l6">
                              <i class="material-icons prefix">email</i>
                              <input id="email" name="email" type="text">
                              <label for="email">Email</label>
                              <div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">edit_location</i>
                              <input id="direccion" name="direccion" type="text" data-error=".errorTxt2" maxlength="50">
                              <label for="direccion">Dirección</label>
                              <div id="error9" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 l12 m12">
                              <i class="material-icons prefix">mode_edit</i>
                              <textarea id="glosa" name="glosa" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
                              <label for="glosa" class="">Comentario</label>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col s12 m12 l6">
                  <div class="card white">
                     <div class="card-content">
                        <span class="card-title">DATOS LABORALES</span>
                        <div class="row">
																										<div class="col s12 m12 l12">
																											
                           <div class="col s12 m6 l6">
                              <label for="idempresa">Empresa</label>                 
                              <select class="browser-default" id="idempresa" name="idempresa" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($empresa as $datos)
                                 <option value="{{$datos->idempresa}}"> {{$datos->razon_social}}</option>
                                 @endforeach
                              </select>
                              <div class="errorTxt1" id="error_empresa" style="color: red; font-size: 8px; font-style: italic;"></div>
                           </div>
                           <div class="col s12 m6 l6">
                              <label for="tipoTrabajador">Tipo usuario</label>                 
                              <select class="browser-default" id="tipoTrabajador" name="tipoTrabajador" required>
                                 <option value="TRA" selected="" >TRABAJADOR</option>
                              </select>
                              <div class="errorTxt1" id="error_tipoTrabajador" style="color: red; font-size: 8px; font-style: italic;"></div>
                           </div>

																										</div>
																											<div class="col s12 m12 l12">
																												 <div class="col s12 m6 l6">
                              <label for="situacionLaboral">Situación Laboral</label>                 
                              <select class="browser-default" id="situacionLaboral" name="situacionLaboral" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($situacion_laboral as $situacion )
                                 <option value="{{$situacion->codigo}}"> {{$situacion->nombre}}</option>
                                 @endforeach
                              </select>
                              <div  id="error_situacionLaboral" style="color: red; font-size: 8px; font-style: italic;"></div>
                           		</div>
																													<div class="col s12 m6 l6">
                              <label for="regimenLaboral">Régimen Laboral</label>                 
                              <select class="browser-default" id="regimenLaboral" name="regimenLaboral" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($regimen_laboral as $regimen )
                                 <option value="{{$regimen->codigo}}"> {{$regimen->nombre}}</option>
                                 @endforeach
                              </select>
                              <div   id="error_regimenLaboral" style="color: red; font-size: 8px; font-style: italic;"></div>
                           		</div>

																										</div>
																											<div class="col s12 m12 l12"> 
																													<div class="col s12 m6 l6">
                              <label for="areaLaboral">Área Laboral</label>                 
                              <select class="browser-default" id="areaLaboral" name="areaLaboral" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($area_laboral as $areaLaboral )
                                 <option value="{{$areaLaboral->codigo}}"> {{$areaLaboral->nombre}}</option>
                                 @endforeach
                              </select>
                              <div   id="error_areaLaboral" style="color: red; font-size: 8px; font-style: italic;"></div>
                           		</div>
																													<div class="col s12 m6 l6">
                              <label for="cargo">Cargo Laboral</label>                 
                              <select class="browser-default" id="cargo" name="cargo" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($cargo_laboral as $cargo )
                                 <option value="{{$cargo->codigo}}"> {{$cargo->nombre}}</option>
                                 @endforeach
                              </select>
                              <div   id="error_cargo" style="color: red; font-size: 8px; font-style: italic;"></div>
                           		</div>
																													<br><br><br><br>

																										</div> 
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </form>
      </div>
   </div>
</div>
<br><br><br>
@endsection
@section('script')
@include('forms.usuarios.scripts.validacion') 
@include('forms.trabajadores.scripts.addUsuario')
{{-- @include('forms.usuarios.scripts.addUsuario') --}}
@endsection