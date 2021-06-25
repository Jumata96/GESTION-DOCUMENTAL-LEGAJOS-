{{-- Datos de familiares  --}}
<form action="" method="POST"  id="formReporteEscalafonario" enctype="multipart/form-data" >

<div class="col s12 m6 l12">
<br>
<div class="card">
  <div class="card-header  ">
    <i class="fa fa-table fa-lg material-icons">receipt</i>
    <h2>GESTIONAR REPORTE ESCALAFONARIO</h2>
  </div>
  <div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
    <div class="col s12 m12">
      <a  v-on:click="GenerarReporte()"  class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="GENERAR REPORTE">
      <i class="material-icons" style="color: #03a9f4">add</i>
      </a>
      <a style="margin-left: 6px"></a>       
      <a style="margin-left: 6px"></a>   
    </div>
  </div>
  <div class="row">
    <div class="col s12 m12 l12">
      <div class="card-content" style="overflow-x:scroll">
        {{-- Datos de informe escalafonario     --}}
        <div class="col s12 m12 l12">
          <br>
          <div class="card">
            <br> 
            <div class="col s12 m12 l12 ">
              <span>Datos de informe escalafonario </span> 
             
                <div class="row">
                  <div class="col s12 m12 l12">
                    <div class="input-field col s12 m6 l6">
                      <i class="material-icons prefix ">archive</i>  
                      <input id="motivoInformeCrear" v-model="motivoInformeCrear" placeholder=""  name="motivoInformeCrear" type="text">
                      <label for="motivoInformeCrear">Motivo Informe</label>
                      <div id="error_motivoInformeCrear" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                    </div>
                    <div class="input-field col s12 m6 l6">
                      <i class="material-icons prefix ">date_range</i>
                      <input id="numeroExpedienteCrear" v-model="numeroExpedienteCrear" placeholder=""  name="numeroExpedienteCrear" type="text">
                      <label for="numeroExpedienteCrear">NUMERO DE EXPEDIENTE</label>
                      <div id="error_numeroExpedienteCrear" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                    </div>
                    <div class="input-field col s12 m6 l6">
                      <i class="material-icons prefix ">assignment_ind</i>
                      <input id="nombreDelSolicitante" v-model="nombreDelSolicitante" placeholder=""  name="nombreDelSolicitante" type="text">
                      <label for="nombreDelSolicitante"> NOMBRE DEL SOLICITANTE</label>  
                      		<div id="error_nombreDelSolicitante" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                    </div>
                    <div class="input-field col s12 m6 l6">
                      <i class="material-icons prefix ">create</i> 
                      <textarea name="anotacionesInformeCrear" class="materialize-textarea" id="anotacionesInformeCrear" cols="30" rows="10"></textarea>
                      <label for="anotacionesInformeCrear">Anotaciones</label>
                      		<div id="error_anotacionesInformeCrear" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                    </div>
                    {{-- 
                    <div class="input-field col s12 m6 l6">
                      <i class="material-icons prefix ">date_range</i>
                      <input id="fechaExpedienteCrear" v-model="fechaExpedienteCrear" placeholder="" class="datepicker" name="fechaExpedienteCrear" type="text">
                      <label for="fechaExpedienteCrear"> FECHA DE EXPEDIENTE</label>  
                    </div>
                    --}} 
                  </div>
                </div>
              
            </div>
          </div>
        </div>
        {{-- Datos de informe escalafonario     --}}
        {{-- Datos principales de la resolución    --}}
        <div class="col s12 m12 l12">
          <br>
          <div class="card">
            <br>  
            <span>SECCIONES A IMPRIMIR</span> 
            <div class="col s12 m12 l12">
              <div class="col s12 m12 l4">
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="filiacion">Filiación e identificación</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch " >
                      <label>	SI <input type="checkbox" id="filiacion" name="filiacion"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="cargoGeneral">Nivel Educativo</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="nivelEducativo"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="cargoGeneral">Capacitación</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="capacitacion"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="cargoGeneral">Contratos Y Nombramiento</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="contratos"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="cargoGeneral">Renuncias y Liquidaciones</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="renuncias"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col s12 m12 l4">
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="cargoGeneral">Desplazamiento y cargos</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="desplazamiento"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="licencias">Licencias</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="licencias"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="Vacaciones">Vacaciones</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="vacaciones"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="ascenso" name="ascenso">Ascensos</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="ascenso"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="remuneracion">Remuneración Personal</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="remuneracion"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col s12 m12 l4">
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="remuneracionFam">Remuneración Familiar</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="remuneracionFamiliar"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="evaluaciones">Evaluaciones</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="evaluaciones"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="merito">Merito</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="merito"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="Demerito">Demerito</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="Demerito"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
                <div class="col s12 m12 l12	" style="padding-bottom: 15px">
                  <div class="col s12 m6 l6">
                    <label for="otros">Otros</label> 
                  </div>
                  <div class="col s12 m6 l6">
                    <div class="switch">
                      <label>	SI <input type="checkbox" name="otros"> <span class="lever"></span>	NO</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          {{-- Datos principales de la resolución    --}}
        </div>
      </div>
    </div>
  </div>
  </div>
		</form>
</div>

{{-- Datos de familiares  --}}