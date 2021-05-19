@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content')
<br>
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>Filiación e Identificación</h2>
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
					<div class="col s12 m6 l12 ">
						<div class="col s12 m6 l12 card">
              <span>Datos del servidor</span>
							<div class="col s12 m6 l12"> 
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="documento" name="documento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="documento">Numero de documento</label>
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
                <div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="nombres" name="nombres" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="nombres">Apellidos y nombres</label>
									<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
                <div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="situacionLaboral" name="situacionLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="situacionLaboral">Situación Laboral</label>
									<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
							</div>
							<div class="col s12 m6 l12">
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="regimenLaboral" name="regimenLaboral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="regimenLaboral">Regimen Laboral</label>
									<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="centroLaboral" name="centroLaboral" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="centroLaboral">Centro Laboral</label>
									<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l4">
									<i class="material-icons prefix active">label_outline</i>
									<input id="cargo" name="cargo" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
									<label for="cargo">Cargo</label>
									<div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col s12 m6 l12"> 





                   <div class="col s12">
                    <ul class="tabs tab-demo z-depth-1">
                      <li class="tab col s2" style="background-color: #78909c;"><a class="white-text waves-effect waves-light active" href="#pestana1">Generales</a>
                      </li>
                      <li class="tab col s2" style="background-color: #78909c;"><a href="#pestana2" class="white-text waves-effect waves-light">Domiciliarios</a>
                      </li>
                      <li class="tab col s2" style="background-color: #78909c;"><a href="#pestana3" class="white-text waves-effect waves-light">Familiares</a>
                      </li>
                      <li class="tab col s3" style="background-color: #78909c;"><a href="#pestana4" class="white-text waves-effect waves-light">Acreditacion de lengua nativa</a>
                      </li>
                      <li class="tab col s3" style="background-color: #78909c;"><a href="#pestana5" class="white-text waves-effect waves-light">Declaracion jurada y boleta de datos</a>
                      </li>
                    
                  </ul>
                  </div>                  
                  <div class="col s12 ">
                    <div id="pestana1" class="col s12 tabs-mk">        
                      @include('forms.filiacion.datosGenerales')                
                    </div>
                    <div id="pestana2" class="col s12 tabs-mk">  
                      @include('forms.filiacion.datosGenerales')                
                    </div>
                    <div id="pestana3" class="col s12 tabs-mk" > 
                      @include('forms.filiacion.datosGenerales')                
                    </div>
                    <div id="pestana4" class="col s12 tabs-mk"> 
                      @include('forms.filiacion.datosGenerales')                
                    </div>
                    <div id="pestana5" class="col s12 tabs-mk"> 
                      @include('forms.filiacion.datosGenerales')                
                    </div>
                  </div>       













					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
{{-- <div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="row cuerpo">
				<br>
				<div class="row">
					<div class="col s12 m12 l12">
						<div class="card-content">
							Existen 0 registros. <br><br>
							<table id="data-table-simple" class="responsive-table display" cellspacing="0">
								<thead>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>CENTRO LABORAL</th>
										<th>CONDICIÓN LABORAL</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>ACCIÓN</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>CENTRO LABORAL</th>
										<th>CONDICIÓN LABORAL</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>ACCIÓN</th>
									</tr>
								</tfoot>
								<tbody>
									<tr>
										<td>1</td>
										<td>75980586</td>
										<td>CARLOS RAMIREZ TORRES</td>
										<td>BAGUA</td>
										<td>CONTRATADO</td>
										<td>EN ACTIVO</td>
										<td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
										<td>
											<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>36584925</td>
										<td>ARAUJO RAMOS WILIAMS</td>
										<td>2066 SSEÑOR DE LOS MILAGROS</td>
										<td>NOMBRADO</td>
										<td>EN ACTIVO</td>
										<td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
										<td>
											<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>06745787</td>
										<td>CHAVEZ ROMERO FREDY</td>
										<td>2066 SSEÑOR DE LOS MILAGROS</td>
										<td>NOMBRADO</td>
										<td>EN ACTIVO</td>
										<td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
										<td>
											<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>40599574</td>
										<td>HUAMAN DIAS ADRIAN</td>
										<td>2066 SSEÑOR DE LOS MILAGROS</td>
										<td>NOMBRADO</td>
										<td>EN ACTIVO</td>
										<td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
										<td>
											<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>17859654</td>
										<td>RAMIREZ GILIO ISABEL</td>
										<td>2066 SSEÑOR DE LOS MILAGROS</td>
										<td>NOMBRADO</td>
										<td>EN ACTIVO</td>
										<td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
										<td>
											<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> --}}
@endsection