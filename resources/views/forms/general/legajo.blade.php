@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content')
<br> 
<div id="app">
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>APERTURA DE LEGAJO -BUSCAR SERVIDOR </h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a  @click="buscarPersona()" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped"  data-position="top" data-delay="500" data-tooltip="BUSCAR">
					<i class="material-icons" style="color: #03a9f4">search</i>
					</a>
					<a href="{{url('/home')}}" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped" href="#!" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
                            <i class="material-icons" style="color: #546e7a ">keyboard_tab</i>
                          </a>  

					<a style="margin-left: 6px"></a>       
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
			<div class="row cuerpo">
				<div class="row" >
					<div class="col s12 m12 l12 ">
						<div class="col s12 m12 l12 card">
							<span>BUSCAR SERVIDOR</span>
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
									<input   v-model="numeroDocumento" id="numeroDocumento" name="numeroDocumento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="numeroDocumento">Numero de documento</label>
									<div id="error_buscar2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row"  v-show="datosEmpleador" >
					<div class="col s12 m12 l12 ">
						<div class="col s12 m12 l12 card">
							<span>DATOS DEL SERVIDOR</span>
							<div class="col s12 m12 l12">
								{{-- DATOS DEL SERVIDOR --}}
								<div class="col s12 m12 l12">
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">assignment_ind</i>
										<input id="nombre" name="nombre" v-model="nombreServidor" placeholder="" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="nombre">Nombres</label> 
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">assignment_ind</i>
										<input id="primerApellido" v-model="apellidosServidor" placeholder="" name="primerApellido" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="primerApellido"> Apellidos</label> 
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">work</i>
										<input id="cargoServidor" v-model="cargoServidor" placeholder="" name="cargoServidor" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="cargoServidor"> Cargo</label> 
									</div> 
								</div>
								{{-- DATOS DEL SERVIDOR --}}
								{{-- DATOS LABORALES DEL SERVIDOR --}}
								<div class="col s12 m12 l12">
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">account_balance</i>
										<input id="areaServidor" name="areaServidor" v-model="areaServidor" placeholder="" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="areaServidor">Area</label> 
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">assignment</i>
										<input id="modalidadServidor" v-model="modalidadServidor" placeholder="" name="modalidadServidor" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="modalidadServidor"> Regimen Laboral</label> 
									</div>
									<div class="input-field col s12 m12 l4">
										<i class="material-icons prefix">work</i>
										<input id="situacionLaboral" v-model="situacionLaboral" placeholder="" name="situacionLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
										<label for="situacionLaboral"> Situación Laboral</label> 
									</div> 
								</div>
								{{-- DATOS LABORALES DEL SERVIDOR --}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{{-- cuadro para subir archivos --}}
<div class="row" v-show="datosEmpleador" >
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>APERTURA DE LEGAJO </h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a  @click="GuardarResolucion()" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped"  data-position="top" data-delay="500" data-tooltip="REGISTRAR">
					<i class="material-icons" style="color: #03a9f4">check</i>
					</a>
					<a style="margin-left: 6px"></a>       
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
			<div class="row cuerpo">
				<div class="row"  v-show="datosEmpleador" >
					<div class="col s12 m12 l8 ">
						<div class="col s12 m12 l12 card">
							<span>DATOS PRINCIPALES DE RESOLUCIÓN</span>
							<br><br> 
							<form action="" method="POST"  id="formExpediente">
								<input type="hidden" name="idTrabajador" id="idTrabajador" >
								<div class="col s12 m12 l12">
									<div class="col s12 m12 l6">
										<label for="tipoResolucion">Tipo de Resolucion</label>                 
										<select v-model="tipoResolucion" class="browser-default" id="tipoResolucion" name="tipoResolucion" required>
											<option value="" disabled selected="">Seleccione</option>
											<option value="RESOLUCION DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
										</select> 
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
									</div>
									<div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">class</i>
										<input id="numeroResolucion" v-model="numeroResolucion" placeholder="" name="numeroResolucion" type="text">
										<label for="numeroResolucion"> NUMERO DE RESOLUCIÓN</label> 
										<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
									</div>
									<div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">date_range</i>
										<input id="fechaResolucion" v-model="fechaResolucion" placeholder=""
										 class="datepicker" name="fechaResolucion" type="date"  >
										<label for="fechaResolucion"> FECHA DE RESOLUCIÓN</label> 
										<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
									</div>
									<div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">class</i>
										<input id="foliosResolucion" name="foliosResolucion"  v-model="foliosResolucion" type="number">
										<label for="foliosResolucion">Folios</label>
										<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
									</div>
									<div class="input-field col s12 m12 l6">
										<i class="material-icons prefix">archive</i>
										<input id="lugarFisicoResolucion" name="lugarFisicoResolucion"  v-model="lugarFisicoResolucion" type="text">
										<label for="lugarFisicoResolucion">Lugar fisico</label> 
										<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
									</div>
								</div>
							</form> 
						</div>
					</div>
					<div class="col s12 m12 l4 "> 
								<div class="card white"> 
												<span class="card-title">Documentos</span>
												<div class="row">
													<div class="file-field input-field col s12">
														<div class="col s8 m8 l7 center" style="margin: auto; width: 80%">
															<img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImage" class="  responsive-img valign profile-image    " style="width: 80px">
														</div>
														<br>
														<div class="file-field input-field col s12 ">
															<div class="btn light-blue darken-1 ">
																<span>SUBIR</span>
																<input type="file" id="archivo" name="archivo" >
															</div>
															<div class="file-path-wrapper">
																<input class="file-path validate" type="text" name="text" id="imagen">
																<p class="right"><i>Solo se permiten archivos con extensión  
																	PDF en tamaño maximo 2MB. </i>
																</p> 
																<div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 

															</div>
														</div>
													</div>
												</div> 
										</div> 
					</div>
				</div>
			</div>
		</div>
	</div>
	{{-- cuadro para subir archivos --}}
</div>
@endsection
@section('script')
<script type="text/javascript" src="{{asset('js/vue-multiselect.min.js')}}"></script>

<script type="text/javascript" >
  Vue.component('multiselect', window.VueMultiselect.default) 
 
    var app = new Vue({      
      el: '#app',
      data: {         
								numeroDocumento:'',
								tipoDocumento:"A", 
								nombreServidor:"",
								apellidosServidor:"",
								cargoServidor:"", 
								idServidor:"",
								areaServidor:"",
								modalidadServidor:"",
								situacionLaboral:"",
								documentos:[],
								empleado:[],
								datosEmpleador:false,
								tipoResolucion:"",
								numeroResolucion:"",
								fechaResolucion:"",
								foliosResolucion:"",
								lugarFisicoResolucion:"",

      },
      created: function () {
         this.listDocumentos();        
      },
      methods: {   
							listDocumentos: function(){
            var urlTipoDocumentos= '/tipoDocumentos';
            axios.get(urlTipoDocumentos).then(response => { 
																this.documentos =response.data 
            });
       }, 
							buscarPersona(){

        								let me=this;  
																if(this.tipoDocumento=='A'){
																	console.log('ingreso');
																	$('#error_buscar1').text('seleccione un tipo de documento'); 	  
																}else if(this.numeroDocumento==''){
																	// console.log('nmingreso',this.tipoDocumento,'A');
																	$('#error_buscar1').text(''); 	   
																	$('#error_buscar2').text('ingrese un numero de documento'); 	  
																}else{ 
																	$('#error_buscar1').text(''); 	   
																	$('#error_buscar2').text(''); 	 
																	console.log(this.numeroDocumento);
																		var url= '/trabajador/'+this.numeroDocumento+'/'+this.tipoDocumento;
																		axios.get(url).then(function (response) {  
																								console.log(response.data["estado"]); 
																								if(response.data["estado"] =="no tiene legajo"){ 
																										me.nombreServidor=response.data[0][0].nombresServidor; 
																										me.apellidosServidor=response.data[0][0].apeliidosServidor;
																										me.cargoServidor=response.data[0][0].cargoServidor;
																										me.idServidor=response.data[0][0].id;
																										me.areaServidor=response.data[0][0].area_trabajador,
																										me.modalidadServidor=response.data[0][0].regimen_laboral,
																										me.situacionLaboral=response.data[0][0].situacionLaboral,
																										me.datosEmpleador=true; 
																										console.log('ingreso');
																								}else if(response.data["estado"] =="tiene legajo"){
																									M.toast({html: 'SERVIDOR CUENTA CON LEGAJO', classes: 'rounded'}); 
																								}else{
																										me.datosEmpleador=false; 
																										me.nombreServidor="";
																										me.apellidosServidor="";
																										me.cargoServidor="";
																										me.idServidor="";
                          M.toast({html: 'SERVIDOR NO REGISTRADO', classes: 'rounded'}); 
																										console.log('no ingreso');

																								} 
																		})
																		.catch(function (error) {
																						console.log(error);
																		});  
																}
							},
							GuardarResolucion(){

							$('#idTrabajador').val(this.idServidor); //agregamos el id del vendedor para cargar el form 


								var formData = new FormData(); 
		  				formData.append('archivo', $('#archivo')[0].files[0]);
								 var url= '/trabajador/expediente'+ '?' + $('#formExpediente').serialize();  

								axios.post(url , formData, {
									headers: {
									'Content-Type': 'multipart/form-data'
									}
									}).then((response) => {
									console.log(response.data.archivo)

										if (response.data[0] == "error") {
										$('#error1').text(''); 	 
										$('#error2').text(''); 	 
										$('#error3').text(''); 	 
										$('#error4').text(''); 	 
										$('#error5').text(''); 	 
										$('#error6').text(''); 	 
										// ( typeof response.data.archivo != "undefined" )? $('#error1').text('cargar archivo') && $('#archivo').focus() : null;
										( typeof response.data.numeroResolucion != "undefined" )? $('#error2').text(response.data.numeroResolucion) : null;
										( typeof response.data.fechaResolucion != "undefined" )? $('#error3').text(response.data.fechaResolucion) : null;  
										( typeof response.data.foliosResolucion != "undefined" )? $('#error4').text(response.data.foliosResolucion) : null;  
										( typeof response.data.lugarFisicoResolucion != "undefined" )? $('#error5').text(response.data.lugarFisicoResolucion) : null;  
										( typeof response.data.archivo != "undefined" )? $('#error6').text(response.data.archivo) : null;  
										}else{ 
											$('#error1').text(''); 	 
											$('#error2').text(''); 	 
											$('#error3').text(''); 	 
											$('#error4').text(''); 	 
											$('#error5').text(''); 	 
											$('#error6').text(''); 	
											 M.toast({html: 'Expediente Registrado', classes: 'rounded'}); 
												window.location.href = "/home";
										}

 

									})
									.catch((err) => {
									console.log(err)
									});   
							} 

      }
})
</script>
@endsection