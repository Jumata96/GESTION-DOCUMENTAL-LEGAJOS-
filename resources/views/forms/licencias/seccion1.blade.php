{{-- Datos de familiares  --}}
<div class="col s12 m6 l12">
  <br>
  <div class="card">
    <div class="card-header  ">
      <i class="fa fa-table fa-lg material-icons">receipt</i>
      <h2>LISTADO DE LICENCIAS</h2>
    </div>
    <div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
      <div class="col s12 m12">
        <a  href="#modalAddSeccion01" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="Agregar registro">
        <i class="material-icons" style="color: #03a9f4">add</i>
        </a>
        <a style="margin-left: 6px"></a>       
        <a style="margin-left: 6px"></a>   
      </div>
    </div>
    <div class="row">
      <div class="col s12 m12 l12">
        <div class="card-content" style="overflow-x:scroll">
          <table id="tabla01" class="tablaCerti responsive-table display tabla"  >
            <thead>
              <tr>
                <th>N°</th>
                <th>TIPO DE RESOLUCIÓN</th>
                <th style="white-space: nowrap;" >NUMERO DE RESOLUCIÓN</th>
                <th>SITUACIÓN LABORAL</th>  
                <th>FECHA RESOLUCIÓN</th>
                <th>FECHA INICIO</th> 
                <th>FECHA FIN</th> 
                <th>ESTADO</th>
                <th class="center">ACCIONES</th>
              </tr> 
            </thead> 
            <tbody id="tbodyTabla01"> 
              <tr>
                <td>N°</td>
                <td>TIPO DE RESOLUCIÓN</td>
                <td>NUMERO DE RESOLUCIÓN</td>
                <td>SITUACIÓN LABORAL</td>  
                <td>FECHA RESOLUCIÓN</td>
                <th>FECHA INICIO</th> 
                <th>FECHA FIN</th> 
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
<div id="modalAddSeccion01" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR REGISTROS</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a id="addConceptoM" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="agregarRegistroSeccion01()" >
      <i class="material-icons "  style="color: #2E7D32">check</i></a>
      <a style="margin-left: 6px"></a>   
      <a href="#" id="" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
      <i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
    </div> 
          <div class="row cuerpo">
         <form id="myFormModalSeccion01" accept-charset="UTF-8" enctype="multipart/form-data" >
            <br><br><br><br>  
            <div class="card-content">
               <div class="col s12 m6 l6">
                  {{-- Datos Academicos    --}} 
                  <div class="card">
                     <span>Datos principales de la resolución</span>
                     <br>
                     {{-- primera fila --}} 
                       <div class="col s12 m12 l12"> 
                        <div class="col s12 m12 l12">
                          <label for="tipoResolucion">Tipo de Resolucion</label>                 
                          <select   class="browser-default" id="tipoResolucion" name="tipoResolucion" required>
                            <option value="" disabled selected="">Seleccione</option> 
                            <option value="RESOLUCIONES DE LICENCIAS CON GOCE DE REMUNERACIONES">RESOLUCIONES DE LICENCIAS CON GOCE DE REMUNERACIONES</option>
                            <option value="RESOLUCIONES DE LICENCIAS SIN GOCE DE REMUNERACIONES">RESOLUCIONES DE LICENCIAS SIN GOCE DE REMUNERACIONES</option> 
                          </select>
                          <div id="error_tipoResolucion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                     </div>
                     <br><br>  
                     <div class="col s12 m12 l12">
                       <div class="col s12 m12 l12">
                        <label for="regimenLaboral">REGIMEN LABORAL</label>                 
                        <select class="browser-default" id="regimenLaboral" name="regimenLaboral" required>
                           <option value=""   selected="">Seleccione</option> 

                           @foreach ($regimen_laboral as $regimen)
                           <option value="{{$regimen->codigo}}"   > {{$regimen->nombre}}</option> 
                               
                           @endforeach
                          
                        </select> 
                          <div id="error_regimenLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                      </div>
                     </div> 
                     <br><br> 
                     <br><br>
                     <div class="col s12 m12 l12">  
                        <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">class</i>
                          <input id=" "  placeholder="" name="numeroResolucion" type="text">
                          <label for="numeroResolucion"> NUMERO DE RESOLUCIÓN</label> 
                          <div id="error_numeroResolucion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>
                        <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">date_range</i>
                          <input id="fechaResolucion"   placeholder="" class="datepicker" name="fechaResolucion" type="date">
                          <label for="fechaResolucion"> FECHA DE RESOLUCIÓN</label> 
                          <div id="error_fechaResolucion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>  
                        {{-- <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">edit</i>
                          <input id="anotacionesResolucion"   placeholder="" class="datepicker" name="anotacionesResolucion" type="text">
                          <label for="anotacionesResolucion">ANOTACIONES</label> 
                          <div id="error_anotacionesResolucion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>  --}}
                     </div>
                     
                     
                     {{-- primera fila --}} 
                  </div> 
                  {{-- Datos Academicos    --}} 
               </div>
               {{-- SEC IMAGEN --}}
               <div class="col s12 m6 l6 ">
                  <div class="card">
                     <span class="card-title">Documentos</span>
                     <div class="row">
                        <div class="file-field input-field col s12">
                           <div class="col s8 m8 l7 center" style="margin: auto; width: 80%">
                              <img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageResolucionLaboral" class="  responsive-img valign profile-image    " style="width: 80px">
                           </div>
                           <br>
                           <div class="file-field input-field col s12 ">
                              <div class="btn light-blue darken-1 ">
                                 <span>SUBIR</span>
                                 <input type="file" id="documentoResolucionLaboral" name="documentoResolucionLaboral" >
                              </div>
                              <div class="file-path-wrapper">
                                 <input class="file-path validate" type="text" name="text" id="imagenResolucionLaboral">
                                 <div id="error_archivoResolucionLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                              </div>
                              <p class="right"><i>Solo se permiten archivos con extensión  
                                 pdf en tamaño maximo 2MB. </i>
                              </p>
                           </div>
                        </div>
                        <div class=" col s12 m12 l12">
                           <div class="input-field col s12 m12 l12">
                              <i class="material-icons prefix ">filter_9_plus</i>
                              <input id="numeroFoliosResolucionLaboral" name="numeroFoliosResolucionLaboral" type="number" data-error=".errorTxt1"   onkeyup="mayus(this);">
                              <label for="numeroFoliosResolucionLaboral">NUMERO DE FOLIOS</label>
                              <div id="error_numeroFoliosResolucionLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               {{-- SEC IMAGEN --}} 
               <div class="col s12 m12 l12">
                  {{-- Datos Academicos    --}} 
                  <div class="card">
                     <span>Detalle de la resolución</span>
                     <br>
                     {{-- primera fila --}}   
                     <div class="col s12 m12 l6">
                       <div class="col s12 m12 l12">
                        <label for="situacionLaboral">SITUACION LABORAL</label>                 
                        <select class="browser-default" id="situacionLaboral" name="situacionLaboral" required>
                          <option value="" disabled selected="">Seleccione</option>
                          @foreach ($situacion_laboral as $situacion)
                           <option value="{{$situacion->codigo}}"   > {{$situacion->nombre}}</option>  
                           @endforeach
                        </select>
                        <div id="error_situacionLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                      </div>
                     </div>  
                     <div class="col s12 m12 l6">
                       <div class="col s12 m12 l12">
                          <label for="cargoLaboral">CARGO</label>                 
                          <select class="browser-default" id="cargoLaboral" name="cargoLaboral" required>
                            <option value="" disabled selected="">Seleccione</option>
                            @foreach ($cargo_laboral as $cargo)
                           <option value="{{$cargo->codigo}}"   > {{$cargo->nombre}}</option>  
                           @endforeach
                          </select>
                          
                          <div id="error_cargoLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                         
                        </div>
                     </div>  
                      <div class="col s12 m12 l6">
                        <div class="col s12 m12 l12">
                          <label for="jornadaLaboral">JORNADA LABORAL</label>                 
                          <select class="browser-default" id="jornadaLaboral" name="jornadaLaboral" required>
                            <option value="" disabled selected="">Seleccione</option>
                            @foreach ($jornada_laboral as $situacion)
                           <option value="{{$situacion->codigo}}"   > {{$situacion->nombre}}</option>  
                           @endforeach
                          </select> 
                          <div id="error_jornadaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                         
                        </div>
                     </div>  
                      <div class="col s12 m12 l6">
                        <div class="col s12 m12 l12">
                          <label for="areaLaboral">ÁREA LABORAL</label>                 
                          <select class="browser-default" id="areaLaboral" name="areaLaboral" required>
                            <option value="" disabled selected="">Seleccione</option>
                             @foreach ($area_laboral as $areaL)
                           <option value="{{$areaL->codigo}}"   > {{$areaL->nombre}}</option>  
                           @endforeach
                          </select> 
                          <div id="error_areaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                         
                        </div>
                     </div>  
                     <div class="col s12 m12 l12">   
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">date_range</i>
                          <input id="fechaResolucionInicio"   placeholder="" class="datepicker" name="fechaResolucionInicio" type="date">
                          <label for="fechaResolucionInicio"> FECHA DE INICIO</label> 
                          <div id="error_fechaResolucionInicio" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">date_range</i>
                          <input id="fechaResolucionFin"   placeholder="" class="datepicker" name="fechaResolucionFin" type="date">
                          <label for="fechaResolucionFin"> FECHA DE FIN</label> 
                          <div id="error_fechaResolucionFin" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        
                     </div>
                     <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">edit</i>
                          <input id="anotacionesResolucion"   placeholder="" class="datepicker" name="anotacionesResolucion" type="text">
                          <label for="anotacionesResolucion">ANOTACIONES</label> 
                          <div id="error_anotacionesResolucion" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                     
                     {{-- primera fila --}} 
                  </div>
                  <br><br><br><br><br><br>
                  {{-- Datos Academicos    --}} 
               </div>
            </div>
         </form>
      </div>
  </div>
</div>
{{-- modal --}}