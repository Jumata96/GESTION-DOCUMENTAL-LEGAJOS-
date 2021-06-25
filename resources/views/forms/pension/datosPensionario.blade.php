{{-- Acciones de beneficios  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>SISTEMA PENSIONARIO DEL SERVIDOR </span>
		<br>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simple" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>RÉGIMEN</th>
								<th>AFP</th>
								<th>TIPO COMISIÓN</th>
								<th>CUSSP</th>
								<th>FECHA AFILIACIÓN</th>
								<th>FECHA DEVENGUE</th>
								<th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>RÉGIMEN</th>
								<th>AFP</th>
								<th>TIPO COMISIÓN</th>
								<th>CUSSP</th>
								<th>FECHA AFILIACIÓN</th>
								<th>FECHA DEVENGUE</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							{{-- <tr>
								<td>1</td>
								<td>TIEMPO DE SERVICIOS</td>
								<td>OTORGAR ASIGNACION</td>
								<td>LEY 29944</td>
								<td>RD-1889-2020</td>
								<td>14/04/2020</td>
								<td> 1500</td>
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
{{-- Acciones de beneficios  --}}
 
{{-- Detalle de la resolución  --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos sel sistema pensionario</span>
		<br>
		{{-- primera fila --}}
		<div class="col s12 m12 l8 card">
			<div class="col s12 m6 l6">
				<label for="regPensionario">REG PENSIONARIO</label>                 
				<select class="browser-default" id="regPensionario" name="regPensionario" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l6">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaAfiliacionPensionario" name="fechaAfiliacionPensionario" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaAfiliacionPensionario">FECHA DE AFILIACIÓN</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l6">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechadevenguePensionario" name="fechadevenguePensionario" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechadevenguePensionario">FECHA DEVENGUE</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l12">
               <i class="material-icons prefix active">create</i> 
               <textarea name="anotacionesPensionario" class="materialize-textarea" id="anotacionesPensionario" cols="30" rows="10"></textarea>
               <label for="anotacionesPensionario">ANOTACIONES</label>
            </div>
         </div>
		</div> 
		{{-- primera fila --}} 

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
		
	</div>

</div>
{{-- Detalle de la resolución  --}}

