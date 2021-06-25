{{-- Acciones de beneficios  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Acciones de beneficios </span>
		<br>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simple" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>ACCIÓN</th>
								<th>MOTIVO</th>
								<th>RÉGIMEN</th>
								<th>F.RESOLUCIÓN</th>
								<th>IMPORTE</th>
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
								<th>F.RESOLUCIÓN</th>
								<th>IMPORTE</th>
								<th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
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
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{{-- Acciones de beneficios  --}}
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
{{-- Detalle de la resolución  --}}
<div class="col s12 m6 l12">
	<div class="card">
		<span>Datos principales de la resolución</span>
		<br>
		{{-- primera fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoPagoBeneficios">TIPO DE PAGO</label>                 
				<select class="browser-default" id="tipoPagoBeneficios" name="tipoPagoBeneficios" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaResolucionBeneficios" name="fechaResolucionBeneficios" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaResolucionBeneficios">FECHA DE RESOLUCIÓN</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- primera fila --}}
		{{-- segunda fila --}} 
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoMonedaBeneficios">TIPO DE MONEDA</label>                 
				<select class="browser-default" id="tipoMonedaBeneficios" name="tipoMonedaBeneficios" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">attach_money</i>
				<input id="montoBeneficios" name="montoBeneficios" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="montoBeneficios">MONTO</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- segunda fila --}} 
		{{-- tercera fila --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 l12 m12">
                                  <i class="material-icons prefix">mode_edit</i>
                                  <textarea id="glosaBeneficios" name="glosaBeneficios" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
                                  <label for="glosaBeneficios" class="">Comentario</label>
                                </div>  
		</div>
		{{-- tercera fila --}} 
	</div>
</div>
{{-- Detalle de la resolución  --}}