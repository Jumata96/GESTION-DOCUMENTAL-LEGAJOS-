<template>
 <div class="row">
  <div class="col s12 m12 l12">
   <div class="card">
    <div class="card-header  ">
     <i class="fa fa-table fa-lg material-icons">receipt</i>
     <h2>APERTURA DE LEGAJO </h2>
    </div>
    <div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
     <div class="col s12 m12">
      <a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" href="#" data-position="top" data-delay="500" data-tooltip="BUSCAR">
       <i class="material-icons" style="color: #03a9f4">search</i>
      </a>
      <a style="margin-left: 6px"></a>
      <a style="margin-left: 6px"></a>
     </div>
    </div>
    <div class="row cuerpo">
     <div class="row">
      <div class="col s12 m6 l12 ">
       <div class="col s12 m6 l12 card">
        <span>DATOS DEL SERVIDOR</span>
        <div class="col s12 m6 l12">
         <div class="col s12 m6 l4">
          <label for="tipoDocumento">Tipo de documento</label>
          <select class="browser-default" id="tipoDocumento" name="tipoDocumento" required>
           <option value="" disabled selected="">Seleccione</option>
          </select>
          <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
         </div>
         <div class="input-field col s12 m6 l4">
          <i class="material-icons prefix active">label_outline</i>
          <input id="documento" name="documento" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
          <label for="documento">Numero de documento</label>
          <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>

</template>

<script>
export default {
 mounted() {
  console.log('Component mounted.')
 }
}
</script>


 