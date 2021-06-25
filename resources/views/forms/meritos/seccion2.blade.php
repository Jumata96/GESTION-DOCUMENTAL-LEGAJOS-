{{--declaracion jurada  --}}
<div class="col s12 m12 l12">
	<br>
	<div class="card">
		<div class="card-header  ">
			<i class="fa fa-table fa-lg material-icons">receipt</i>
			<h2>LISTA DE DOCUMENTOS DIGITALIZADOS</h2>
		</div>
		<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
			<div class="col s12 m12">
				{{-- <a  href="#modalAddDocumentos" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="Agregar Grado de Estudio"  >
				<i class="material-icons" style="color: #03a9f4">add</i>
				</a> --}}
				<a style="margin-left: 6px"></a>       
				<a style="margin-left: 6px"></a>   
			</div>
		</div>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="tablaDocumentos" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>TIPO DE DOCUMENTO</th>
								<th>F.EMISION</th>
								<th>ARCHIVO</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</thead>
						{{-- 
						<tfoot>
							<tr>
								<th>N°</th>
								<th>TIPO DE DOCUMENTO</th>
								<th>F.EMISION</th>
								<th>ARCHIVO</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						--}}
						<tbody id="tbodyDj"> 
							{{-- <tr v-for="(item, index) in tablaDocumentos">
								<td>1</td>
								<td>BOLETA DE DATOS PERSONALES</td>
								<td>21-09-2019</td>
								<td><a href="" target="_blank" rel="noopener noreferrer">certi  ficadoDefuciones.pdf</a></td>
								<td>Anulado</td>
								<td> 
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped" v-on:click="prueba()"   href="#" data-position="top" data-delay="500" data-tooltip="BUSCAR"  >
									<i class="material-icons grey-text text-darken-2">delete</i></a>
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2">archive</i></a>
								</td>
							</tr> --}}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{--declaracion jurada  --}}



<div id="modalAddDocumentos" class="modal modal-fixed-footer">
	<div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
		<div class="card" style="position: fixed; width: 100%; z-index: 2">
			<div class="card-header">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>AGREGAR DOCUMENTOS DIGITALIZADOS</h2>
			</div>
		</div>
		<div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
			<a id="addConceptoM" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="agregarDocumentos()"  >
			<i class="material-icons " style="color: #2E7D32">check</i></a>
			<a style="margin-left: 6px"></a>   
			<a href="#" id="" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
			<i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
		</div>
		<form  id="myFormDJ" accept-charset="UTF-8" enctype="multipart/form-data" >
			<div class="row cuerpo">
													{{-- Datos de domicilio    --}}
													<br><br>
													<br><br>
			<div class="col s12 m8 l6 ">
				<br>
				<div class="card ">
					<div class="col s12 m12 l12">
						<div class="col s12 m12 l12">
							<label for="tipoDocumentoDeclaracionJurada">Tipo de documento</label>                 
							<select class="browser-default" id="tipoDocumentoDeclaracionJurada" name="tipoDocumentoDeclaracionJurada" required>
								<option value="" disabled selected="">Seleccione</option> 
								<option value="CARTIFICADO" >CARTIFICADO</option>
                    <option value="DIPLOMA DE CURSOS" >DIPLOMA DE CURSOS</option>
                    <option value="CONGRESOS" >CONGRESOS</option>
                    <option value="SEMINARIOS" >SEMINARIOS</option>
                    <option value="SIMPOSIOS" >SIMPOSIOS</option>
                    <option value="CONFERENCIAS" >CONFERENCIAS</option>
                    <option value="CONVENCIONES" >CONVENCIONES</option>
								<option value="OTROS"  >OTROS</option>
								{{-- <option value=""  >BOLETA DE DATOS PERSONALES</option> --}}
								 
							</select>
							<div id="error_tipoDocumentoDeclaracionJurada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
						</div>
						<br>
						<br>
						<br>
						<br> 
						<div class="input-field col s12 m12 l12">
							<i class="material-icons prefix ">event_available</i>
							<input id="fechaEmisionDeclaracionJurada" name="fechaEmisionDeclaracionJurada" type="date" data-error=".errorTxt1"   onkeyup="mayus(this);">
							<label for="fechaEmisionDeclaracionJurada">Fecha de emisión</label>
							
							<div id="error_fechaEmisionDeclaracionJurada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
							
						</div>
						<div class="input-field col s12 m12 l12">
							<i class="material-icons prefix ">filter_9_plus</i>
							<input id="numeroFoliosDeclaracionJurada" name="numeroFoliosDeclaracionJurada" type="number" data-error=".errorTxt1"   onkeyup="mayus(this);">
							<label for="numeroFoliosDeclaracionJurada">numero de folios</label>
							
							<div id="error_numeroFoliosDeclaracionJurada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
							
						</div>

					<div class="input-field col s12 m12 l12">
						<i class="material-icons prefix">mode_edit</i>
						<textarea id="anotacionesDeclaracionJurada" name="anotacionesDeclaracionJurada" class="materialize-textarea" lenght="200" maxlength="200" value=""></textarea>
						<label for="anotacionesDeclaracionJurada" class="">Anotaciones</label>
							<div id="error_anotacionesDeclaracionJurada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

					</div>

					</div>  
					
				</div>
			</div>
			{{-- Datos de domicilio    --}}
			{{-- SEC IMAGEN --}}
			<div class="col s12 m6 l6 ">
				<br>
				<div class="card">
					<span class="card-title">Documentos</span>
					<div class="row">
						<div class="file-field input-field col s12">
							<div class="col s8 m8 l7 center" style="margin: auto; width: 80%">
								<img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageDJ" class="  responsive-img valign profile-image    " style="width: 80px">
							</div>
							<br>
							<div class="file-field input-field col s12 ">
								<div class="btn light-blue darken-1 ">
									<span>SUBIR</span>
									<input type="file" id="documentoDJ" name="documentoDJ" >
								</div>
								<div class="file-path-wrapper">
									<input class="file-path validate" type="text" name="text" id="imagenDJ">
									<p class="right"><i>Solo se permiten archivos con extensión  
										pdf en tamaño maximo 2MB. </i>
									</p>
									<div id="error_archivo" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			{{-- SEC IMAGEN --}} 
 
			</div>
		</form>
	</div>
</div>