{{-- Datos de familiares  --}}
<div class="col s12 m6 l12">
  <br>
  <div class="card">
    <div class="card-header  ">
      <i class="fa fa-table fa-lg material-icons">receipt</i>
      <h2>LISTA DE GRADOS DE ESTUDIO</h2>
    </div>
    <div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
      <div class="col s12 m12">
        <a  href="#modalAddNivelEstudio" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="Agregar Grado de Estudio">
        <i class="material-icons" style="color: #03a9f4">add</i>
        </a>
        <a style="margin-left: 6px"></a>       
        <a style="margin-left: 6px"></a>   
      </div>
    </div>
    <div class="row">
      <div class="col s12 m12 l12">
        <div class="card-content" style="overflow-x:scroll">
          <table id="tablaNivelEducativo" class="responsive-table display tabla" style="white-space: nowrap;">
            <thead>
              <tr>
                <th>N°</th>
                <th>NIVEL EDUCATIVO </th>
                <th>CENTRO ESTUDIOS</th>
                <th>ESPECIALIDAD Y/O GRADO</th>
                <th>AÑO INICIO</th>
                <th>AÑO FIN</th>
                <th>ESTADO</th>
                <th class="center">ACCIONES</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>N°</th>
                <th>NIVEL EDUCATIVO </th>
                <th>CENTRO ESTUDIOS</th>
                <th>ESPECIALIDAD</th>
                <th>AÑO INICIO</th>
                <th>AÑO FIN</th>
                <th>ESTADO</th>
                <th>ACCIONES</th>
              </tr>
            </tfoot>
            <tbody id="tbodyNivelAcademico">
              {{-- <tr>
                <td>1</td>
                <td>UNIVERSIDAD</td>
                <td>UNR</td>
                <td>RR.HH</td>
                <td>2015</td>
                <td>2021</td>
                <td> CULMINADO</td>
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
{{-- Datos de familiares  --}} 
{{-- modal --}}
<div id="modalAddNivelEstudio" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR NIVEL DE ESTUDIO</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a id="addConceptoM" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="agregarNivelAcademico()" >
      <i class="material-icons "  style="color: #2E7D32">check</i></a>
      <a style="margin-left: 6px"></a>   
      <a href="#" id="" class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
      <i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
    </div>
    <div class="row cuerpo">
      <form id="myFormNivelAcademico" accept-charset="UTF-8" enctype="multipart/form-data" >
        <br><br><br><br> 
        <div class="card-content">
          <div class="col s12 m6 l6">
            {{-- Datos Academicos    --}} 
            <div class="card">
              <span>Datos de formación académica</span>
              <br>
              {{-- primera fila --}}
              <div class="col s12 m12 l12">
                <div class="col s12 m6 l12">
                  <label for="nivelEducativoTitulos">NIVEL EDUCATIVO</label>                 
                  <select class="browser-default" id="nivelEducativoTitulos" name="nivelEducativoTitulos" required>
                    <option value="" disabled selected="">Seleccione</option>
                    <option value="PRIMARIA" >PRIMARIA</option>
                    <option value="SECUNDARIA" >SECUNDARIA</option>
                    <option value="SUPERIOR" >SUPERIOR</option>
                    <option value="SEMINARIO" >SEMINARIO</option>
                    <option value="SECIGRA" >SECIGRA</option>
                    <option value="SERUMS" >SERUMS</option>
                    <option value="ESPECIALIDAD" >ESPECIALIDAD</option>
                    <option value="MAESTRIA" >MAESTRIA</option>
                    {{-- <option value="OTROS" >OTROS</option> --}}
                  </select>
                  <div id="error_nivelEducativoTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m12 l12">
                  <i class="material-icons prefix ">domain</i>
                  <input id="centroEstudiosTitulos" name="centroEstudiosTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="centroEstudiosTitulos">CENTRO DE ESTUDIOS</label>
                  <div id="error_centroEstudiosTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
              </div>
              {{-- primera fila --}}
              {{-- segunda fila --}}
              {{-- 
              <div class="col s12 m12 l12">
                <div class="col s12 m6 l6">
                  <label for="departamentoTitulos">DEPARTAMENTO</label>                 
                  <select class="browser-default" id="departamentoTitulos" name="departamentoTitulos" required>
                    <option value="" disabled selected="">Seleccione</option>
                  </select>
                  <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="col s12 m6 l6">
                  <label for="provinciaTitulos">PROVINCIA</label>                 
                  <select class="browser-default" id="provinciaTitulos" name="provinciaTitulos" required>
                    <option value="" disabled selected="">Seleccione</option>
                  </select>
                  <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="col s12 m6 l6">
                  <label for="distritoTitulos">DISTRITO</label>                 
                  <select class="browser-default" id="distritoTitulos" name="distritoTitulos" required>
                    <option value="" disabled selected="">Seleccione</option>
                  </select>
                  <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
              </div>
              --}} 
              {{-- segunda fila --}} 
            </div>
            {{-- Datos Academicos    --}}
            {{-- Datos de Estudio    --}} 
            <div class="card">
              <span>Datos de estudio</span>
              <br> 
              {{-- primera fila --}} 
              <div class="col s12 m6 l12">
                <label for="situacionAcademicaTitulos">SITUACIÓN ACADEMICA</label>                 
                <select class="browser-default" id="situacionAcademicaTitulos" name="situacionAcademicaTitulos" required>
                  <option value="" disabled selected="">Seleccione</option>
                  <option value="COMPLETO" >COMPLETO</option>
                  <option value="INCOMPLETO" >INCOMPLETO</option>
                  <option value="EGRESADO" >EGRESADO</option>
                  <option value="CON GRADO" >CON GRADO</option>
                </select>
                <div id="error_situacionAcademicaTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
              </div>
              <div class="col s12 m6 l12">
                <label for="inicioDeTitulos">AÑO INICIO</label>     
                <select class="browser-default" id="inicioDeTitulos" name="inicioDeTitulos" required >
                  <option value="" disabled selected="">Seleccione</option>
                  <?php $year = date("Y"); ?> 
                  <?php 	for ($i=$year; $i>1700 ; $i--) { 		?>
                  <option value="{{$i}}">{{$i}}</option>
                  <?php 		 }	?> 
                </select>
                <div id="error_inicioDeTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
              </div>
              <div class="col s12 m6 l12">
                <label for="finDeTitulos">AÑO FIN </label>                 
                <select class="browser-default" id="finDeTitulos" name="finDeTitulos" required>
                  <option value="" disabled selected="">Seleccione</option>
                  <?php $year = date("Y"); ?> 
                  <?php 	for ($i=$year; $i>1700 ; $i--) { 		?>
                  <option value="{{$i}}">{{$i}}</option>
                  <?php 		 }	?> 
                </select>
                <div id="error_finDeTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
              </div>
              {{-- primera fila --}} 
              <br><br>
              <div class="input-field col s12 m12 l12">
                <i class="material-icons prefix ">book</i>
                <input id="cursoProfesionGradoTitulos" name="cursoProfesionGradoTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                <label for="cursoProfesionGradoTitulos">CURSO-PROFESIÓN-GRADO</label>
                <div id="error_cursoProfesionGradoTitulos" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
              </div>
              <div class="input-field col s12 m12 l12">
                <i class="material-icons prefix ">edit</i>
                <input id="anotacionesTitulos" name="anotacionesTitulos" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                <label for="anotacionesTitulos">ANOTACIONES</label> 
              </div>
              {{-- primera fila --}}  
              <br><br><br><br><br>
              {{-- primera fila --}}  
            </div>
            {{-- Datos de Estudio    --}}
          </div>
          {{-- SEC IMAGEN --}}
          <div class="col s12 m6 l6 ">
            <div class="card">
              <span class="card-title">Documentos</span>
              <div class="row">
                <div class="file-field input-field col s12">
                  <div class="col s8 m8 l7 center" style="margin: auto; width: 80%">
                    <img src="{{asset('images/avatar/archivos3.png')}}" alt="" id="avatarImageNivelEducativo" class="  responsive-img valign profile-image    " style="width: 80px">
                  </div>
                  <br>
                  <div class="file-field input-field col s12 ">
                    <div class="btn light-blue darken-1 ">
                      <span>SUBIR</span>
                      <input type="file" id="documentoNivelEducativo" name="documentoNivelEducativo" >
                    </div>
                    <div class="file-path-wrapper">
                      <input class="file-path validate" type="text" name="text" id="imagenNivelEducativo">
                      <div id="error_archivoNivelEducativo" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                    </div>
                    <p class="right"><i>Solo se permiten archivos con extensión  
                      pdf en tamaño maximo 2MB. </i>
                    </p>
                  </div>
                </div>
                <div class=" col s12 m12 l12">
                  <div class="input-field col s12 m12 l12">
                    <i class="material-icons prefix ">filter_9_plus</i>
                    <input id="numeroFoliosDocumento" name="numeroFoliosDocumento" type="number" data-error=".errorTxt1"   onkeyup="mayus(this);">
                    <label for="numeroFoliosDocumento">NUMERO DE FOLIOS</label>
                    <div id="error_numeroFoliosDocumento" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          {{-- SEC IMAGEN --}} 
        </div>
      </form>
    </div>
  </div>
</div>
{{-- modal --}}