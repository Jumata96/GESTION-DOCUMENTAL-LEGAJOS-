{{-- Datos de INGRESO  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleIII" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>RESULTADO APELACIÓN</th>
								<th>RESOLUCIÓN</th>
								<th>F.NOTIFICACIÓN</th>
								<th>DÍAS</th>
								<th>F.INICIO</th>
								<th>F.FIN</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>RESULTADO APELACIÓN</th>
								<th>RESOLUCIÓN</th>
								<th>F.NOTIFICACIÓN</th>
								<th>DÍAS</th>
								<th>F.INICIO</th>
								<th>F.FIN</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							{{-- <tr>
								<td>1</td>
								<td>BECA</td>
								<td>PERU </td>
								<td>01/01/2018</td>
								<td>05/01/2018</td>
								<td>R.M -3443</td> 
								<td> APROBADO</td>
								<td>
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2"  data-tooltip="Eliminar" >clear</i></a>
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2"  data-tooltip="Historial">archive</i></a>
								</td>
							</tr> --}}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{-- Datos de INGRESO  --}}

{{-- Sanción proviene de una sanción de proceso administrativo     --}}
<div class="col s12 m6 l12">
	<div class="card"> 
		<span>Sanción proviene de una sanción de proceso administrativo </span>
		<br> 
		<div class="row cuerpo">
			<div class="row"> 
				<div class="col s12 m6 l12" > 
									<div class="input-field col s12 m6 l6">
															  <div class="switch">
																			<label>
																					Off
																					<input  type="checkbox">
																					<span class="lever"></span>
																					On
																			</label>
																	</div>
										</div>  
							</div>

			</div>
		</div>
	</div>
</div>
{{-- Sanción proviene de una sanción de proceso administrativo     --}}

 
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
 
<div class="col s12 m6 l12">
   <br>
   <div class="card">
      <span>Datos de la sanción administrativa </span>
      <div class="col s12 m12 l12">
         <div class="col s12 m6 l12">
            															<div class="col s12 m6 l4">
                              <label for="regimenLaboralSanAdmin">REGIMEN LABORAL </label>                 
                              <select v-model="regimenLaboralSanAdmin" class="browser-default" id="regimenLaboralSanAdmin" name="regimenLaboralSanAdmin" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 {{-- 
                                 <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
                                 --}}
                              </select>
                              <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
																											<div class="col s12 m6 l4">
                              <label for="tipoSancionAdministrativa">TIPO DE SANCION ADMINISTRATIVA</label>                 
                              <select v-model="tipoSancionAdministrativa" class="browser-default" id="tipoSancionAdministrativa" name="tipoSancionAdministrativa" required>
                                 <option value="" disabled selected="">Seleccione</option>
                                 {{-- 
                                 <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
                                 --}}
                              </select>
                              <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
																											<div class="input-field col s12 m6 l4">
																														<i class="material-icons prefix active">attach_money</i>
																														<input id="multaSanAdmin" v-model="multaSanAdmin" placeholder="" class="datepicker" name="multaSanAdmin" type="text">
																														<label for="multaSanAdmin"> MULTA</label> 
																														<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
																											</div>
         </div>
         <div class="col s12 m6 l12" >
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">date_range</i>
               <input id="fechaNotificacionSanAdmin" v-model="fechaNotificacionSanAdmin" placeholder="" class="datepicker" name="fechaNotificacionSanAdmin" type="text">
               <label for="fechaNotificacionSanAdmin"> FECHA DE NOTIFICACIÓN</label> 
               <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
            </div>
         </div>
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">date_range</i>
               <input id="fechaInicioSanAdmin" v-model="fechaInicioSanAdmin" placeholder="" class="datepicker" name="fechaInicioSanAdmin" type="text">
               <label for="fechaInicioSanAdmin"> FECHA DE INICIO</label> 
               <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">date_range</i>
               <input id="fechaFinSanAdmin" v-model="fechaFinSanAdmin" placeholder="" class="datepicker" name="fechaFinSanAdmin" type="text">
               <label for="fechaFinSanAdmin"> FECHA FIN</label> 
               <div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">filter_9_plus</i>
               <input id="cantidadDiasSanAdmin" name="cantidadDiasSanAdmin" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="cantidadDiasSanAdmin">CANTIDAD DÍAS</label> 
            </div>
         </div>
         <div class="col s12 m12 l12">
            <div class="input-field col s12 l12 m12">
               <i class="material-icons prefix">mode_edit</i>
               <textarea id="glosaSanAdmin" name="glosaSanAdmin" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
               <label for="glosaSanAdmin" class="">ANOTACIONES</label>
            </div>
         </div>
      </div>
   </div>
</div>
{{-- Datos de la sanción administrativa     --}}

 
 