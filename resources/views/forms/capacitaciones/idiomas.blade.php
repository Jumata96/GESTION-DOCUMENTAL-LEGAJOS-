{{-- Registros de idiomas del servido  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
    <span>Registros de idiomas del servidor</span>
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-content" style="overflow-x:scroll">
					<table id="data-table-simpleIII" class="responsive-table display tabla" style="white-space: nowrap;">
						<thead>
							<tr>
								<th>N°</th>
								<th>TIPO DE IDIOMA </th>
								<th>IDIOMA</th>
								<th>DOMINIO ESCRITURA</th>
								<th>DOMINIO ORAL</th>
								<th>LUGAR DE APRENDIZAJE</th>
								<th>NIVEL DE CERTIFICACIÓN</th>
								<th>FECHA DE CERTIFICACIÓN</th>
								<th>ARCHIVO</th>								
                <th>ESTADO</th>
								<th class="center">ACCIONES</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>N°</th>
								<th>TIPO DE IDIOMA </th>
								<th>IDIOMA</th>
								<th>DOMINIO ESCRITURA</th>
								<th>DOMINIO ORAL</th>
								<th>LUGAR DE APRENDIZAJE</th>
								<th>NIVEL DE CERTIFICACIÓN</th>
								<th>FECHA DE CERTIFICACIÓN</th>
								<th>ARCHIVO</th>								
                <th>ESTADO</th>
								<th>ACCIONES</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>1</td>
								<td>MATERNO</td>
								<td>CASTELLANO</td>
								<td>AVANZADO</td>
								<td>AVANZADO</td>
								<td>ucv</td>
								<td>---</td>
								<td>---</td>
								<td>DOC.pdf</td>
								<td> APROBADO</td>
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
{{-- Registros de idiomas del servido  --}}


{{-- Registros de idiomas del servido  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
    <span>Tipo de idioma</span>
		<div class="row">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l6">
				<label for="tipoIdioma">TIPO DE IDIOMA</label>                 
				<select class="browser-default" id="tipoIdioma" name="tipoIdioma" required>
					<option value="" disabled selected="">Seleccione</option>
				</select> 
			</div>
			<div class="col s12 m6 l6">
				<label for="selectIdioma">IDIOMA</label>                 
				<select class="browser-default" id="selectIdioma" name="selectIdioma" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
        <br><br> 
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div> 
		</div> 
		</div>
	</div>
</div>
{{-- Registros de idiomas del servido  --}}


{{-- Nivel de conocimiento  --}}
<div class="col s12 m6 l12">
	<br>
	<div class="card">
    <span>Nivel de conocimiento </span>
		<div class="row">
		<div class="col s12 m12 l12">
			<div class="col s12 m6 l6">
				<label for="escrituraIdioma">ESCRITURA</label>                 
				<select class="browser-default" id="escrituraIdioma" name="escrituraIdioma" required>
					<option value="" disabled selected="">Seleccione</option>
				</select> 
			</div>
			<div class="col s12 m6 l6">
				<label for="oralIdioma">ORAL</label>                 
				<select class="browser-default" id="oralIdioma" name="oralIdioma" required>
					<option value="" disabled selected="">Seleccione</option>
				</select>
        <br><br> 
				{{-- 
				<div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
				--}}
			</div> 
		</div> 
		</div>
	</div>
</div>
{{-- Nivel de conocimiento  --}}


   {{-- Datos de producción intelectual --}}
   <div class="col s12 m6 l12">
      <div class="card">
         <span>  Datos de producción intelectual </span>
									{{-- primera fila  --}}
         <div class="col s12 m6 l12">
            <div class="col s12 m6 l4">
               <label for="tipoProduccion">Tipo de producción</label>                 
               <select class="browser-default" id="tipoProduccion" name="tipoProduccion" required>
                  <option value="" disabled selected="">Seleccione</option>
               </select>
            </div>
            <div class="input-field col s12 m6 l6">
               <i class="material-icons prefix active">assignment_turned_in</i>
               <input id="tituloProduccion" name="tituloProduccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="tituloProduccion">Titulo</label>
            </div>
         </div>
									{{-- primera fila  --}} 
									{{-- segunda fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l12">
               <i class="material-icons prefix active">create</i> 
               <textarea name="descripcionProduccion" class="materialize-textarea" id="descripcionProduccion" cols="30" rows="10"></textarea>
               <label for="descripcionProduccion">Descripción/Resumen</label>
            </div>
         </div>
									{{-- segunda fila  --}}
 
      </div>
   </div>
   {{-- Datos de producción intelectual --}}

 