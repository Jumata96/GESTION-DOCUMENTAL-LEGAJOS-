@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content') 
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>PREMIOS Y ESTIMULOS  </h2>
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
					<div class="col s12 m6 l12 ">
						<div class="col s12 m6 l12 card">
              <span>Datos del servidor</span>
							<div class="col s12 m6 l12"> 
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">assignment_ind</i>
									<input id="documentoGeneral" name="documentoGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="documentoGeneral">Numero de documento</label>
									{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
                <div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">assignment_ind</i>
									<input id="nombresGeneral" name="nombresGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="nombresGeneral">Apellidos y nombres</label>
									{{-- <div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
                <div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">recent_actors </i>
									<input id="situacionLaboralGeneral" name="situacionLaboralGeneral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="situacionLaboralGeneral">Situación Laboral</label>
									{{-- <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
							</div>
							<div class="col s12 m6 l12">
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">school</i>
									<input id="regimenLaboralGeneral" name="regimenLaboralGeneral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="regimenLaboralGeneral">Regimen Laboral</label>
									{{-- <div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">domain</i>
									<input id="centroLaboralGeneral" name="centroLaboralGeneral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="centroLaboralGeneral">Centro Laboral</label>
									{{-- <div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">card_travel</i>
									<input id="cargoGeneral" name="cargoGeneral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="cargoGeneral">Cargo</label>
									{{-- <div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
								</div>
							</div>
						</div>
					</div>
          {{-- datos del servidor --}} 
					<div class="col s12 m6 l12">  
                   <div class="col s12">
                    <ul class="tabs tab-demo z-depth-1" style="background-color: #78909c;">
                      <li class="tab col s6" style="background-color: #6f8a97;" ><a class="white-text waves-effect waves-light active" href="#pestana1">GESTIONAR DATOS DE MÉRITOS</a>
                      </li>  
																						<li class="tab col s6" style="background-color: #6f8a97;" ><a class="white-text waves-effect waves-light active" href="#pestana2">VIAJES DE ESTUDIO Y/O PASANTIAS </a>
                      </li>  
                  </ul>
                  </div>                  
                  <div class="col s12 ">
                    <div id="pestana1" class="col s12 tabs-mk">        
                      @include('forms.premios.datosMeritos')                
                    </div> 
																				<div id="pestana2" class="col s12 tabs-mk">        
                      @include('forms.premios.datosViajesEstudios')                
                    </div> 
                  </div>       
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br> 
@endsection