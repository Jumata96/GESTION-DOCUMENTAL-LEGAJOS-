{{-- modal --}}
<div id="modalupdCargoLaboral" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR SITUACION LABORAL</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a  class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="actualizarCargoLaboral()" >
      <i class="material-icons "  style="color: #2E7D32">check</i></a>
      <a style="margin-left: 6px"></a>   
      <a   class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
      <i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
    </div>
    <div class="row cuerpo">
      <form id="myFormSituacionAcademicaUpd" accept-charset="UTF-8" enctype="multipart/form-data" >
        <input type="hidden" name="codigoRegistro" id="codigoRegistro">
        <br><br><br><br> 
        <div class="card-content card"> <br>
          <div class="card">
                     <span>Datos principales del familiar</span>
                     <br>
                     <br>
                     
                          
                        <div class="col s12 m12 l6">
                            <div class="col s12 m12 l12">
                              <label for="tipoDocumentoUpd">TIPO DE DOCUMENTO</label>                 
                              <select class="browser-default" id="tipoDocumentoUpd" name="tipoDocumentoUpd" required>
                                <option value=""   selected="">Seleccione</option> 

                                @foreach ($documento as $doc)
                                <option value="{{$doc->iddocumento}}"   > {{$doc->descripcion}}</option> 
                                    
                                @endforeach
                                
                              </select> 
                                <div id="error_tipoDocumentoUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                            </div>
                          </div>

                        <div class=" col s12 m12 l6">
                           <div class="input-field col s12 m12 l12">
                              <i class="material-icons prefix ">credit_card</i>
                              <input id="numeroDocumentoFamiliarUpd" placeholder=" " name="numeroDocumentoFamiliarUpd" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                              <label for="numeroDocumentoFamiliarUpd">NUMERO DE DOCUMENTO</label>
                              <div id="error_numeroDocumentoFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                           </div>
                           <br><br><br>
                        </div>

                     {{-- primera fila --}} 
                       <div class="col s12 m12 l12"> 
                        <div class="col s12 m12 l6">
                          <label for="tipoFamiliarUpd">Tipo de Familiar</label>                 
                          <select   class="browser-default" id="tipoFamiliarUpd" name="tipoFamiliarUpd" required>
                            <option value="" disabled selected="">Seleccione</option> 
                            <option value="CONYUGE">CONYUGE</option> 
                            <option value="HIJOS">HIJOS</option> 
                            <option value="PADRES">PADRES</option> 
                            <option value="TIOS">TIOS</option> 
                            <option value="OTROS">OTROS</option> 
                          </select> 
                          <div id="error_tipoFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>  
                        </div>

                        <div class="col s12 m12 l6">
                          <label for="sexoFamiliarUpd">Sexo</label>                 
                          <select   class="browser-default" id="sexoFamiliarUpd" name="sexoFamiliarUpd" required>
                            <option value="" disabled selected="">Seleccione</option> 
                            <option value="MASCULINO">MASCULINO</option> 
                            <option value="FEMENINO">FEMENINO</option>  
                          </select>
                          <div id="error_sexoFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div> 
                        </div>
                         

                     </div> 
                     <br><br><br>  
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input  placeholder="" id="nombreFamiliarUpd" name="nombreFamiliarUpd" type="text">
                          <label for="nombreFamiliarUpd"> NOMBRE</label> 
                          <div id="error_nombreFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input   placeholder="" id="apellidoPaternoFamiliarUpd" name="apellidoPaternoFamiliarUpd" type="text">
                          <label for="apellidoPaternoFamiliarUpd"> APELLIDO PATERNO</label> 
                          <div id="error_apellidoPaternoFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div>
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">contacts</i>
                          <input  placeholder="" id="apellidoMaternoFamiliarUpd" name="apellidoMaternoFamiliarUpd" type="text">
                          <label for="apellidoMaternoFamiliarUpd"> APELLIDO MATERNO</label> 
                          <div id="error_apellidoMaternoFamiliarUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        <div class="input-field col s12 m12 l6">
                          <i class="material-icons prefix">date_range</i>
                          <input id="fechaNacimientoUpd"     name="fechaNacimientoUpd" type="date">
                          <label for="fechaNacimientoUpd"> FECHA DE NACIMIENTO</label> 
                          <div id="error_fechaNacimientoUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                        <div class="input-field col s12 m12 l12">
                          <i class="material-icons prefix">edit</i>
                          <input id="anotacionesUpd"   placeholder="" class="datepicker" name="anotacionesUpd" type="text">
                          <label for="anotacionesUpd">ANOTACIONES</label> 
                          <div id="error_anotacionesUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                        </div> 
                          <input id="codigoFamiliar"    name="codigoFamiliar" type="hidden">

                        
 
                     
                     {{-- primera fila --}} 
                  </div> 
        </div>
      </form>
    </div>
  </div>
</div>
{{-- modal --}}