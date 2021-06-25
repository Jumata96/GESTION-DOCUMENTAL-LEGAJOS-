<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
	Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
		el: '#app',
		data: {
			// numeroDocumento:'72805571',
			numeroDocumento  : '', 
   nombreServidor   : "",
			situacionLaboral : "",
			regimenLaboral   : "",
			centroLaboral    : "",
			cargoServidor    : "",
			// areaServidor     : "",
		},
		created: function () {
			this.listDatos();
		},
		methods: {
			listDatos: function () {
				var urlDatos = '/trabajador/datos';
				axios.get(urlDatos).then(response => {
     let trabajador =response.data[0][0];
					 	this.numeroDocumento  = trabajador.nro_documento; 
       this.nombreServidor   = trabajador.nombre+" "+trabajador.apellidos;
       this.situacionLaboral ="";
       this.regimenLaboral   = "";
       this.centroLaboral    = "";
       this.cargoServidor    = trabajador.cargo;
				});
			} 

		}
	}) 
 </script>