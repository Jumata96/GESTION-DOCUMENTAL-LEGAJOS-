<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
	Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
		el: '#app',
		data: {
			// numeroDocumento:'72805571',
			numeroDocumento  : '', 
   nombreServidor   : "",
			nombresServidor  :"",
			situacionLaboral : "",
			regimenLaboral   : "",
			centroLaboral    : "",
			cargoServidor    : "",
			tablaDocumentos :[],
			tipoInformeCrear:"",
			motivoInformeCrear:"", 
			fechaGeneracionCrear:"",
			numeroExpedienteCrear:"", 
			nombreDelSolicitante:"",
			fechaExpedienteCrear:"",
			tipoInformeCrear:"",


			// areaServidor     : "",
		},
		created: function () {
			this.listDatos(); 
		},
		methods: {
		listDatos: function ()
	{
		var urlDatos = '/trabajador/datos';
		axios.get(urlDatos).then(response =>
		{
			let trabajador = response.data[0][0];
			// console.log('trabajador :',trabajador);
			this.numeroDocumento = trabajador.nro_documento;
			this.nombresServidor = trabajador.nombresServidor ;
			this.nombreServidor = trabajador.nombreServidor;
			this.apeliidosServidor = trabajador.apeliidosServidor;
			this.situacionLaboral = trabajador.situacionLaboral;
			this.regimenLaboral = trabajador.regimen_laboral;
			this.centroLaboral = trabajador.centroLaboral;
			this.cargoServidor = trabajador.cargoServidor;

		});
	},
	GenerarReporte(){
 


				var url = '/Escalafonario/reporte' + '?' + $('#formReporteEscalafonario').serialize();
				axios.post(url).then((response) =>
					{   

						if (response.data[0] == "error")
						{   
							(typeof response.data.motivoInformeCrear != "undefined") ? $('#error_motivoInformeCrear').text(response.data.motivoInformeCrear): null; 
							(typeof response.data.nombreDelSolicitante != "undefined") ? $('#error_nombreDelSolicitante').text(response.data.nombreDelSolicitante): null;   
							(typeof response.data.numeroExpedienteCrear != "undefined") ? $('#error_numeroExpedienteCrear').text(response.data.numeroExpedienteCrear): null;    
						
						}
						else
						{ 
								M.toast({html: 'REGISTRO EXITOSO ', classes: 'rounded'});   
						}

					})
					.catch((err) =>
					{
						console.log(err)
					});



	}
		}
	}) 
 </script> 