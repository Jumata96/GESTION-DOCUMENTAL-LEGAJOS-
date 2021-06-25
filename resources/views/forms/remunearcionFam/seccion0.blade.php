{{-- Datos de familiares  --}}
<div class="col s12 m12 l12">
  <br>
  <div class="card">
    <div class="card-header  ">
      <i class="fa fa-table fa-lg material-icons">receipt</i>
      <h2>LISTADO DE FAMILIARES</h2>
    </div>
    <div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
      <div class="col s12 m12">
        <a  href="#modalAddSeccion0" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="Agregar registro">
        <i class="material-icons" style="color: #03a9f4">add</i>
        </a>
        <a style="margin-left: 6px"></a>       
        <a style="margin-left: 6px"></a>   
      </div>
    </div>
    <div class="row">
      <div class="col s12 m12 l12">
        <div class="card-content" style="overflow-x:scroll">
          <table id="tabla0" class="tablaCerti responsive-table display tabla" >
            <thead>
              <tr>
                <th>N°</th>
                <th style="white-space: nowrap;" >FAMILIAR</th>
                <th>TIPO DE FAMILIAR</th>
                <th>TIPO DOCUMENTO</th>  
                <th>NUMERO DOCUMENTO</th>
                <th>MASCULINO</th>
                <th>FECHA DE NACIMIENTO</th>
                <th>ESTADO</th>
                <th class="center">ACCIONES</th>
              </tr> 
            </thead> 
            <tbody id="tbodyTabla0"> 
              <tr>
                <td>N°</td>
                <td>FAMILIAR</td>
                <td>TIPO DE FAMILIAR</td>
                <td>TIPO DOCUMENTO</td>  
                <td>NUMERO DOCUMENTO</th>
                  <th>MASCULINO</th>
                <td>FECHA DE NACIMIENTO</th>
                <td>ESTADO</td>
                <td>
                  <center>
                    <a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >
                    <i class="material-icons "  style="color:#dd2c00" data-tooltip="Eliminar"  >remove</i></a> 

                    <a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >
                    <i class="material-icons grey-text text-darken-2"  data-tooltip="Historial">archive</i></a>
                  </center>
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
{{-- modal --}}
<div id="modalAddSeccion0" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR REGISTROS</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a id="addConceptoM" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="agregarRegistroSeccion0()" >
      <i class="material-icons "  style="color: #2E7D32">check</i></a>
      <a style="margin-left: 6px"></a>   
      <a href="#" id="" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
      <i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
    </div> 
          <div class="row cuerpo">
         <form id="myFormModalSeccion0" accept-charset="UTF-8" enctype="multipart/form-data" >
          <input type="hidden" name="_token" value="{{ csrf_token() }}"> 
            <br><br><br><br>  
            <div class="card-content">
               <div class="col s12 m6 l12">
                  {{-- Datos Academicos    --}} 
                  <div class="card">
                     <span>Datos principales del familiar</span>
                     <br>
                     <br>
                     
                          
                        <div class="col s12 m12 l6">
                            <div class="col s12 m12 l12">
                              <label for="tipoDocumento">TIPO DE DOCUMENTO</label>                 
                              <select class="browser-default" id="tipoDocumento" name="tipoDocumento" required>
                                <option value=""   selected="">Seleccione</option> 

                                @foreach ($documento as $doc)
                                <option value="{{$doc->iddocumento}}"   > {{$doc->descripcion}}</option> 
                                    
                                @endforeach
                                
                              </select> 
                                <div id="error_tipoDocumento" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                            </div>
                          </div>

                        <div class=" col s12 m12 l6">
                           <div class="input-field col s12 m12 l12">
                              <i class="material-icons prefix ">credit_card</i>
                              <input id="numeroDocumentoFamiliar" name="numeroDocumentoFamiliar" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                              <label for="numeroDocumentoFamiliar">NUMERO DE DOCUMENTO</label>
                              <div id="error_numeroDocumentoFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <br><br><br>
                        </div>

                     {{-- primera fila --}} 
                       <div class="col s12 m12 l12"> 
                        <div class="col s12 m12 l6">
                          <label for="tipoFamiliar">Tipo de Familiar</label>                 
                          <select   class="browser-default" id="tipoFamiliar" name="tipoFamiliar" required>
                            <option value="" disabled selected="">Seleccione</option> 
                            <option value="CONYUGE">CONYUGE</option> 
                            <option value="HIJOS">HIJOS</option> 
                            <option value="PADRES">PADRES</option> 
                            <option value="TIOS">TIOS</option> 
                            <option value="OTROS">OTROS</option> 
                          </select> 
                          <div id="error_tipoFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>  
                        </div>

                        <div class="col s12 m12 l6">
                          <label for="sexoFamiliar">Sexo</label>                 
                          <select   class="browser-default" id="sexoFamiliar" name="sexoFamiliar" required>
                            <option value="" disabled selected="">Seleccione</option> 
                            <option value="MASCULINO">MASCULINO</option> 
                            <option value="FEMENINO">FEMENINO</option>  
                          </select>
                          <div id="error_sexoFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
                        </div>
                         

                     </div> 
                     <br><br><br>  
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input  name="nombreFamiliar" type="text">
                          <label for="nombreFamiliar"> NOMBRE</label> 
                          <div id="error_nombreFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input  name="apellidoPaternoFamiliar" type="text">
                          <label for="apellidoPaternoFamiliar"> APELLIDO PATERNO</label> 
                          <div id="error_apellidoPaternoFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input  name="apellidoMaternoFamiliar" type="text">
                          <label for="apellidoMaternoFamiliar"> APELLIDO MATERNO</label> 
                          <div id="error_apellidoMaternoFamiliar" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">date_range</i>
                          <input id="fechaNacimiento"     name="fechaNacimiento" type="date">
                          <label for="fechaNacimiento"> FECHA DE NACIMIENTO</label> 
                          <div id="error_fechaNacimiento" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">edit</i>
                          <input id="anotaciones"   placeholder="" class="datepicker" name="anotaciones" type="text">
                          <label for="anotaciones">ANOTACIONES</label> 
                          <div id="error_anotaciones" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        
 
                     
                     {{-- primera fila --}} 
                  </div> 
                  {{-- Datos Academicos    --}} 
               </div> 
            </div>
         </form>
      </div>
  </div>
</div>
{{-- modal --}}