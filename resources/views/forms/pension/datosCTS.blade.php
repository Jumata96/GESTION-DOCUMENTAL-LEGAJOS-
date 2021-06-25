{{-- Registro de subsidios por luto / sepelio
 --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
		<span>Registro de ceses definitivos 
</span>
		<br>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleII" class="responsive-table display tabla"{{-- style="white-space: nowrap;" --}} >
					<thead>
						<tr>
							<th>N°</th>
							<th>ACCION</th>
							<th>MOTIVO</th>
							<th>RÉGIMEN</th>
							<th>RESOLUCIÓN</th>
							<th>F.CESE</th>
							<th>TIEMPO DE SERVICIO</th>
							<th>ESTADO</th>
							<th class="center">ACCIONES</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>N°</th>
							<th>ACCION</th>
							<th>MOTIVO</th>
							<th>RÉGIMEN</th>
							<th>RESOLUCIÓN</th>
							<th>F.CESE</th>
							<th>TIEMPO DE SERVICIO</th>
							<th>ESTADO</th>
							<th>ACCIONES</th>
						</tr>
					</tfoot>
					<tbody>
						<tr>
							<td>1</td>
							<td>CESE DEFINITIVO</td>
							<td>RENUNCIA</td>
							<td>LEY 29944</td> 
							<td>RD 2323</td>
							<td>23/05/1996</td> 
							<td> 1 año</td>
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
{{-- Registro de subsidios por luto / sepelio
 --}}


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
									<label for="tipoResolucionCese">Tipo de Resolucion</label>                 
									<select v-model="tipoResolucionCese" class="browser-default" id="tipoResolucionCese" name="tipoResolucionCese" required>
										<option value="" disabled selected="">Seleccione</option>
										<option value="RESOLUCION DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
									</select>
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="numeroResolucionCese" v-model="numeroResolucionCese" placeholder="" name="numeroResolucionCese" type="number">
									<label for="numeroResolucionCese"> NUMERO DE RESOLUCIÓN</label> 
									<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">date_range</i>
									<input id="fechaResolucionCese" v-model="fechaResolucionCese" placeholder="" class="datepicker" name="fechaResolucionCese" type="text">
									<label for="fechaResolucionCese"> FECHA DE RESOLUCIÓN</label> 
									<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="foliosResolucionCese" name="foliosResolucionCese"  v-model="foliosResolucionCese" type="number">
									<label for="foliosResolucionCese">Folios</label>
									<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">archive</i>
									<input id="lugarFisicoResolucionCese" name="lugarFisicoResolucionCese"  v-model="lugarFisicoResolucionCese" type="text">
									<label for="lugarFisicoResolucionCese">Lugar fisico</label> 
									<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="col s12 m12 l12">
									<div class="col s12 m6 l4">
										<label for="situacionAcademicaTitulosCese">REGIMEN LABORAL</label>                 
										<select class="browser-default" id="situacionAcademicaTitulosCese" name="situacionAcademicaTitulosCese" required>
											<option value="" disabled selected="">Seleccione</option>
										</select>
									</div>
									<div class="col s12 m6 l4">
										<label for="inicioDeTitulosCese">ACCIÓN</label>                 
										<select class="browser-default" id="inicioDeTitulosCese" name="inicioDeTitulosCese" required>
											<option value="" disabled selected="">Seleccione</option>
										</select>
										{{-- 
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="col s12 m6 l4">
										<label for="finDeTitulosCese">MOTIVO ACCIÓN</label>                 
										<select class="browser-default" id="finDeTitulosCese" name="finDeTitulosCese" required>
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
									<img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageCese" class="  responsive-img valign profile-image    " style="width: 80px">
								</div>
								<br>
								<div class="file-field input-field col s12 ">
									<div class="btn light-blue darken-1 ">
										<span>SUBIR</span>
										<input type="file" id="archivoCese" name="archivo" >
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
		<span>Detalle de la resolución </span>
		<br>
			{{-- segunda fila --}}
		<div class="col s12 m12 l12"> 
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="fechaCeseCTS" name="fechaCeseCTS" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="fechaCeseCTS">FECHA DE CESE</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- segunda fila --}}  
		{{-- tercera fila --}}
		<div class="col s12 m12 l12"> 
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="añosCeseCts" name="añosCeseCts" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="añosCeseCts">AÑOS</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="mesesCeseCts" name="mesesCeseCts" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="mesesCeseCts">MESES</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
			<div class="input-field col s12 m12 l4">
				<i class="material-icons prefix active">date_range</i>
				<input id="DiasCeseCts" name="DiasCeseCts" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
				<label for="DiasCeseCts">DIAS</label>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>
		</div>
		{{-- tercera fila --}} 
			<div class="col s12 m12 l12">
			<div class="col s12 m6 l4">
				<label for="tipoMonedaCESE">TIPO DE MONEDA</label>                 
				<select class="browser-default" id="tipoMonedaCESE" name="tipoMonedaCESE" required>
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
		{{-- cuarta fila --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 l12 m12">
                                  <i class="material-icons prefix">mode_edit</i>
                                  <textarea id="glosaBeneficiosCts" name="glosaBeneficiosCts" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
                                  <label for="glosaBeneficiosCts" class="">Comentario</label>
                                </div>  
		</div>
		{{-- cuarta fila --}} 
	</div>
</div>
{{-- Detalle de la resolución  --}}


















</div>