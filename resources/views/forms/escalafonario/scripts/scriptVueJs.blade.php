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
								(typeof response.data.archivo != "undefined") ? $('#error_archivoResolucionLaboral').text(response.data.archivo): null;
							(typeof response.data.anotacionesResolucion != "undefined") ? $('#error_anotacionesResolucion').text(response.data.anotacionesResolucion): null; 
							(typeof response.data.areaLaboral != "undefined") ? $('#error_areaLaboral').text(response.data.areaLaboral): null; 
							(typeof response.data.cargoLaboral != "undefined") ? $('#error_cargoLaboral').text(response.data.cargoLaboral): null; 
							(typeof response.data.fechaResolucion != "undefined") ? $('#error_fechaResolucion').text(response.data.fechaResolucion): null; 
							(typeof response.data.fechaResolucionInicio != "undefined") ? $('#error_fechaResolucionInicio').text(response.data.fechaResolucionInicio): null; 
							(typeof response.data.fechaResolucionFin != "undefined") ? $('#error_fechaResolucionFin').text(response.data.fechaResolucionFin): null; 
							(typeof response.data.jornadaLaboral != "undefined") ? $('#error_jornadaLaboral').text(response.data.jornadaLaboral): null; 
							(typeof response.data.numeroFoliosResolucionLaboral != "undefined") ? $('#error_numeroFoliosResolucionLaboral').text(response.data.numeroFoliosResolucionLaboral): null; 
							(typeof response.data.numeroResolucion != "undefined") ? $('#error_numeroResolucion').text(response.data.numeroResolucion): null; 
							(typeof response.data.regimenLaboral != "undefined") ? $('#error_regimenLaboral').text(response.data.regimenLaboral): null; 
							(typeof response.data.situacionLaboral != "undefined") ? $('#error_situacionLaboral').text(response.data.situacionLaboral): null;   
							(typeof response.data.tipoResolucion != "undefined") ? $('#error_tipoResolucion').text(response.data.tipoResolucion): null;   
						
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