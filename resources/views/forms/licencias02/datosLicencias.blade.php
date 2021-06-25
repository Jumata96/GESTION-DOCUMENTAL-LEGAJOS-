{{--Datos de vacaciones  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Datos de vacaciones </span>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleI" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>ACCIÓN</th>
								<th>MOTIVO</th>
								<th>RÉGIMEN</th>
								<th>DÍAS</th>
								<th>F.INICIO</th>
								<th>F.FIN</th>
								<th>N° RESOLUCIÓN</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>ACCIÓN</th>
								<th>MOTIVO</th>
								<th>RÉGIMEN</th>
								<th>DÍAS</th>
								<th>F.INICIO</th>
								<th>F.FIN</th>
								<th>N° RESOLUCIÓN</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>VACACIONES</td>
								<td>APROBADO POR VACACIONES</td>
								<td>02-09-2018</td>
								<td>1</td>
								<td>02-09-2018</td>
								<td>02-09-2019</td>
								<td>365</td>
								<td> APROBADO</td>
								<td>
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2"  data-tooltip="Eliminar" >clear</i></a>
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2"  data-tooltip="Historial">archive</i></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{--Datos de vacaciones  --}}

 {{-- Datos principales de la resolución    --}}
<div class="col s12 m6 l12">
	<div class="card"> 
		<br> 
		<div class="row cuerpo">
			<div class="row"  v-show="datosEmpleador" >
				<div class="col s12 m6 l8 ">
					<div class="col s12 m6 l12 card">
						<span>DATOS PRINCIPALES DE RESOLUCIÓN</span>
						<br><br> 
						<form action="" method="POST"  id="formExpediente">
							<input type="hidden" name="idTrabajador" id="idTrabajador" >
							<div class="col s12 m6 l12">
								<div class="col s12 m6 l6">
									<label for="tipoResolucionLicencia">Tipo de Resolucion</label>                 
									<select v-model="tipoResolucionLicencia" class="browser-default" id="tipoResolucionLicencia" name="tipoResolucionLicencia" required>
										<option value="" disabled selected="">Seleccione</option>
										<option value="RESOLUCION DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
									</select>
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="numeroResolucionLicencia" v-model="numeroResolucionLicencia" placeholder="" name="numeroResolucionLicencia" type="number">
									<label for="numeroResolucionLicencia"> NUMERO DE RESOLUCIÓN</label> 
									<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">date_range</i>
									<input id="fechaResolucionLicencia" v-model="fechaResolucionLicencia" placeholder="" class="datepicker" name="fechaResolucionLicencia" type="text">
									<label for="fechaResolucionLicencia"> FECHA DE RESOLUCIÓN</label> 
									<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="foliosResolucionLicencia" name="foliosResolucionLicencia"  v-model="foliosResolucionLicencia" type="number">
									<label for="foliosResolucionLicencia">Folios</label>
									<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div> 
								<div class="col s12 m12 l12">	 
									<div class="col s12 m6 l4">
										<label for="situacionAcademicaTitulosLicencia">REGIMEN LABORAL</label>                 
										<select class="browser-default" id="situacionAcademicaTitulosLicencia" name="situacionAcademicaTitulosLicencia" required>
											<option value="" disabled selected="">Seleccione</option> 
										</select> 
									</div>
											<div class="col s12 m6 l4">
												<label for="inicioDeTitulosLicencia">ACCIÓN</label>                 
												<select class="browser-default" id="inicioDeTitulosLicencia" name="inicioDeTitulosLicencia" required>
													<option value="" disabled selected="">Seleccione</option>
												</select>
												{{-- 
												<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
												--}}
											</div>
									<div class="col s12 m6 l4">
										<label for="finDeTitulosLicencia">MOTIVO ACCIÓN</label>                 
										<select class="browser-default" id="finDeTitulosLicencia" name="finDeTitulosLicencia" required>
											<option value="" disabled selected="">Seleccione</option>
										</select>
										{{-- 
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									</div> 
									<br> <br> <br>
									<br> <br> <br>
							</div> 
							
									<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
						</form>
					</div>
				</div>
				{{-- SEC IMAGEN --}}
				<div class="col s12 m6 l4 ">
					<div class="card white">
						<span class="card-title">Documentos</span>
						<div class="row">
							<div class="file-field input-field col s12">
								<div class="col s8 m8 l7 center" style="margin: auto; width: 80%">
									<img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageLicencia" class="  responsive-img valign profile-image    " style="width: 80px">
								</div>
								<br>
								<div class="file-field input-field col s12 ">
									<div class="btn light-blue darken-1 ">
										<span>SUBIR</span>
										<input type="file" id="archivoLicencia" name="archivo" >
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text" name="text" id="imagenLicencia">
										<p class="right"><i>Solo se permiten archivos con extensión  
											PNG en tamaño maximo 2MB. </i>
										</p>
										<div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				{{-- SEC IMAGEN --}} 
			</div>
		</div>
	</div>
</div>
{{-- Datos principales de la resolución    --}}

 
{{-- Datos principales de la resolución    --}}
<div class="col s12 m6 l12">
	<div class="card"> 
		<br> 
		<div class="row cuerpo">
			<div class="row"  v-show="datosEmpleador" >
				<div class="col s12 m6 l8 ">
					<div class="col s12 m6 l12 card">
						<span>DATOS PRINCIPALES DE RESOLUCIÓN</span>
						<br><br> 
						<form action="" method="POST"  id="formExpediente">
							<input type="hidden" name="idTrabajador" id="idTrabajador" >
							<div class="col s12 m6 l12"> 
								
								<div class="col s12 m6 l12" >

											<div class="col s12 m6 l6">
														<label for="tipoResolucionMeritoViaje">Tipo de resolución</label>                 
														<select v-model="tipoResolucionMeritoViaje" class="browser-default" id="tipoResolucionMeritoViaje" name="tipoResolucionMeritoViaje" required>
															<option value="" disabled selected="">Seleccione</option>
															{{-- <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option> --}}
														</select>
														<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div>  
										<div class="input-field col s12 m6 l6">
															<i class="material-icons prefix active">date_range</i>
															<input id="numeroResolucionViaje" v-model="numeroResolucionViaje" placeholder=""   name="numeroResolucionViaje" type="text">
															<label for="numeroResolucionViaje"> NUMERO RESOLUCIÓN</label> 
															<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div> 
							</div>
								<div class="input-field col s12 m6 l6">
															<i class="material-icons prefix active">date_range</i>
															<input id="fechaResolucionViajes" v-model="fechaResolucionViajes" placeholder="" class="datepicker" name="fechaResolucionViajes" type="text">
															<label for="fechaResolucionViajes"> FECHA DE RESOLUCIÓN</label> 
															<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div> 
							 <div class="input-field col s12 m6 l6"> 
               <i class="material-icons prefix active">create</i> 
               <textarea name="descripcionProduccionViajes" class="materialize-textarea" id="descripcionProduccionViajes" cols="30" rows="10"></textarea>
               <label for="descripcionProduccionViajes">Descripción/Resumen</label>
            
         </div> 
							</div> 
							
									<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
						</form>
					</div>
				</div>
				{{-- SEC IMAGEN --}}
				<div class="col s12 m6 l4 ">
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
											PNG en tamaño maximo 2MB. </i>
										</p>
										<div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				{{-- SEC IMAGEN --}} 
			</div>
		</div>
	</div>
</div>
{{-- Datos principales de la resolución    --}}
 

{{-- Datos DETALLE de la resolución    --}}
	<div class="col s12 m6 l12">
		<br>
		<div class="card">
			<span>Detalle de la resolución</span>
			<div class="col s12 m12 l12"> 

				<div class="col s12 m6 l12">
					
					 <div class="input-field col s12 m6 l4">
										<i class="material-icons prefix active">date_range</i>
										<input id="fechaInicioLicencia" v-model="fechaInicioLicencia" placeholder="" class="datepicker" name="fechaInicioLicencia" type="text">
										<label for="fechaInicioLicencia"> FECHA DE INICIO</label> 
										<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									</div>

									<div class="input-field col s12 m6 l4">
										<i class="material-icons prefix active">date_range</i>
										<input id="fechaFioLicencia" v-model="fechaFioLicencia" placeholder="" class="datepicker" name="fechaFioLicencia" type="text">
										<label for="fechaFioLicencia"> FECHA FIN</label> 
										<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									</div>

					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">filter_9_plus</i>
						<input id="diaoLicencia" name="diaoLicencia" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="diaoLicencia">NUMERO DE DIAS</label> 
					</div>
				</div> 

						<div class="col s12 m12 l12">
			<div class="input-field col s12 l12 m12">
                                  <i class="material-icons prefix">mode_edit</i>
                                  <textarea id="glosoLicencia" name="glosoLicencia" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
                                  <label for="glosoLicencia" class="">Comentario</label>
                                </div>  
		</div>


			</div> 

		</div>
	</div>
 {{-- Datos DETALLE de la resolución    --}}
 