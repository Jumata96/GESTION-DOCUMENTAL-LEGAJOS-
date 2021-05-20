{{-- Datos de familiares  --}}
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
								<th>NIVEL EDUCATIVO </th>
								<th>CENTRO ESTUDIOS</th>
								<th>ESPECIALIDAD</th>
								<th>AÑO INICIO</th>
								<th>AÑO FIN</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>NIVEL EDUCATIVO </th>
								<th>CENTRO ESTUDIOS</th>
								<th>ESPECIALIDAD</th>
								<th>AÑO INICIO</th>
								<th>AÑO FIN</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>UNIVERSIDAD</td>
								<td>UNR</td>
								<td>RR.HH</td>
								<td>2015</td>
								<td>2021</td>
								<td> CULMINADO</td>
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
{{-- Datos de familiares  --}}
{{-- Datos Academicos    --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos de formación académica</span>
		<br>
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="nivelEducativoTitulos">NIVEL EDUCATIVO</label>                 
				<select class="browser-default" id="nivelEducativoTitulos" name="nivelEducativoTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">domain</i>
				<input id="centroEstudiosTitulos" name="centroEstudiosTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="centroEstudiosTitulos">CENTRO DE ESTUDIOS</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="paisTitulos">PAIS</label>                 
				<select class="browser-default" id="paisTitulos" name="paisTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- primera fila --}}
		{{-- segunda fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="departamentoTitulos">DEPARTAMENTO</label>                 
				<select class="browser-default" id="departamentoTitulos" name="departamentoTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="provinciaTitulos">PROVINCIA</label>                 
				<select class="browser-default" id="provinciaTitulos" name="provinciaTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="distritoTitulos">DISTRITO</label>                 
				<select class="browser-default" id="distritoTitulos" name="distritoTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		<br><br><br><br><br>
		<br><br><br>
		{{-- segunda fila --}} 
	</div>
</div>
{{-- Datos Academicos    --}}
{{-- Datos de Estudio    --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos de estudio</span>
		<br> 
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="situacionAcademicaTitulos">SITUACIÓN ACADEMICA</label>                 
				<select class="browser-default" id="situacionAcademicaTitulos" name="situacionAcademicaTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
					<option value="" >COMPLETO</option>
					<option value="" >INCOMPLETO</option>
					<option value="" >EGRESADO</option>
					<option value="" >CON GRADO</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="inicioDeTitulos">AÑO INICIO</label>                 
				<select class="browser-default" id="inicioDeTitulos" name="inicioDeTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="finDeTitulos">AÑO FIN </label>                 
				<select class="browser-default" id="finDeTitulos" name="finDeTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		<br><br><br><br><br>
		{{-- primera fila --}}  
	</div>
</div>
{{-- Datos de Estudio    --}}
{{-- Datos de definición de la carrera  --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos de definición de la carrera  </span>
		<br> 
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="grupoDeCarrerasTitulos"> GRUPO DE CARRERA</label>                 
				<select class="browser-default" id="grupoDeCarrerasTitulos" name="grupoDeCarrerasTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="nivelTitulos">NIVEL </label>                 
				<select class="browser-default" id="nivelTitulos" name="nivelTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="especialidadTitulos">ESPECIALIDAD </label>                 
				<select class="browser-default" id="especialidadTitulos" name="especialidadTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		<br><br><br><br><br>
		{{-- primera fila --}}  
	</div>
</div>
{{-- Datos de definición de la carrera  --}}
{{-- Datos del título y el registro      --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos del título y el registro  </span>
		<br>
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">book</i>
				<input id="tituloTitulos" name="tituloTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="tituloTitulos">Titulo</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">book</i>
				<input id="especialidadRegistroTitulos" name="especialidadRegistroTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="especialidadRegistroTitulos">Especialidad</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaExpedicionTitulos" name="fechaExpedicionTitulos" class="datepicker" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaExpedicionTitulos">Fecha de expedición</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- primera fila --}} 
		<br>
		{{-- segunda fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m12 l2">
				<div class="col  s12 m12 l12 ">
					<label>
						<p>Tipo de centro : </p>
					</label>
				</div>
			</div>
			<div class="input-field col s12 m12 l8">
				<div class="col  s12 m12 l2 ">
					<label>
					<input class="with-gap"  name="group1" type="radio" checked/>
					<span>UGEL</span>
					</label>
				</div>
				<div class="col  s12 m12 l2 ">
					<label>
					<input  class="with-gap"  name="group1" type="radio" />
					<span>DRE</span>
					</label>
				</div>
				<div class="col  s12 m12 l2 "> 
					<label>
					<input class="with-gap" name="group1" type="radio" />
					<span>MINEDU</span>
					</label>
				</div>
				<div class="col  s12 m12 l2 ">
					<label>
					<input  class="with-gap"  name="group1" type="radio"   />
					<span>SUNEDU</span>
					</label>
				</div>
			</div>
		</div>
		{{-- segunda fila --}} 
		<br>
		{{-- tercera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="centroRegistrosTitulos">CENTRO DE REGISTRO</label>                 
				<select class="browser-default" id="centroRegistrosTitulos" name="centroRegistrosTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">filter_9_plus</i>
				<input id="numeroRegistroTitulos" name="numeroRegistroTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="numeroRegistroTitulos">Especialidad</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaExpedicionTitulos" name="fechaExpedicionTitulos" class="datepicker" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaExpedicionTitulos">Fecha de registro</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- tercera fila --}} 
		{{-- tercera fila --}}
		<div class="input-field col s12 m12 l4">
			<i class="material-icons prefix active">date_range</i>
			<input id="fechaResolucionTitulos" name="fechaResolucionTitulos" class="datepicker"  type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
			<label for="fechaResolucionTitulos">Fecha de resolución</label>
			{{-- 
			<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			--}}
		</div>
		<div class="input-field col s12 m12 l4">
			<i class="material-icons prefix active">filter_9_plus</i>
			<input id="numeroResolucionTitulos" name="numeroResolucionTitulos" type="text"   data-error=".errorTxt1"   onkeyup="mayus(this);">
			<label for="numeroResolucionTitulos">numero de resolución</label>
			{{-- 
			<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			--}}
		</div>
	</div>
	{{-- tercera fila --}} 
</div>

{{-- Datos del título y el registro      --}}

{{-- Datos del título y el registro      --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos de colegiatura  </span>
		<br> 
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="colegioTitulos">COLEGIO</label>                 
				<select class="browser-default" id="colegioTitulos" name="colegioTitulos" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">filter_9_plus</i>
				<input id="numeroColegiaturaTitulos" name="numeroColegiaturaTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="numeroColegiaturaTitulos">Numero de colegiatura</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaColegiaturaTitulos" name="fechaColegiaturaTitulos" class="datepicker" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaColegiaturaTitulos">Fecha de Colegiatura</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- primera fila --}}  
</div>
</div>
{{-- Datos del título y el registro      --}}