{{-- Registros de capacitación  --}}
<div class="row" >
	<div class="col s12 m6 l12">
		<br>
		<div class="card">
			<span>ACCIONES DE ASCENSO/span>
			<br>
			<div class="row">
				<div class="col s12 m12 l12">
					<div class="card-content" style="overflow-x:scroll">
						<table id="data-table-simpleIII" class="responsive-table display tabla"{{-- style="white-space: nowrap;" --}} >
						<thead>
							<tr>
								<th>N°</th>
								<th>ACCIÓN</th>
								<th>MOTIVO</th>
								<th>REGIMEN</th>
								<th>F.INICIO</th>
								<th>F.FIN</th>
								<th>ESCALA ANTERIOR</th>
								<th>ESCALA NUEVA</th>
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
								<th>ESCALA ANTERIOR</th>
								<th>ESCALA NUEVA</th>
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
								<td> 12</td>
								<td> 13</td>
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
</div>
{{-- Registros de capacitación  --}}


	{{-- datos Principales de la resolucion  --}}
	<div class="col s12 m6 l12">
		<br>
		<div class="card">
			<span>datos Principales de la resolución </span>
			<div class="col s12 m12 l12"> 
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input readonly="readonly" placeholder="" id="codigoPlazaActual" name="codigoPlazaActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="codigoPlazaActual">TIPO DE RESOLUCIÓN</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">school</i>
						<input readonly="readonly" placeholder="" id="modalidadEducativaActual" name="modalidadEducativaActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="modalidadEducativaActual">NUMERO DE RESOLUCION</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">school</i>
						<input readonly="readonly" placeholder="" id="nivelEducativoActual" name="nivelEducativoActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="nivelEducativoActual">FECHA DE RESOLUCION</label> 
					</div>
				</div> 
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input readonly="readonly" placeholder="" id="codigoModularActual" name="codigoModularActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="codigoModularActual">CODIGO MODULAR</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">account_balance</i>
						<input readonly="readonly" placeholder="" id="centroLaboralActual" name="centroLaboralActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="centroLaboralActual">CENTRO LABORAL</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">work</i>
						<input readonly="readonly" placeholder="" id="escalaActual" name="escalaActual" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="escalaActual">ESCALA/CATEGORIA/NIVEL/GRUPO</label> 
					</div>
				</div> 
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">work</i>
						<input readonly="readonly" placeholder="" id="condicionLaboralActual" name="condicionLaboralActual" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
						<label for="condicionLaboralActual">CONDICIÓN LABORAL</label>
						<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input readonly="readonly" placeholder="" id="situacionLaboralActual" name="situacionLaboralActual" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
						<label for="situacionLaboralActual">SITUACIÓN LABOARAL</label>
						<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	{{-- datos Principales de la resolucion  --}}