@extends('layouts2.app')
@section('titulo','Registrar Usuario')
@section('main-content')
<br>
@foreach($usuario as $datos)
<div class="row">
   <div class="col s12 m12 l12">
      <div class="card">
         <div class="card-header">
            <i class="fa fa-table fa-lg material-icons">receipt</i>
            <h2>ACTUALIZAR DATOS DEL  TRABAJADOR</h2>
         </div>
         <form class="formValidate right-alert" id="myForm" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
            <div class="row card-header sub-header">
               <div class="col s12 m12 herramienta">                         
                  <a id="upd" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" type="submit" name="action" data-position="top" data-delay="500" data-tooltip="Actualizar">
                  <i class="material-icons blue-text text-darken-2">check</i></a>
                  <a style="margin-left: 6px"></a>   
                  @if(Auth::user()->idtipo == 'ADM')
                  <a href="{{url('/trabajadores')}}" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped" href="#!" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
                  <i class="material-icons" style="color: #424242">keyboard_tab</i></a>            
                  @endif
               </div>
               @include('forms.scripts.modalInformacion')            
            </div>
            <input type="hidden" name="id" value="{{ $datos->id }}">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="row cuerpo col s12 m7 l12">
               <br>
               <div class="col s12 m7 l6">
                  <div class="card white ">
                     <div class="card-content">
                        <span class="card-title">Datos Laborales</span>
                        <div class="row">
                           <div class="col s12 m6 l6">
                              <label for="idempresa">Tipo documento</label>  
                              <select class="browser-default" id="iddocumento" name="iddocumento" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 @foreach($tipo_documento as $documento)
                                 @if($documento->iddocumento == $datos->iddocumento)
                                 <option value="{{$documento->iddocumento}}" selected>{{$documento->dsc_corta}} - {{$documento->descripcion}}</option>
                                 @break
                                 @endif
                                 @endforeach
                                 @foreach($tipo_documento as $documento)
                                 @if($documento->iddocumento != $datos->iddocumento)
                                 <option value="{{$documento->iddocumento}}">{{$documento->dsc_corta}} - {{$documento->descripcion}}</option>
                                 @endif
                                 @endforeach                                                                                  
                              </select>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix active">label_outline</i>
                              <input id="nro_documento" name="nro_documento" type="text" data-error=".errorTxt1" minlength="8" maxlength="11" value="{{ $datos->nro_documento }}">
                              <label for="nro_documento">Nro. doc. Identidad</label>
                              <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l12">
                              <div class="input-field col s12 m6 l6">
                                 <i class="material-icons prefix">edit_location</i>
                                 <input id="direccion" name="direccion" value="{{ $datos->direccion }}" type="text" data-error=".errorTxt2" maxlength="50">
                                 <label for="direccion">Dirección</label>
                                 <div id="error9" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              <div class="col s12 m6 l6">
                                 <label for="idSexo">Sexo</label>                 
                                 <select class="browser-default" id="idSexo" name="idSexo" required>
                                    @if ($datos->SEXO == 'MASCULINO') 
                                    <option value="MASCULINO"  selected>MASCULINO</option>
                                    <option value="FEMENINO"   >FEMENINO</option>
                                    @endif      
                                    @if ($datos->SEXO == 'FEMENINO') 
                                    <option value="MASCULINO"  >MASCULINO</option>
                                    <option value="FEMENINO" selected >FEMENINO</option>
                                    @endif    
                                    @if (is_null($datos->SEXO)) 
                                    <option value="" disabled selected="">Seleccione</option>
                                    <option value="FEMENINO"   >FEMENINO</option>
                                    <option value="MASCULINO"   >MASCULINO</option>
                                    @endif                                            --}}
                                 </select>
                                 <div id="error_sexoLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">account_circle</i>
                              <input id="nombre" name="nombre" type="text" data-error=".errorTxt4" maxlength="50" value="{{ $datos->nombre }}" onkeyup="mayus(this);">
                              <label for="nombre">Nombres</label>
                              <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">account_circle</i>
                              <input id="apellidos" name="apellidos" type="text" maxlength="50" value="{{ $datos->apellidos }}" onkeyup="mayus(this);">
                              <label for="apellidos">Apellidos</label>
                              <div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l6">
                              <i class="material-icons prefix">call</i>
                              <input id="telefono" name="telefono" type="text" maxlength="20" value="{{ $datos->telefono }}">
                              <label for="telefono">Telefono</label>
                           </div>
                           <div class="input-field col s12 l6">
                              <i class="material-icons prefix">email</i>
                              <input id="email" name="email" type="text" value="{{ $datos->email }}">
                              <label for="email">Email</label>
                              <div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <div class="input-field col s12 m6 l12">
                              <i class="material-icons prefix">mode_edit</i>
                              <textarea id="glosa" name="glosa" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px">{{ $datos->glosa }}</textarea>
                              <label for="glosa" class="">Comentario</label>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col s12 m7 l6" >
                  <div class="card white">
                     <div class="card-content">
                        <span class="card-title">Generales</span>
                        <div class="row">
                           <div class="col s12 m12 l12">
                              <div class="col s12 m6 l6">
                                 <label for="idempresa">Empresa</label>                 
                                 <select class="browser-default" id="idempresa" name="idempresa" required>
                                    <option value="" disabled selected="">Seleccione</option>
                                    @foreach($empresa as $val)
                                    @if($val->idempresa == $datos->idempresa)
                                    <option value="{{$val->idempresa}}" selected> {{$val->razon_social}}</option>
                                    @endif
                                    @endforeach
                                    @foreach($empresa as $val)
                                    @if($val->idempresa != $datos->idempresa)
                                    <option value="{{$val->idempresa}}"> {{$val->razon_social}}</option>
                                    @endif
                                    @endforeach
                                 </select>
                                 <div id="error_idempresa" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              <div class="col s12 m6 l6">
                                 <label for="tipoTrabajador">Tipo usuario</label>                 
                                 <select class="browser-default" id="tipoTrabajador" name="tipoTrabajador" required>
                                    @if ($datos->idtipo == 'TRA')
                                    <option value="TRA" {{ ($datos->idtipo == 'TRA')? 'selected' : '' }}>TRABAJADOR</option> 
                                    @else
                                    <option value="" disabled selected="">Seleccione</option>
                                    <option value="TRA" {{ ($datos->idtipo == 'TRA')? 'selected' : '' }}>TRABAJADOR</option> 
                                    @endif
                                 </select>
                                 <div id="error_idtipo" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                           </div>
                           <div class="col s12 m12 l12">
                            <div class="col s12 m6 l6">
                                 <label for="situacionLaboral">Situación laboral</label>                 
                                 <select class="browser-default" id="situacionLaboral" name="situacionLaboral" required>
                                    <option value="" disabled selected="">Seleccione</option>
                                    @foreach($situacion_laboral as $val)
                                    @if($val->codigo == $datos->situacion_laboral)
                                    <option value="{{$val->codigo}}" selected> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                    @foreach($situacion_laboral as $val)
                                    @if($val->codigo != $datos->situacion_laboral)
                                    <option value="{{$val->codigo}}"> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                 </select>
                                 <div id="error_situacionLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              <div class="col s12 m6 l6">
                                 <label for="regimenLaboral">Régimen Laboral</label>                 
                                 <select class="browser-default" id="regimenLaboral" name="regimenLaboral" required>
                                    <option value="" disabled selected="">Seleccione</option>
                                    @foreach($regimen_laboral as $val)
                                    @if($val->codigo == $datos->regimen_laboral)
                                    <option value="{{$val->codigo}}" selected> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                    @foreach($regimen_laboral as $val)
                                    @if($val->codigo != $datos->regimen_laboral)
                                    <option value="{{$val->codigo}}"> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                 </select>
                                 <div id="error_regimenLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              {{-- <div class="input-field col s12 m6 l6">
                                 <i class="material-icons prefix">clear_all</i>
                                 <input id="situacionLaboral" name="situacionLaboral" value="{{$datos->situacion_laboral}}" type="text" data-error=".errorTxt2" maxlength="50">
                                 <label for="situacionLaboral">Situación Laboral</label>
                                 <div id="error_situacionLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div> --}}
                              {{-- <div class="input-field col s12 m6 l6">
                                 <i class="material-icons prefix">clear_all</i>
                                 <input id="regimenLaboral" name="regimenLaboral" type="text" value="{{$datos->regimen_laboral}}" data-error=".errorTxt2" maxlength="50">
                                 <label for="regimenLaboral">Regimen Laboral</label>
                                 <div id="error_regimenLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div> --}}
                           </div>
                           <div class="col s12 m12 l12">
                            <div class="col s12 m6 l6">
                                 <label for="areaLaboral">Área Laboral  </label>                 
                                 <select class="browser-default" id="areaLaboral" name="areaLaboral" required>
                                    <option value="" disabled selected="">Seleccione</option>
                                    @foreach($area_laboral as $val)
                                    @if($val->codigo == $datos->area_trabajador)
                                    <option value="{{$val->codigo}}" selected> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                    @foreach($area_laboral as $val)
                                    @if($val->codigo != $datos->area_trabajador)
                                    <option value="{{$val->codigo}}"> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                 </select>
                                 <div id="error_areaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>

                              <div class="col s12 m6 l6">
                                 <label for="cargo">Cargo Laboral</label>                 
                                 <select class="browser-default" id="cargo" name="cargo" required>
                                    <option value="" disabled selected="">Seleccione</option>
                                    @foreach($cargo_laboral as $val)
                                    @if($val->codigo == $datos->cargo)
                                    <option value="{{$val->codigo}}" selected> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                    @foreach($cargo_laboral as $val)
                                    @if($val->codigo != $datos->cargo)
                                    <option value="{{$val->codigo}}"> {{$val->nombre}}</option>
                                    @endif
                                    @endforeach
                                 </select>
                                 <div id="error_cargo" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              {{-- <div class="input-field col s12 m6 l6">
                                 <i class="material-icons prefix">clear_all</i>
                                 <input id="cargo" name="cargo" type="text" data-error=".errorTxt2"  maxlength="50" value="{{ $datos->cargo }}" onkeyup="mayus(this);">
                                 <label for="cargo">Cargo</label>
                                 <div class="errorTxt2"></div>
                              </div> --}}
                              {{-- <div class="input-field col s12 m6 l6">
                                 <i class="material-icons prefix">clear_all</i>
                                 <input id="areaLaboral" name="areaLaboral" value="{{$datos->area_trabajador}}" type="text" data-error=".errorTxt2" maxlength="50">
                                 <label for="areaLaboral">Área</label>
                                 <div id="error_areaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div> --}}
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </form>
         @include('forms.usuarios.updContra') 
      </div>
   </div>
</div>
@endforeach
@endsection
@section('script')  
@include('forms.usuarios.scripts.validacion')
{{-- @include('forms.usuarios.scripts.updContra') --}}
{{-- @include('forms.usuarios.scripts.updUsuario') --}}
@include('forms.trabajadores.scripts.updUsuario')
@endsection