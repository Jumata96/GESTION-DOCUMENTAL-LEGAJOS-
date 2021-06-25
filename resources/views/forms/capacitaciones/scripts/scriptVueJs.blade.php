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
			this.listarNivelEducativo();
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
	listarDJ()
	{
		// var url = '/fileacion-DJ';
		var url = '/capacitaciones-Documentos';	
		axios.get(url).then((response) =>
			{ 
				if (response.data.length > 0)
				{
					  this.pintarArrayTablaDocumentosVue(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
							var table = $('#tablaDocumentos').DataTable();
						 table.destroy(); 
  				document.getElementById("tbodyDj").innerHTML = "";
					  $('#tablaDocumentos').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});
	},
	 agregarDocumentos()
	{  
		var formData = new FormData();
		formData.append('archivo', $('#documentoDJ')[0].files[0]);


		var url = '/capacitaciones-doc/agregar' + '?' + $('#myFormDJ').serialize();
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
															 M.toast({html: 'ARCHIVO REGISTRADO', classes: 'rounded'}); 
															$('#modalAddDocumentos').modal('close');
															this.listDatos();
															this.listarDJ();
															this.listarNivelEducativo();
               // document.getElementById("documentoDireccion").value = "";
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	
	eliminarDocumentos()
	{
			var codigoDJ = $('#dJCodigo').val(); 
			var url = '/capacitaciones-eliminarDocumento/' + codigoDJ; 
			axios.get(url).then((response) =>
			{  
				this.listDatos();
			this.listarDJ();
			this.listarNivelEducativo();
			}).catch((err) =>
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
								'<td>'+
																		'<div id="u_estado2" class="chip center-align teal accent-4 white-text" style="width: 70%">'+
																					'<b>REGISTRADO</b>'+
																				'<i class="material-icons"></i>'+
																				'</div>'+
									
									'</td>'+
								'<td>'+
									'<a   class=" waves-effect waves-light grey lighten-5 tooltipped " data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDocumentos( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">delete</i></a>' +
									'<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons  ">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});
    // $('#tablaDocumentos').DataTable();
				$('#tablaDocumentos').DataTable(
		{ //cargamos los estilos a la tabla con los nuevos datos(tr) 
			"responsive": true,
      language: {
                  search: "Buscar en la tabla:",
                  paginate: {
                      first:      "Primero",
                      previous:   "Anterior",
                      next:       "Siguente",
                      last:       "Anterior"
                  },
                  processing:     "Traitement en cours...",
                  lengthMenu:    "Mostrar _MENU_registros",  
                  info: "Visualización  _PAGE_ de _PAGES_",  
                  infoEmpty:      "Visualización  0 a 0 de 0 registros",
                  infoFiltered:   "(filtre de _MAX_ registros en total total)", 
                  zeroRecords:    "No se encuentran registros ",
        
             
              }
		});



	},
	listarNivelEducativo()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/capacitaciones/list';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
					   this.pintarArrayTablaNivelEducativoVue(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
								var table = $('#tablaaCertificados').DataTable();
							table.destroy();
					  document.getElementById("tbodyCapacitaciones").innerHTML = "";
					  $('#tablaaCertificados').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	agregarNivelAcademico()
	{ 
				var formData = new FormData();
		formData.append('archivo', $('#documentoNivelEducativo')[0].files[0]);


		var url = '/capacitaciones/agregar' + '?' + $('#myFormNivelAcademico').serialize();
		axios.post(url, formData,
			{
				headers:
				{
					'Content-Type': 'multipart/form-data'
				}
			}).then((response) =>
			{  
    	$('#error_archivoNivelEducativo').text('');
					$('#error_nivelEducativoTitulos').text('');
					$('#error_centroEstudiosTitulos').text('');
					$('#error_situacionAcademicaTitulos').text(''); 
					$('#error_inicioDeTitulos').text(''); 
					$('#error_finDeTitulos').text(''); 
					$('#error_cursoProfesionGradoTitulos').text(''); 
					$('#error_numeroFoliosDocumento').text('');  

				if (response.data[0] == "error")
				{ 
					(typeof response.data.archivo != "undefined") ? $('#error_archivoNivelEducativo').text(response.data.archivo): null;
					(typeof response.data.nivelEducativoTitulos != "undefined") ? $('#error_nivelEducativoTitulos').text(response.data.nivelEducativoTitulos): null;
					(typeof response.data.centroEstudiosTitulos != "undefined") ? $('#error_centroEstudiosTitulos').text(response.data.centroEstudiosTitulos): null;
					(typeof response.data.fechaFinCapacitaciones != "undefined") ? $('#error_fechaFinCapacitaciones').text(response.data.fechaFinCapacitaciones): null; 
     (typeof response.data.fechaInicioCapacitaciones != "undefined") ? $('#error_fechaInicioCapacitaciones').text(response.data.fechaInicioCapacitaciones): null; 
     (typeof response.data.horasCapacitaciones != "undefined") ? $('#error_horasCapacitaciones').text(response.data.horasCapacitaciones): null; 
     (typeof response.data.cursoProfesionGradoTitulos != "undefined") ? $('#error_cursoProfesionGradoTitulos').text(response.data.cursoProfesionGradoTitulos): null; 
     (typeof response.data.numeroFoliosDocumento != "undefined") ? $('#error_numeroFoliosDocumento').text(response.data.numeroFoliosDocumento): null;  
				}
				else
				{
					          // this.pintarArrayTablaDocumentosVue(response.data);------------------------------------pendien
               $('#numeroFoliosDeclaracionJurada').val("");
               $('#anotacionesDeclaracionJurada').val("");
															 M.toast({html: 'NIVEL ACADEMICO REGISTRADO', classes: 'rounded'}); 
															$('#modalAddNivelEstudio').modal('close');
															this.listDatos();
															this.listarDJ();
															this.listarNivelEducativo();
																											// document.getElementById("documentoDireccion").value = "";
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



	},
	eliminarNivelEducativo()
	{
			var nivelEducativoId = $('#nivelEducativoCodigo').val();  
			var url = '/eliminarDocumento' ; 
				axios.post(url,{id:nivelEducativoId}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'});

					this.listarNivelEducativo();
					this.listarDJ();

				}).catch((err) =>
				{
					console.log(err)
				});



	},	
	pintarArrayTablaNivelEducativoVue(array)
	{
 
		var table = $('#tablaaCertificados').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyCapacitaciones").innerHTML = ""; 
  // document.getElementById("tablaaCertificados").innerHTML = ""; 
		let contadorEleemntos = 0; 
		array.forEach(elemento =>
		{  
			contadorEleemntos += 1; 
				$("#tbodyCapacitaciones").append(  
														'	<tr>'+
																	'<td>'+contadorEleemntos+'</td>'+
																	'<td>'+ elemento.tipo_capacitacion + '</td>'+
																	'<td>'+ elemento.nombre_capacitacion + '</td>'+
																	'<td>'+ elemento.centro_estudios + '</td>'+ 
																	'<td>'+ elemento.fecha_inicio + '</td>'+
																	'<td>'+ elemento.fecha_fin + '</td>'+
																	'<td>'+ elemento.horas_capacitacion + '</td>'+
																	'<td> '+
																				'<div id="u_estado2" class="chip center-align teal accent-4 white-text" style="width: 70%">'+
																					'<b>REGISTRADO</b>'+
																				'<i class="material-icons"></i>'+
																				'</div>'+
																	'</td>'+
																	'<td>'+
																			'<center>'+
																					'<a  class=" waves-effect waves-light grey lighten-5 tooltipped" '+
																					'onclick="gestionarNivelEduca( ' + elemento['codigo'] + ');" >'+
																					'<i class="material-icons"  data-tooltip="Eliminar" style="color:#dd2c00" >delete</i></a>'+
																					'<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
																					// '<i class="material-icons"  data-tooltip="Historial">archive</i></a>'+
																			'</center>'+
																	'</td>'+
															'</tr>' 
				); 

		});
    // $('#tablaDocumentos').DataTable();
				$('#tablaaCertificados').DataTable(
		{ //cargamos los estilos a la tabla con los nuevos datos(tr) 
			"responsive": true,
      language: {
                  search: "Buscar en la tabla:",
                  paginate: {
                      first:      "Primero",
                      previous:   "Anterior",
                      next:       "Siguente",
                      last:       "Anterior"
                  },
                  processing:     "Traitement en cours...",
                  lengthMenu:    "Mostrar _MENU_registros",  
                  info: "Visualización  _PAGE_ de _PAGES_",  
                  infoEmpty:      "Visualización  0 a 0 de 0 registros",
                  infoFiltered:   "(filtre de _MAX_ registros en total total)", 
                  zeroRecords:    "No se encuentran registros ",
        
             
              }
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
	app.$options.methods.eliminarDocumentos();   
}); 

 
function gestionarNivelEduca(valor)
{	
	console.log('ingreso a gestion javascript');  
	$('#nivelEducativoCodigo').val(valor); 
	$('#modalEliminarNivelEducativo').modal('open');
	
}
$('#eliminarNivelAcademico').on('click', function ()
{
		app.$options.methods.eliminarNivelEducativo();  
});

	</script>