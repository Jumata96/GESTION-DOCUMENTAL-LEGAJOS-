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
	listarNivelEducativo()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/nivelAcademico/list';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
					   this.pintarArrayTablaNivelEducativoVue(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
					  document.getElementById("tbodyNivelAcademico").innerHTML = "";
					  $('#tablaNivelEducativo').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	agregarNivelAcademico(){ 
				var formData = new FormData();
		formData.append('archivo', $('#documentoNivelEducativo')[0].files[0]);


		var url = '/nivelAcademico/agregar' + '?' + $('#myFormNivelAcademico').serialize();
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
					(typeof response.data.situacionAcademicaTitulos != "undefined") ? $('#error_situacionAcademicaTitulos').text(response.data.situacionAcademicaTitulos): null; 
     (typeof response.data.inicioDeTitulos != "undefined") ? $('#error_inicioDeTitulos').text(response.data.inicioDeTitulos): null; 
     (typeof response.data.finDeTitulos != "undefined") ? $('#error_finDeTitulos').text(response.data.finDeTitulos): null; 
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
															this.listarNivelEducativo();
															this.listarDJ();
               // document.getElementById("documentoDireccion").value = "";
				}

			})
			.catch((err) =>
			{
				console.log(err)
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
  				document.getElementById("tbodyDj").innerHTML = "";
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
								'<td>'+
									'<div id="u_estado2" class="chip center-align teal accent-4 white-text" style="width: 70%">'+
																					'<b>REGISTRADO</b>'+ 
																				'</div>'+ 
									
									'</td>'+
								'<td>'+
									'<a   class=" waves-effect waves-light grey lighten-5 tooltipped " data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDocumentos( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">delete</i></a>' +
									'<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons">archive</i></a>'+
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
	eliminarNivelEducativo()
	{
			var nivelEducativoId = $('#nivelEducativoCodigo').val();  
			var url = '/eliminarNivelEducativo' ; 
				axios.post(url,{id:nivelEducativoId}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'});

					this.listDatos();
					this.listarDJ();
					this.listarNivelEducativo();

				}).catch((err) =>
				{
					console.log(err)
				});



	}, 
	 	pintarArrayTablaNivelEducativoVue(array)
	{
 
		var table = $('#tablaNivelEducativo').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyNivelAcademico").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
			$("#tablaNivelEducativo").append( 
														'<tr>'+
                '<td>'+contadorEleemntos+'</td>'+
                '<td>' + elemento.nivel_educativo + '</td>'+
                '<td>' + elemento.centro_estudios + '</td>'+
                '<td>' + elemento.nombre_nivel + '</td>'+
                '<td>' + elemento.ano_inicio + '</td>'+
                '<td>' + elemento.ano_fin + '</td>'+
                '<td>' + 


																	'<div id="u_estado2" class="chip center-align teal accent-4 white-text" style="width: 70%">'+
																					'<b>'+ elemento.situacion_academica +'</b>'+ 
																				'</div>'+ 
																	 
																	'</td>'+
                '<td>'+
                  '<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  title="ELIMINAR NIVEL ACADEMICO" onclick="gestionarNivelEduca( ' + elemento['codigo'] + ');" >'+
                  '<i class="material-icons"  data-tooltip="Eliminar" style="color:#dd2c00">delete</i></a>'+
                  '<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
                  '<i class="material-icons"  data-tooltip="Historial">archive</i></a>'+
                '</td>'+
														'</tr>'
			); 

		});
    // $('#tablaDocumentos').DataTable();
				$('#tablaNivelEducativo').DataTable(
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
															 M.toast({html: 'ARCHIVO REGISTRADO', classes: 'rounded'}); 
															$('#modalAddDocumentos').modal('close');
															this.listarNivelEducativo();
															this.listarDJ();
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
	var url = '/nivelAcademico-eliminarDocumento/' + codigoDJ; 
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
		// app.$options.methods.listDatos();  
		// app.$options.methods.listDatos();  
		 app.$options.methods.listarNivelEducativo();    
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
								'<td>'+
									'<div id="u_estado2" class="chip center-align teal accent-4 white-text" style="width: 70%">'+
																					'<b>REGISTRADO</b>'+ 
																				'</div>'+ 
								'</td>'+
								'<td>'+

         			'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDocumentos( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +




									'<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});

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
 
}

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