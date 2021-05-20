{{-- Datos de familiares  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleI" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>APELLIDOS Y NOMBRE</th>
								<th>DNI</th>
								<th>PARENTESCO</th>
								<th>SEXO</th>
								<th>F.NACIMIENTO</th>
								<th>SITUACIÓN</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>APELLIDOS Y NOMBRE</th>
								<th>DNI</th>
								<th>PARENTESCO</th>
								<th>SEXO</th>
								<th>F.NACIMIENTO</th>
								<th>SITUACIÓN</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>LIZ BALTAZAR MENDOZA</td>
								<td>33565285</td>
								<td>HERMANO</td>
								<td>FEMENINO</td>

								<td>23/05/1996</td>
								<td> FALLECIDO</td>
								<td>APROBADO</td>
								<td>

                  <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2">clear</i></a>

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
{{-- Datos de familiares  --}}

{{-- Datos de domicilio    --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoDocumentoFamiliar">Tipo de documento</label>                 
				<select class="browser-default" id="tipoDocumentoFamiliar" name="tipoDocumentoFamiliar" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div> 
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">search</i>
				<input id="numeroDocumentoFamiliar" name="numeroDocumentoFamiliar" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="numeroDocumentoFamiliar">Numero de Documento</label>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
		</div> 
	</div>
</div>
{{-- Datos de domicilio    --}}