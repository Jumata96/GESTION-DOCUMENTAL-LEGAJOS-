<div class="row  ">
   {{-- white --}}
   {{-- datos Personales  --}}
   <div class="col s12 m6 l12">
      <br>
      <div class="card">
         <span>Registros de producción intelectual</span>
         <div class="row">
            <div class="col s12 m12 l12">
               <div class="card-content" style="overflow-x:scroll">
                  <table id="data-table-simpleII" class="responsive-table display tabla" style="white-space: nowrap;" >
                     {{--    --}}
                     <thead>
                        <tr>
                           <th>N°</th>
                           <th>ACCIÓN </th>
                           <th>REGIMEN</th>
                           <th>RESOLUCIÓN</th>
                           <th>F.RESOLUCIÓN</th>
                           <th>MONTO FIJO MENSUAL </th>
                           <th>% FIJO MENSUAL</th>
                           <th>ESTADO</th>
                           <th class="center">ACCIONES</th>
                        </tr>
                     </thead>
                     <tfoot>
                        <tr>
                           <th>N°</th>
                           <th>ACCIÓN </th>
                           <th>REGIMEN</th>
                           <th>RESOLUCIÓN</th>
                           <th>F.RESOLUCIÓN</th>
                           <th>MONTO FIJO MENSUAL </th>
                           <th>% FIJO MENSUAL</th>
                           <th>ESTADO</th>
                           <th>ACCIONES</th>
                        </tr>
                     </tfoot>
                     <tbody>
                        <tr>
                           <td>1</td>
                           <td>RETENCIONES</td>
                           <td>DECRETO LEGISLATIVO</td>
                           <td>5555</td>
                           <td>01-08-2020</td>
                           <td>300.0</td>
                           <td>0%</td>
                           <td>APROBADO</td>
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
   {{-- datos Personales  --}}

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
									<label for="tipoResolucionRetenciones">Tipo de Resolucion</label>                 
									<select v-model="tipoResolucionRetenciones" class="browser-default" id="tipoResolucionRetenciones" name="tipoResolucionRetenciones" required>
										<option value="" disabled selected="">Seleccione</option>
										<option value="RESOLUCION DIRECTORIAL"   selected="">RESOLUCION DIRECTORIAL</option>
									</select>
									<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="numeroResolucionRetenciones" v-model="numeroResolucionRetenciones" placeholder="" name="numeroResolucionRetenciones" type="number">
									<label for="numeroResolucionRetenciones"> NUMERO DE RESOLUCIÓN</label> 
									<div id="error2" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">date_range</i>
									<input id="fechaResolucionRetenciones" v-model="fechaResolucionRetenciones" placeholder="" class="datepicker" name="fechaResolucionRetenciones" type="text">
									<label for="fechaResolucionRetenciones"> FECHA DE RESOLUCIÓN</label> 
									<div id="error3" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">class</i>
									<input id="foliosResolucionRetenciones" name="foliosResolucionRetenciones"  v-model="foliosResolucionRetenciones" type="number">
									<label for="foliosResolucionRetenciones">Folios</label>
									<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="input-field col s12 m6 l6">
									<i class="material-icons prefix active">archive</i>
									<input id="lugarFisicoResolucionRetenciones" name="lugarFisicoResolucionRetenciones"  v-model="lugarFisicoResolucionRetenciones" type="text">
									<label for="lugarFisicoResolucionRetenciones">Lugar fisico</label> 
									<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
								</div>
								<div class="col s12 m12 l12">
									<div class="col s12 m6 l4">
										<label for="situacionAcademicaTitulosRetenciones">REGIMEN LABORAL</label>                 
										<select class="browser-default" id="situacionAcademicaTitulosRetenciones" name="situacionAcademicaTitulosRetenciones" required>
											<option value="" disabled selected="">Seleccione</option>
										</select>
									</div>
									<div class="col s12 m6 l4">
										<label for="inicioDeTitulosRetenciones">ACCIÓN</label>                 
										<select class="browser-default" id="inicioDeTitulosRetenciones" name="inicioDeTitulosRetenciones" required>
											<option value="" disabled selected="">Seleccione</option>
										</select>
										{{-- 
										<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
										--}}
									</div>
									<div class="col s12 m6 l4">
										<label for="motivoAccionRetenciones">MOTIVO ACCIÓN</label>                 
										<select class="browser-default" id="motivoAccionRetenciones" name="finDeTitulos" required>
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
									<img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageRetenciones" class="  responsive-img valign profile-image    " style="width: 80px">
								</div>
								<br>
								<div class="file-field input-field col s12 ">
									<div class="btn light-blue darken-1 ">
										<span>SUBIR</span>
										<input type="file" id="archivoRetenciones" name="archivo" >
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text" name="text" id="imagen">
										<p class="right"><i>Solo se permiten archivos con extensión  
											PNG en tamaño maximo 2MB. </i>
										</p>
										{{-- <div id="error6" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> --}}
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
			<div class="col s12 m6 l5">
				<label for="tipoRetenciones">TIPO DE RETENCION</label>                 
				<select class="browser-default" id="tipoRetenciones" name="tipoRetenciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>  
		</div>
		{{-- segunda fila --}}  
      {{-- segunda fila --}}
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l5">
				<label for="tipoBeneficiariosRetenciones">TIPO DE BENEFICIARIO</label>                 
				<select class="browser-default" id="tipoBeneficiariosRetenciones" name="tipoBeneficiariosRetenciones" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div>  
		</div>
		{{-- segunda fila --}}  
		{{-- cuarta fila --}}
		<div class="col s12 m12 l12">
			<div class="input-field col s12 l12 m12">
                                  <i class="material-icons prefix">mode_edit</i>
                                  <textarea id="glosaRetenciones" name="glosaRetenciones" class="materialize-textarea" lenght="200" maxlength="200" value="" style="height: 84px"></textarea>
                                  <label for="glosaRetenciones" class="">Comentario</label>
                                </div>  
		</div>
		{{-- cuarta fila --}} 
	</div>
</div>
{{-- Detalle de la resolución  --}}
</div>