{{--declaracion jurada  --}}
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
								<th>TIPO DE DOCUMENTO</th>
								<th>F.EMISION</th>
								<th>ARCHIVO</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</thead>
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
						<tbody>
							<tr>
								<td>1</td>
								<td>BOLETA DE DATOS PERSONALES</td>
								<td>21-09-2019</td>
								<td>certificadoDefuciones.pdf</td>
								<td>Anulado</td>
								<td> 
									<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
									<i class="material-icons grey-text text-darken-2">delete</i></a>
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
{{--declaracion jurada  --}}
{{-- Datos de domicilio    --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l8">
				<label for="tipoDocumentoDeclaracionJurada">Tipo de documento</label>                 
				<select class="browser-default" id="tipoDocumentoDeclaracionJurada" name="tipoDocumentoDeclaracionJurada" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">event_available</i>
				<input id="fechaEmisionDeclaracionJurada" name="fechaEmisionDeclaracionJurada" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaEmisionDeclaracionJurada">Fecha de emisión</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		<div class="col s12 m12 l12">
			{{-- llenar --}}
		</div>
		<div class="input-field col s12 m12 l12">
			<i class="material-icons prefix">mode_edit</i>
			<textarea id="anotacionesDeclaracionJurada" name="anotacionesDeclaracionJurada" class="materialize-textarea" lenght="200" maxlength="200" value=""></textarea>
			<label for="anotacionesDeclaracionJurada" class="">Anotaciones</label>
		</div>
	</div>
</div>
{{-- Datos de domicilio    --}}