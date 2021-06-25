{{-- modal --}}
<div id="modalAddJornadaLaboral" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR JORNADA LABORAL</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a  class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="agregarJornadaLaboral()" >
      <i class="material-icons "  style="color: #2E7D32">check</i></a>
      <a style="margin-left: 6px"></a>   
      <a   class="btn-floating right waves-effect waves-light grey lighten-5 tooltipped modal-close" data-activates="dropdown2" data-position="top" data-delay="500" data-tooltip="Regresar">
      <i class="material-icons" style="color: #424242">keyboard_tab</i></a>  
    </div>
    <div class="row cuerpo">
      <form id="myFormSituacionAcademica" accept-charset="UTF-8" enctype="multipart/form-data" >
        <br><br><br><br> 
        <div class="card-content card"> <br>
              <div class=" col s12 m12 l12">
                <div class="input-field col s12 m12 l12">
                  <i class="material-icons prefix ">book</i>
                  <input id="nombreJornadaLaboral" name="nombreJornadaLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="nombreJornadaLaboral">NOMBRE DE LA JORNADA</label>
                  <div id="error_nombreJornadaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m12 l6">
                  <i class="material-icons prefix ">av_timer</i>
                  <input id="inicioJornada" name="inicioJornada" type="time" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="inicioJornada">INICIO DE LA JORNADA</label>
                  <div id="error_inicioJornada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m12 l6">
                  <i class="material-icons prefix ">av_timer</i>
                  <input id="finJornada" name="finJornada" type="time" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="finJornada">FIN DE LA JORNADA</label>
                  <div id="error_finJornada" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m12 l12">
                  <i class="material-icons prefix ">edit</i>
                  <input id="detalleJornadaLaboral" name="detalleJornadaLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="detalleJornadaLaboral">ANOTACIONES</label> 
                  <div id="error_detalleJornadaLaboral" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

                </div>
              </div>
              <br><br> 
        </div>
      </form>
    </div>
  </div>
</div>
{{-- modal --}}