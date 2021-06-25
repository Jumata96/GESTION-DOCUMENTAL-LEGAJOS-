{{-- Registros de datos domiciliarios   --}}
<div class="col s12 m12 l12">
	<br>
	<div class="card">
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simple" class="responsive-table display tabla" >
						{{-- style="white-space: nowrap;" --}}
						<thead>
							<tr>
								<th>#</th>
								<th>TIPO DE DIRECCIÓN</th>
								<th>ZONAS</th>
								<th>TIPO DE VÍA</th>
								<th>DIRECCIÓN</th>
								<th>DEPARTAMENTO/PROVINCIA/DISTRITO</th>
								<th>ARCHIVO</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						{{-- <tfoot>
							<tr>
								<th>#</th>
								<th>TIPO DE DIRECCIÓN</th>
								<th>ZONAS</th>
								<th>TIPO DE VÍA</th>
								<th>DIRECCIÓN</th>
								<th>DEPARTAMENTO/PROVINCIA/DISTRITO</th>
								<th>ARCHIVO</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot> --}}
						<tbody id="tbodyDirecciones">
							{{-- <tr>
								<td>1</td>
								<td>principal</td>
								<td>urbanización</td>
								<td>calle</td>
								<td>jr.piura</td>
								<td> LIMA-LIMA-SAN MIGUEL</td>
								<td>certificadoDefuncion.pdf</td>
								<td>APROBADO</td>
								<td>  
									<center>
										<a   class=" waves-effect waves-light grey lighten-5 tooltipped" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"   data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons" style="color: #7986cb ">visibility</i></a> 

									<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"  data-position="top" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a> 

									</center> 
								</td>
							</tr> --}}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{-- Registros de datos domiciliarios   --}}
{{-- Datos de domicilio    --}}
<div class="col s12 m12 l12">
	<br>
	<div class="card">
		<form id="myFormDirecciones" accept-charset="UTF-8" enctype="multipart/form-data" >
		<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>AGREGAR DIRECCIÓN A LA LISTA</h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped"  data-position="top" data-delay="500" data-tooltip="Agregar Direccion" v-on:click="agregarDireccion()" >
					<i class="material-icons" style="color: #03a9f4">add</i>
					</a>
					<a style="margin-left: 6px"></a>       
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
<div class="col s12 m8 l8">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoDirecciónDomicilio">Tipo de dirección</label>                 
				<select class="browser-default" id="tipoDirecciónDomicilio" name="tipoDirecciónDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
					<option value="PRINCIPAL">PRINCIPAL</option>
					<option value="SECUNDARIO">SECUNDARIA</option>
				</select>
				<div id="error_dir_tipoDirecciónDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="zonaDomicilio">ZONA</label>                 
				<select class="browser-default" id="zonaDomicilio" name="zonaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
					<option value="ANEXO">ANEXO</option> 
					<option value="ASOCIACIÓN DE VIVIENDA">ASOCIACIÓN DE VIVIENDA</option> 
					<option value="BARRIO O CUARTEL">BARRIO O CUARTEL</option> 
					<option value="CASERÍO">CASERÍO</option> 
					<option value="CONJUNTO HABITACIONAL">CONJUNTO HABITACIONAL</option> 
					<option value="COOPERATIVA DE VIVIENDA	">COOPERATIVA DE VIVIENDA	</option> 
					<option value="CIUDAD">CIUDAD</option> 
					<option value="PUEBLO JOVEN">PUEBLO JOVEN</option> 
					<option value="URBANIZACIÓN ">URBANIZACIÓN </option>  
					<option value="CAMPAMENTO MINERO">CAMPAMENTO MINERO</option> 
					<option value="COMUNIDAD INDÍGENA">COMUNIDAD INDÍGENA</option> 

				</select>
				<div id="error_dir_zonaDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="tipoViaDomicilio">Tipo de via</label>                 
				<select class="browser-default" id="tipoViaDomicilio" name="tipoViaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
					<option value="CALLE" >CALLE</option>
					<option value="JIRON" >JIRON</option>
					<option value="MANZANA" >MANZANA</option>
					<option value="CARRETERA" >CARRETERA</option>
					<option value="AUTOPISTA" >AUTOPISTA</option>
					<option value="INTERSECCION" >INTERSECCION</option>
					<option value="PASO A NIVEL" >PASO A NIVEL</option>
					
				</select> 
				<div id="error_dir_tipoViaDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="departamentoDomicilio">Departamento</label>                 
				<select class="browser-default" id="departamentoDomicilio" name="departamentoDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
						<option  v-for="(departamento,index ) in departamentos"   v-on:click="buscarProvincias()"  :value="departamento.idDepa" v-text="departamento.departamento"> </option>
				</select>
				<div id="error_dir_departamentoDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="provinciaDomicilio">Provincia</label>                 
				<select class="browser-default" id="provinciaDomicilio" name="provinciaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option> 
						<option  v-for="(provincia,index ) in provincias"   :value="provincia.idProv" v-text="provincia.provincia"> </option>


				</select>
				<div id="error_dir_provinciaDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="distritoDomicilio">Distrito</label>                 
				<select class="browser-default" id="distritoDomicilio" name="distritoDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
						<option  v-for="(distrito,index ) in distritos"   :value="distrito.idDist" v-text="distrito.distrito"> </option>

				
				</select>
				<div id="error_dir_distritoDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l12">
				<i class="material-icons prefix  ">add_location</i>
				<input id="direccionDomicilio" name="direccionDomicilio" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="direccionDomicilio">Dirección</label>
				<div id="error_dir_direccionDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l12">
				<i class="material-icons prefix  ">label_outline</i>
				<input id="referenciaDomicilio" name="referenciaDomicilio" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="referenciaDomicilio">Referencia</label>
				<div id="error_dir_referenciaDomicilio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		
			 {{-- llenar  --}}
		</div>
						{{-- SEC IMAGEN --}}
				<div class="col s12 m6 l4 ">
					<div class="">
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
										<input type="file" id="documentoDireccion" name="documentoDireccion" >
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text" name="text" id="imagen">
										<p class="right"><i>Solo se permiten archivos con extensión  
											pdf en tamaño maximo 2MB. </i>
										</p>
										<div id="documentoDireccion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				{{-- SEC IMAGEN --}} 
		</form>
	</div>
</div>
{{-- Datos de domicilio    --}}