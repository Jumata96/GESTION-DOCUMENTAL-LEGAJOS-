@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content') 
<div id="app">
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>DEZPLAZAMIENTO Y CARGOS DESEMPEÑADOS</h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" href="#" data-position="top" data-delay="500" data-tooltip="BUSCAR">
					<i class="material-icons" style="color: #03a9f4">search</i>
					</a>
					<a style="margin-left: 6px"></a>       
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
			<div class="row cuerpo">
				<div class="row" >
					{{-- datos del servidor --}}
						<div class="col s12 m12 l12 ">
							<div class="col s12 m12 l12 card">
								<span>Datos del servidor</span>
								<div class="col s12 m12 l12">
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix ">assignment_ind</i>
										<input placeholder="" id="documentoGeneral" v-model="numeroDocumento" name="documentoGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);" readonly="readonly" >
										<label for="documentoGeneral">Numero de documento</label>
										{{-- 
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix ">assignment_ind</i>
										<input placeholder="" id="nombresGeneral"  v-model="nombresServidor" name="nombresGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);" readonly="readonly" >
										<label for="nombresGeneral">Nombre y apellidos</label>
										{{-- 
										<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix ">recent_actors </i>
										<input placeholder="" id="situacionLaboralGeneral" v-model="situacionLaboral" name="situacionLaboralGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);" readonly="readonly" >
										<label for="situacionLaboralGeneral">Situación Laboral</label>
										{{-- 
										<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
								</div>
								<div class="col s12 m12 l12">
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix ">school</i>
										<input placeholder="" id="regimenLaboralGeneral"  v-model="regimenLaboral" name="regimenLaboralGeneral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);" readonly="readonly" >
										<label for="regimenLaboralGeneral">Regimen Laboral</label>
										{{-- 
										<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix ">domain</i>
										<input placeholder="" id="centroLaboralGeneral" v-model="centroLaboral" name="centroLaboralGeneral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);" readonly="readonly" >
										<label for="centroLaboralGeneral">Centro Laboral</label>
										{{-- 
										<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="input-field col s12 m6 l4">
										<i class="material-icons prefix ">card_travel</i>
										<input placeholder="" id="cargoGeneral" name="cargoGeneral" v-model="cargoServidor" type="text" data-error=".errorTxt1" onkeyup="mayus(this);" readonly="readonly" >
										<label for="cargoGeneral">Cargo</label>
										{{-- 
										<div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
								</div>
							</div>
						</div>
						{{-- datos del servidor --}} 
 
					<div class="col s12 m6 l12">
						<div class="col s12">
							<ul class="tabs tab-demo z-depth-1">
								<li class="tab col s4" style="background-color: #78909c;"><a class="white-text waves-effect waves-light " href="#pestana1">Trayectoria</a>
								</li>
								<li class="tab col s8" style="background-color: #78909c;"><a href="#pestana2" class="white-text waves-effect waves-light">Documentos Digitalizados</a>
								</li> 
							</ul>
						</div>
						<div class="col s12 ">
							<div id="pestana1" class="col s12 tabs-mk">        
								@include('forms.desplazamiento.seccion1')                
							</div>
							<div id="pestana2" class="col s12 tabs-mk">  
								@include('forms.desplazamiento.seccion2')                
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
@include('forms.desplazamiento.scripts.alertaConfirmacionEliminarSeccion01') 
@include('forms.desplazamiento.scripts.alertaConfirmacionEliminarSeccion02') 
</div> 
@endsection
@section('script')
@include('forms.desplazamiento.scripts.scriptVueJs')                
@endsection