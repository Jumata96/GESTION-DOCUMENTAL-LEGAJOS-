{{-- Datos de INGRESO  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simple" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>TIPO DE MÉRITO</th>
								<th>MÉRITO</th>
								<th>INSTANCIA</th>
								<th>ENTIDAD EMISORA</th>
								<th>RESOLUCIÓN</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>TIPO DE MÉRITO</th>
								<th>MÉRITO</th>
								<th>INSTANCIA</th>
								<th>ENTIDAD EMISORA</th>
								<th>RESOLUCIÓN</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>FELICITACIONES</td>
								<td>PALMA MAGISTERIAL </td>
								<td>MINEDU</td>
								<td>MINISTERIO DE EDUCACIÓN</td>
								<td>R.M -3443</td> 
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
{{-- Datos de INGRESO  --}}
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
								<div class="col s12 m6 l12"> 
										<div class="col s12 m6 l6">
											<label for="tipoMerito">Tipo de Merito</label>                 
											<select v-model="tipoMerito" class="browser-default" id="tipoMerito" name="tipoMerito" required>
												<option value="" disabled selected="">Seleccione</option>
												{{-- <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option> --}}
										</select>
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div> 
										<div class="col s12 m6 l6">
											<label for="meritoNombre">Merito</label>                 
												<select v-model="meritoNombre" class="browser-default" id="meritoNombre" name="meritoNombre" required>
													<option value="" disabled selected="">Seleccione</option>
													{{-- <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option> --}}
											</select>
											<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div> 
								</div>
								<div class="col s12 m6 l12" >

													<div class="col s12 m6 l6">
														<label for="tipoDePalma">Tipo de palma</label>                 
														<select v-model="tipoDePalma" class="browser-default" id="tipoDePalma" name="tipoDePalma" required>
															<option value="" disabled selected="">Seleccione</option>
															{{-- <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option> --}}
														</select>
														<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
												</div> 
												
												<div class="input-field col s12 m6 l6">
															<i class="material-icons prefix active">date_range</i>
															<input id="fechaResolucion" v-model="fechaResolucion" placeholder="" class="datepicker" name="fechaResolucion" type="text">
															<label for="fechaResolucion"> FECHA DE RESOLUCIÓN</label> 
															<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div> 

								</div>
								
								<div class="col s12 m6 l12" >

											<div class="col s12 m6 l6">
														<label for="tipoResolucionMerito">Tipo de resolución</label>                 
														<select v-model="tipoResolucionMerito" class="browser-default" id="tipoResolucionMerito" name="tipoResolucionMerito" required>
															<option value="" disabled selected="">Seleccione</option>
															{{-- <option value="Merito DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option> --}}
														</select>
														<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div>  

										<div class="input-field col s12 m6 l6">
															<i class="material-icons prefix active">filter_9_plus</i>
															<input id="fechaResolucion" v-model="fechaResolucion" placeholder="" class="datepicker" name="fechaResolucion" type="text">
															<label for="fechaResolucion"> NUMERO DE RESOLUCIÓN</label> 
															<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										</div> 
							</div>
							 <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l12">
               <i class="material-icons prefix active">create</i> 
               <textarea name="descripcionProduccion" class="materialize-textarea" id="descripcionProduccion" cols="30" rows="10"></textarea>
               <label for="descripcionProduccion">Descripción/Resumen</label>
            </div>
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








