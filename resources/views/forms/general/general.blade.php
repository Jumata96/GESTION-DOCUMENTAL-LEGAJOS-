@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content')
{{-- 
<nav>
	<div class="nav-wrapper">
		<div class="col s12"> 
			<a href="#!" class="breadcrumb"> HOME</a>
			<a href="#!" class="breadcrumb">Second</a>
			<a href="#!" class="breadcrumb">Third</a>
		</div>
	</div>
</nav>
--}}
<br>
<div id="app">
	<template functional>
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>GESTIÓN DE ESCALAFON</h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a @click="buscarPersona()" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped"  data-position="top" data-delay="500" data-tooltip="BUSCAR">
					<i class="material-icons" style="color: #03a9f4">search</i>
					</a>
					<a style="margin-left: 6px"></a>       
					<a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" @click="limpiarBusqueda()" href="#" data-position="top" data-delay="500" data-tooltip="LIMPIAR">
					<i class="material-icons" style="color: #dd2c00">delete</i>
					</a>
					<a style="margin-left: 6px"></a>   
					<a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" href="{{ url('/gestion-legajo') }}" data-position="top" data-delay="500" data-tooltip="APERTURA DE LEGAJO">
					<i class="material-icons" style="color: #2E7D32">insert_drive_file</i>
					</a>
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
   <form action="" method="post" id="formEscalafon">
				 <input type="hidden" name="idTrabajador" id="idTrabajador" >
			<div class="row cuerpo">
				<div class="row" >
					<div class="col s12 m12 l12 ">
						<div class="col s12 m12 l12 card">
							<div class="col s12 m12 l12">
								<div class="col s12 m12 l4">
									<label for="tipoDocumento">Tipo de documento</label>                 
									<select v-model="tipoDocumento" class="browser-default" id="tipoDocumento" name="tipoDocumento" required>
										<option value="A" disabled  >Seleccione</option>
										<option  v-for="(documento,index ) in documentos"   :value="documento.iddocumento" v-text="documento.descripcion"> </option>
									</select>
									<div id="error_buscar1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m12 l4">
									<i class="material-icons prefix">label_outline</i>
									<input   v-model="numeroDocumento" id="numeroDocumento" placeholder="" name="numeroDocumento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="numeroDocumento">Numero de documento</label>
									<div id="error_buscar2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
							</div>
							<div class="col s12 m12 l12"> 
                <div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">assignment_ind</i>
										<input id="nombre" name="nombre" v-model="nombreServidor" placeholder="" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="nombre">Nombres</label> 
									</div>
									<div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">assignment_ind</i>
										<input id="apellidos" v-model="apellidosServidor" placeholder="" name="apellidos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="apellidos"> Apellidos</label> 
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
<br>
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="row cuerpo">
				<br>
				<div class="row">
					<div class="col s12 m12 l12">
						<div class="card-content">
       
							{{-- Existen 0 registros. <br><br> --}}
							<table id="data-table-simple" class="responsive-table display" cellspacing="0">
								<thead>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>ÁREA</th>
										<th>CARGO</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>N° RESOLUCIÓN</th>
										<th>LUGAR FISICO</th>
										<th>FOLIOS</th>
										<th>ACCIÓN</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>ÁREA</th>
										<th>CARGO</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>N° RESOLUCIÓN</th>
										<th>LUGAR FISICO</th>
										<th>FOLIOS</th>
										<th>ACCIÓN</th>
									</tr>
								</tfoot>
								<tbody id="tbodyTabla01">
									{{-- <tr>
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
									</tr> --}}
									{{-- <tr v-for="tabla in arrayTrabajadores" :key="tabla.id" >
										<td v-text="tabla.nombre" >5</td>
										<td  v-text="tabla.nro_documento"></td>
										<td  v-text="tabla.nombre"></td>
										<td> </td>
										<td> </td>
										<td> </td>
										<td> </td>
										<td>
											<a  class=" waves-effect waves-light grey lighten-5 tooltipped" 
											data-tooltip="Gestionar datos de escalafón" @click="gestionarTrabajador(tabla.id)"   >
											<i class="material-icons grey-text text-darken-2">settings</i></a>
										</td>
									</tr> --}}

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</template>
</div>
@include('forms.general.scripts.alertaConfirmacion')
@endsection
@section('script')
@include('forms.general.scripts.scriptVueJs')
<script> 
	function gestionarTrabajador(valor){  
		console.log('ingreso a gestionar 2' ,valor);
		$('#idTrabajador').val(valor);
		$('#addConfirmacion').modal('open'); 
	}  ;
		$('#addGestion').on('click',function () { 
		// console.log('gestion de elemento',$('#idTrabajador').val());
 		app.$options.methods.activarSidebar();  

		});

    setTimeout(function(){ app.$options.methods.buscarPersona(); }, 2000);

</script>

@endsection