{{-- Registros de capacitación  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Registros de capacitación </span>
		<br>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleI" class="responsive-table display tabla"{{-- style="white-space: nowrap;" --}} >
					<thead>
						<tr>
							<th>N°</th>
							<th>TIPO DE ESTUDIOS</th>
							<th>INSTITUCIÓN</th>
							<th>TEMA</th>
							<th>TIPO DE CONSTANCIA</th>
							<th>F.INICIO</th>
							<th>F.FIN</th>
							<th>F.EMISIÓN</th>
							<th>DURACIÓN EN HORAS</th>
							<th>CREDITOS</th>
							<th>ESTADO</th>
							<th class="center">ACCIONES</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>N°</th>
							<th>TIPO DE ESTUDIOS</th>
							<th>INSTITUCIÓN</th>
							<th>TEMA</th>
							<th>TIPO DE CONSTANCIA</th>
							<th>F.INICIO</th>
							<th>F.FIN</th>
							<th>F.EMISIÓN</th>
							<th>DURACIÓN EN HORAS</th>
							<th>CREDITOS</th>
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
{{-- Datos de domicilio    --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Datos de capacitación </span>
		{{-- fila 1 --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoEstudiosCapacitaciones">Tipo de estudios</label>                 
				<select class="browser-default" id="tipoEstudios" name="tipoEstudios" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">label</i>
				<input id="temaCapacitaciones" name="temaCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="temaCapacitaciones">Tema</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- fila 1 --}}
		{{-- segunda columna --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaInicioCapacitaciones" name="fechaInicioCapacitaciones" type="text" class="datepicker" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaInicioCapacitaciones">fecha inicio</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaFinCapacitaciones" name="fechaFinCapacitaciones" type="text" class="datepicker" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaFinCapacitaciones">fecha fin</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- segunda columna --}}
		{{-- tercera columna --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoParticipacionCapacitaciones">Tipo de participación</label>                 
				<select class="browser-default" id="tipoParticipacionCapacitaciones" name="tipoParticipacionCapacitaciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="input-field col s12 m12 l8">
				<i class="material-icons prefix active">business</i>
				<input id="institucionCapacitaciones" name="institucionCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="institucionCapacitaciones">institucion</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- tercera columna --}}
		{{-- cuarta columna --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="paisCapacitaciones">Pais</label>                 
				<select class="browser-default" id="paisCapacitaciones" name="paisCapacitaciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">location_city</i>
				<input id="ciudadCapacitaciones" name="ciudadCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="ciudadCapacitaciones">ciudad</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="tipoConstanciaCapacitaciones">TIPO DE CONSTANCIA</label>                 
				<select class="browser-default" id="tipoConstanciaCapacitaciones" name="tipoConstanciaCapacitaciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		{{-- cuarta columna --}} 
		{{-- quinta columna --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">filter_9_plus</i>
				<input id="numeroRegistrosCapacitaciones" name="numeroRegistrosCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="numeroRegistrosCapacitaciones">Numero de registro</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaEmisionCapacitaciones" name="fechaEmisionCapacitaciones" class="datepicker"  type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaEmisionCapacitaciones">Fecha de emisión</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">hourglass_empty</i>
				<input id="numeroHorasCapacitaciones" name="numeroHorasCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="numeroHorasCapacitaciones">Duración de horas</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- quinta columna --}}
		{{-- sexta columna --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">filter_9_plus</i>
				<input id="creditosCapacitaciones" name="creditosCapacitaciones" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="creditosCapacitaciones">Creditos</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l4">
				<label for="SemestreCapacitaciones">Semestre</label>                 
				<select class="browser-default" id="SemestreCapacitaciones" name="SemestreCapacitaciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="modalidadCapacitaciones">Modalidad</label>                 
				<select class="browser-default" id="modalidadCapacitaciones" name="modalidadCapacitaciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
		</div>
		{{-- sexta columna --}}
		{{-- serptima columna --}}
		<div class="col s12 m12 l12">
			{{-- llenar observaciones  --}}
		</div>
		{{-- serptima columna --}}
	</div>
</div>
{{-- Datos de domicilio    --}}