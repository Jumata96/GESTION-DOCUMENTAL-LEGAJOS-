{{-- modal --}}
<div id="modalupdSituacionLaboral" class="modal modal-fixed-footer">
  <div class="modal-content" style="padding: 0px; overflow-y: disabled; height: 300%; background-color: #f9f9f9">
    <div class="card" style="position: fixed; width: 100%; z-index: 2">
      <div class="card-header">
        <i class="fa fa-table fa-lg material-icons">receipt</i>
        <h2>AGREGAR SITUACION LABORAL</h2>
      </div>
    </div>
    <div class="row card-header sub-header" style="margin-top: 48px; margin-left: 0rem; margin-right: 0rem; position: fixed; width: 100%; z-index: 3"> 
      <a  class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Guardar" v-on:click="actualizarSituacionLaboral()" >
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
              <div class=" col s12 m12 l12">
                <div class="input-field col s12 m12 l6">
                <i class="material-icons prefix ">book</i>
                <input id="nombreSituacionLaboralUpd" placeholder="" name="nombreSituacionLaboralUpd" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                <label for="nombreSituacionLaboralUpd">NOMBRE DEL REGIMEN LABORAL</label>
                <div id="error_nombreSituacionLaboralUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
              </div>
              <div class="input-field col s12 m12 l6">
                <i class="material-icons prefix ">edit</i>
                <input id="detalleSituacionLaboralUpd" placeholder="" name="detalleSituacionLaboralUpd" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                <label for="detalleSituacionLaboralUpd">ANOTACIONES</label> 
                <div id="error_detalleSituacionLaboralUpd" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>

              </div>
              </div>
              <br><br> 
        </div>
      </form>
    </div>
  </div>
</div>
{{-- modal --}}