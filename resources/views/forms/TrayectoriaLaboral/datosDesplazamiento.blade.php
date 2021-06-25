{{-- Registros de capacitación  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Registro de desplazamiento</span>
		<br>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleI" class="responsive-table display tabla"{{-- style="white-space: nowrap;" --}} >
					<thead>
						<tr>
							<th>N°</th>
							<th>ACCIÓN</th>
							<th>MOTIVO</th>
							<th>REGIMEN</th>
							<th>F.INICIO</th>
							<th>F.FIN</th>
							<th>CARGO</th>
							<th>CENTRO ORIGEN</th>
							<th>CENTRO DESTINO</th>
							<th>RESOLUCIÓN</th>
							<th>ESTADO</th>
							<th class="center">ACCIONES</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>N°</th>
							<th>ACCIÓN</th>
							<th>MOTIVO</th>
							<th>REGIMEN</th>
							<th>F.INICIO</th>
							<th>F.FIN</th>
							<th>CARGO</th>
							<th>CENTRO ORIGEN</th>
							<th>CENTRO DESTINO</th>
							<th>RESOLUCIÓN</th>
							<th>ESTADO</th>
							<th>ACCIONES</th>
						</tr>
					</tfoot>
					<tbody>
						<tr>
							<td>1</td>
							<td>TALLER</td>
							<td>LUGEL 6</td>
							<td>PARTICIPANTE</td>
							<td>NO ESPECIFICADO</td>
							<td>23/05/1996</td>
							<td>23/05/1996</td>
							<td>23/05/1996</td>
							<td> 12</td>
							<td> 0.0</td>
							<td>APROBADO</td>
							<td> 
								<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
								<i class="material-icons grey-text text-darken-2" style="color: red">clear</i></a>
								<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
								<i class="material-icons grey-text text-darken-2">archive</i></a>
							</td>
						</tr>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{-- Registros de capacitación  --}}


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
									<label for="tipoResolucion">Tipo de Resolucion</label>                 
									<select v-model="tipoResolucion" class="browser-default" id="tipoResolucion" name="tipoResolucion" required>
										<option value="" disabled selected="">Seleccione</option>
										<option value="RESOLUCION DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
									</select>
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="numeroResolucion" v-model="numeroResolucion" placeholder="" name="numeroResolucion" type="number">
									<label for="numeroResolucion"> NUMERO DE RESOLUCIÓN</label> 
									<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">date_range</i>
									<input id="fechaResolucion" v-model="fechaResolucion" placeholder="" class="datepicker" name="fechaResolucion" type="text">
									<label for="fechaResolucion"> FECHA DE RESOLUCIÓN</label> 
									<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="foliosResolucion" name="foliosResolucion"  v-model="foliosResolucion" type="number">
									<label for="foliosResolucion">Folios</label>
									<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">archive</i>
									<input id="lugarFisicoResolucion" name="lugarFisicoResolucion"  v-model="lugarFisicoResolucion" type="text">
									<label for="lugarFisicoResolucion">Lugar fisico</label> 
									<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="col s12 m12 l12">	 
									<div class="col s12 m6 l4">
										<label for="situacionAcademicaTitulos">REGIMEN LABORAL</label>                 
										<select class="browser-default" id="situacionAcademicaTitulos" name="situacionAcademicaTitulos" required>
											<option value="" disabled selected="">Seleccione</option> 
										</select> 
									</div>
											<div class="col s12 m6 l4">
												<label for="inicioDeTitulos">ACCIÓN</label>                 
												<select class="browser-default" id="inicioDeTitulos" name="inicioDeTitulos" required>
													<option value="" disabled selected="">Seleccione</option>
												</select>
												{{-- 
												<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
												--}}
											</div>
									<div class="col s12 m6 l4">
										<label for="finDeTitulos">MOTIVO ACCIÓN</label>                 
										<select class="browser-default" id="finDeTitulos" name="finDeTitulos" required>
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

 {{-- Detalle de la resolución      --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Detalle de la resolución  </span>
		<br>
		 {{-- primera fila --}} 
		<div class="col s12 m12 l12">
			<div class="col s12 m12 l12">
								<div class="input-field col s12 m12 l4">
									<i class="material-icons prefix active">book</i>
									<input id="tituloTitulos" name="tituloTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="tituloTitulos">CODIGO MODULAR </label>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div>
								<div class="input-field col s12 m12 l4">
									<i class="material-icons prefix active">book</i>
									<input id="especialidadRegistroTitulos" name="especialidadRegistroTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="especialidadRegistroTitulos">CENTRO LABORAL</label>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div>
								<div class="col s12 m6 l4">
									<label for="colegioTitulos">MODALIDAD</label>                 
									<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
										<option value="" disabled selected="">Seleccione</option>
									</select>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div> 
			</div><br>
			{{-- primera fila --}} 
			{{-- segunda fila --}} 
			<div class="col s12 m12 l12">
							<div class="col s12 m6 l4">
								<label for="colegioTitulos">NIVEL EDUCATIVO</label>                 
								<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
									<option value="" disabled selected="">Seleccione</option>
								</select>
								{{-- 
								<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								--}}
							</div>
							<div class="col s12 m6 l4">
								<label for="colegioTitulos">CONDICIÓN LABORAL</label>                 
								<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
									<option value="" disabled selected="">Seleccione</option>
								</select>
								{{-- 
								<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								--}}
							</div>
							<div class="col s12 m6 l4">
								<label for="colegioTitulos">SITUACION LABORAL</label>                 
								<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
									<option value="" disabled selected="">Seleccione</option>
								</select>
								{{-- 
								<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								--}}
							</div>
			</div><br> <br>
			{{-- segunda fila --}} 
			{{-- tercera fila --}} 
			<div class="col s12 m12 l12"> 
								<div class="col s12 m6 l4">
									<label for="colegioTitulos">CARGO</label>                 
									<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
										<option value="" disabled selected="">Seleccione</option>
									</select>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div>
								<div class="col s12 m6 l4">
									<label for="colegioTitulos">JORNADA LABORAL</label>                 
									<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
										<option value="" disabled selected="">Seleccione</option>
									</select>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div>
								<div class="input-field col s12 m12 l4">
									<i class="material-icons prefix active">date_range</i>
									<input id="fechaColegiaturaTitulos" name="fechaColegiaturaTitulos" class="datepicker" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
									<label for="fechaColegiaturaTitulos">Fecha de inicio</label>
									{{-- 
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
									--}}
								</div>
			</div><br> <br>
			{{-- tercera fila --}} 
		</div>
		
		<br> 
		<br>  
</div>
</div>
{{-- Detalle de la resolución      --}}
 