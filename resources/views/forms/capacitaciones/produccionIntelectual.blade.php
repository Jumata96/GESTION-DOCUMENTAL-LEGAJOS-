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
                           <th>TIPO DE PRODUCCIÓN </th>
                           <th>TITULO</th>
                           <th>F.PUBLICACIÓN</th>
                           <th>EDITORIAL</th>
                           <th>REGISTRO DE INDECOPI</th>
                           <th>NUMERO DE DEPÓSITO LEGAL-BN</th>
                           <th>ESTADO</th>
                           <th class="center">ACCIONES</th>
                        </tr>
                     </thead>
                     <tfoot>
                        <tr>
                           <th>N°</th>
                           <th>TIPO DE PRODUCCIÓN </th>
                           <th>TITULO</th>
                           <th>F.PUBLICACIÓN</th>
                           <th>EDITORIAL</th>
                           <th>REGISTRO DE INDECOPI</th>
                           <th>NUMERO DE DEPÓSITO LEGAL-BN</th>
                           <th>ESTADO</th>
                           <th>ACCIONES</th>
                        </tr>
                     </tfoot>
                     <tbody>
                        <tr>
                           <td>1</td>
                           <td>MONOGRAFIAS</td>
                           <td>EDUCACION ESPECIAL</td>
                           <td>02-02-2020</td>
                           <td>DIDAKTA</td>
                           <td>---</td>
                           <td>---</td>
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
   {{-- datos Personales  --}}
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
            <div class="input-field col s12 m6 l8">
               <i class="material-icons prefix active">assignment_turned_in</i>
               <input id="tituloProduccion" name="tituloProduccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="tituloProduccion">Titulo</label>
            </div>
         </div>
									{{-- primera fila  --}}
									{{-- segunda fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">date_range</i>
               <input id="fechaProduccion" name="fechaProduccion" type="text" class="datepicker" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="fechaProduccion">Fecha de publicación</label>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">assignment</i>
               <input id="editorialProduccion" name="editorialProduccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="editorialProduccion">Editorial</label>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">assignment</i>
               <input id="Edición" name="Edición" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="Edición">Edición</label>
            </div>
         </div>
									{{-- segunda fila  --}}
									{{-- tercera fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l12">
               <i class="material-icons prefix active">create</i> 
               <textarea name="descripcionProduccion" class="materialize-textarea" id="descripcionProduccion" cols="30" rows="10"></textarea>
               <label for="descripcionProduccion">Descripción/Resumen</label>
            </div>
         </div>
									{{-- tercera fila  --}}
									{{-- cuarta  fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">book</i>
               <input id="indecopiProduccion" name="indecopiProduccion" type="text" class="datepicker" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="indecopiProduccion">Registro INDECOPI</label>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">book</i>
               <input id="depositoLegalProduccion" name="depositoLegalProduccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="depositoLegalProduccion">Deposito legal BN</label>
            </div>
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">book</i>
               <input id="isbmProduccion" name="isbmProduccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="isbmProduccion">ISBN</label>
            </div>
         </div>
									{{-- cuarta  fila  --}}
									{{-- quinta fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l4">
               <i class="material-icons prefix active">book</i>
               <input id="paginasProduccion" name="paginasProduccion" type="text" class="datepicker" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="paginasProduccion">Paginas</label>
            </div>
            <div class="input-field col s12 m6 l8">
               <i class="material-icons prefix active">insert_link</i>
               <input id="enlaceWebProduccion" name="enlaceWebProduccion"  type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
               <label for="enlaceWebProduccion">ENLACE WEB</label>
            </div>
         </div>
									{{-- quinta fila  --}}
									{{-- sexta fila  --}}
         <div class="col s12 m6 l12">
            <div class="input-field col s12 m6 l12">
               <i class="material-icons prefix active">description</i> 
               <textarea name="anotacionesProduccion" class="materialize-textarea" id="anotacionesProduccion" cols="30" rows="10"></textarea>
               <label for="anotacionesProduccion">Anotaciones</label>
            </div>
         </div>
									{{-- sexta fila  --}}
      </div>
   </div>
   {{-- Datos de producción intelectual --}}
</div>