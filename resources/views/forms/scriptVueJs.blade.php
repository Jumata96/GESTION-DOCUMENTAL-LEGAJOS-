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
			// areaServidor     : "",
		},
		created: function () {
			this.listDatos();
			this.listarDJ();
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
			this.nombresServidor = trabajador.nombre + " " + trabajador.apellidos;
			this.nombreServidor = trabajador.nombre;
			this.apeliidosServidor = trabajador.apellidos;
			this.situacionLaboral = trabajador.situacion_laboral;
			this.regimenLaboral = trabajador.regimen_laboral;
			this.centroLaboral = "";
			this.cargoServidor = trabajador.cargo; 

		});
	},
	listarDJ()
	{
		// var url = '/fileacion-DJ';
		var url = '/nivelAcademico-Documentos';	
		axios.get(url).then((response) =>
			{ 
				if (response.data.length > 0)
				{
					  this.pintarArrayTablaDocumentosVue(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
					  $('#tablaDocumentos').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});
	},
	 	pintarArrayTablaDocumentosVue(array)
	{
 
		var table = $('#tablaDocumentos').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyDj").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
			$("#tablaDocumentos").append(
    '<tr>'+
								'<td>'+contadorEleemntos+'</td>'+
								'<td>' + elemento.tipo_documento + '</td>'+
								'<td>' + elemento.fecha_emision + '</td>'+
								'<td><a href="'+elemento.url_archivo+'" target="_blank" rel="noopener noreferrer">' + elemento.name_archivo + '</a></td>'+
								'<td>APROBADO</td>'+
								'<td>'+
									'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDocumentos( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">delete</i></a>' +
									'<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons grey-text text-darken-2">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});
    $('#tablaDocumentos').DataTable();

		// $('#tablaDocumentos').DataTable(
		// { //cargamos los estilos a la tabla con los nuevos datos(tr) 
		// 	"responsive": true,
    //   language: {
    //               search: "Buscar en la tabla:",
    //               paginate: {
    //                   first:      "Primero",
    //                   previous:   "Anterior",
    //                   next:       "Siguente",
    //                   last:       "Anterior"
    //               },
    //               lengthMenu:    "Mostrar _MENU_registros",    
    //               infoEmpty:      "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
             
    //           }
		// });

 



	}, 
	 agregarDocumentos()
	{ 
		var formData = new FormData();
		formData.append('archivo', $('#documentoDJ')[0].files[0]);


		var url = '/nivelAcademico-doc/agregar' + '?' + $('#myFormDJ').serialize();
		axios.post(url, formData,
			{
				headers:
				{
					'Content-Type': 'multipart/form-data'
				}
			}).then((response) =>
			{ 
    	$('#error_archivo').text('');
					$('#error_tipoDocumentoDeclaracionJurada').text('');
					$('#error_fechaEmisionDeclaracionJurada').text('');
					$('#error_anotacionesDeclaracionJurada').text(''); 
					$('#error_numeroFoliosDeclaracionJurada').text(''); 

				if (response.data[0] == "error")
				{ 
					(typeof response.data.archivo != "undefined") ? $('#error_archivo').text(response.data.archivo): null;
					(typeof response.data.tipoDocumentoDeclaracionJurada != "undefined") ? $('#error_tipoDocumentoDeclaracionJurada').text(response.data.tipoDocumentoDeclaracionJurada): null;
					(typeof response.data.fechaEmisionDeclaracionJurada != "undefined") ? $('#error_fechaEmisionDeclaracionJurada').text(response.data.fechaEmisionDeclaracionJurada): null;
					(typeof response.data.anotacionesDeclaracionJurada != "undefined") ? $('#error_anotacionesDeclaracionJurada').text(response.data.anotacionesDeclaracionJurada): null; 
     (typeof response.data.numeroFoliosDeclaracionJurada != "undefined") ? $('#error_numeroFoliosDeclaracionJurada').text(response.data.numeroFoliosDeclaracionJurada): null; 
				}
				else
				{
					          this.pintarArrayTablaDocumentosVue(response.data);
               $('#numeroFoliosDeclaracionJurada').val("");
               $('#anotacionesDeclaracionJurada').val("");
               // document.getElementById("documentoDireccion").value = "";
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});

	},

		}
	}) 
 </script>
	<script>
		function gestionarDocumentos(valor)
{
	$('#dJCodigo').val(valor); 
	$('#modalEliminarDJ').modal('open');


}
$('#eliminarDJ').on('click', function ()
{
	var codigoDJ = $('#dJCodigo').val(); 
	var url = '/eliminarDocumento/' + codigoDJ; 
	axios.get(url).then((response) =>
	{
  // if(response.data.length>0 ){
     // pintarArrayTablaDocumentosJs(response.data);
  // }else{
  //   var table = $('#tablaDocumentos').DataTable();
  //    table.destroy(); //eliminamos los estilos y datos cargados en la tabla  
  //    document.getElementById("tbodyDj").innerHTML = "";

  // }
		pintarArrayTablaDocumentosJs(response.data);
	}).catch((err) =>
	{
		console.log(err)
	});


});


function pintarArrayTablaDocumentosJs(array)
{
 	var table = $('#tablaDocumentos').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		 
  document.getElementById("tbodyDj").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
			$("#tablaDocumentos").append(
    '<tr>'+
								'<td>'+contadorEleemntos+'</td>'+
								'<td>' + elemento.tipo_documento + '</td>'+
								'<td>' + elemento.fecha_emision + '</td>'+
								'<td><a href="'+elemento.url_archivo+'" target="_blank" rel="noopener noreferrer">' + elemento.name_archivo + '</a></td>'+
								'<td>APROBADO</td>'+
								'<td>'+

         			'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDocumentos( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +




									'<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons grey-text text-darken-2">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});

		$('#tablaDocumentos').DataTable();
 
}

	</script>