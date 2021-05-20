{{-- Registros de datos domiciliarios   --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simple" class="responsive-table display tabla" style="white-space: nowrap;">
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
						<tfoot>
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
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>principal</td>
								<td>urbanización</td>
								<td>calle</td>
								<td>jr.piura</td>
								<td> LIMA-LIMA-SAN MIGUEL</td>
								<td>certificadoDefuncion.pdf</td>
								<td>APROBADO</td>
								<td>

                  <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped" draggable="lñmñm"  >
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
{{-- Registros de datos domiciliarios   --}}
{{-- Datos de domicilio    --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoDirecciónDomicilio">Tipo de dirección</label>                 
				<select class="browser-default" id="tipoDirecciónDomicilio" name="tipoDirecciónDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="col s12 m6 l4">
				<label for="zonaDomicilio">ZONA</label>                 
				<select class="browser-default" id="zonaDomicilio" name="zonaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- <div id="error" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
			<div class="col s12 m6 l4">
				<label for="tipoViaDomicilio">Tipo de via</label>                 
				<select class="browser-default" id="tipoViaDomicilio" name="tipoViaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="departamentoDomicilio">Departamento</label>                 
				<select class="browser-default" id="departamentoDomicilio" name="departamentoDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
			<div class="col s12 m6 l4">
				<label for="provinciaDomicilio">Provincia</label>                 
				<select class="browser-default" id="provinciaDomicilio" name="provinciaDomicilio" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
			<div class="col s12 m6 l4">
				<label for="tipoDocumento">Distrito</label>                 
				<select class="browser-default" id="tipoDocumento" name="tipoDocumento" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l12">
				<i class="material-icons prefix active">add_location</i>
				<input id="direccionDomicilio" name="direccionDomicilio" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="direccionDomicilio">Dirección</label>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
		</div>
		<div class="col s12 m12 l12">
			<div class="input-field col s12 m12 l12">
				<i class="material-icons prefix active">label_outline</i>
				<input id="referenciaDomicilio" name="referenciaDomicilio" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="referenciaDomicilio">Referencia</label>
				{{-- <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
			</div>
		</div>
		<div class="col s12 m12 l12">
			 {{-- llenar  --}}
		</div>
	</div>
</div>
{{-- Datos de domicilio    --}}