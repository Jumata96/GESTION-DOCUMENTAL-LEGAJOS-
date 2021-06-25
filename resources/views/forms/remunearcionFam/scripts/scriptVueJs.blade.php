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
			familiares: [],

			// areaServidor     : "",
		},
		created: function () {
			this.listDatos();
			this.listarDJ();
			this.ListarRegistrosTablaSeccion0();
			this.ListarRegistrosTablaSeccion01();
		// this.cargarFamiliares();

		},
		methods: {
				cargarFamiliares()
	{
		var url = 'departamentosList';
		axios.get(url).then((response) =>
			{
				// console.log('departamentos ->',response.data);
				this.familiares = response.data;

			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
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
		var url = '/remuneracionFam-Documentos';	
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
	eliminarDocumentos()
	{
			var codigoDJ = $('#dJCodigo').val(); 
			var url = '/remuneracionFam-eliminarDocumento/' + codigoDJ; 
			axios.get(url).then((response) =>
			{   
						this.ListarRegistrosTablaSeccion01();
					this.listarDJ();

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
	ListarRegistrosTablaSeccion0()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/remuneracionFam/listFamiliares';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
					   this.pintarTablaSeccion0(response.data);
									this.familiares = response.data;
						// this.	tablaDocumentos=response.data;
				}else{
							var table = $('#tabla0').DataTable();
							table.destroy(); 
					  document.getElementById("tbodyTabla0").innerHTML = "";
					  $('#tabla0').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	ListarRegistrosTablaSeccion01()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/remuneracionFam/list';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
					   this.pintarTablaSeccion01(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
							var table = $('#tabla01').DataTable();
							table.destroy(); 
					  document.getElementById("tbodyTabla01").innerHTML = "";
					  $('#tabla01').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	agregarRegistroSeccion0()
	{
				var formData = new FormData();
		formData.append('archivo', $('#documentoResolucionLaboral')[0].files[0]);


		// var url = '/remuneracionFam/agregarFamiliar' + '?' + $('#myFormModalSeccion0').serialize();
		var url = '/remuneracionFam/agregarFamiliar' + '?' + $('#myFormModalSeccion0').serialize();

		axios.post(url).then((response) =>
			{  
    	$('#error_tipoDocumento').text(''); 
    	$('#error_numeroDocumentoFamiliar').text(''); 
    	$('#error_tipoFamiliar').text(''); 
    	$('#error_sexoFamiliar').text(''); 
    	$('#error_apellidoPaternoFamiliar').text(''); 
    	$('#error_archivoResolucionLaboral').text(''); 
    	$('#error_archivoResolucionLaboral').text(''); 
    	$('#error_archivoResolucionLaboral').text(''); 
    	$('#error_archivoResolucionLaboral').text(''); 
    	$('#error_archivoResolucionLaboral').text(''); 
     

				if (response.data[0] == "error")
				{ 
						(typeof response.data.tipoDocumento != "undefined") ? $('#error_tipoDocumento').text(response.data.tipoDocumento): null;    
						(typeof response.data.numeroDocumentoFamiliar != "undefined") ? $('#error_numeroDocumentoFamiliar').text(response.data.numeroDocumentoFamiliar): null;    
						(typeof response.data.tipoFamiliar != "undefined") ? $('#error_tipoFamiliar').text(response.data.tipoFamiliar): null;    
						(typeof response.data.sexoFamiliar != "undefined") ? $('#error_sexoFamiliar').text(response.data.sexoFamiliar): null;    
						(typeof response.data.apellidoPaternoFamiliar != "undefined") ? $('#error_apellidoPaternoFamiliar').text(response.data.apellidoPaternoFamiliar): null;    
						(typeof response.data.apellidoMaternoFamiliar != "undefined") ? $('#error_apellidoMaternoFamiliar').text(response.data.apellidoMaternoFamiliar): null;    
						(typeof response.data.fechaNacimiento != "undefined") ? $('#error_fechaNacimiento').text(response.data.fechaNacimiento): null;     
				
				}
				else
				{
					          // this.pintarArrayTablaDocumentosVue(response.data);------------------------------------pendien
               $('#numeroResolucion').val("");
               $('#numeroFoliosResolucionLaboral').val("");
               $('#anotacionesResolucion').val("");
															 M.toast({html: 'REGISTRO EXITOSO ', classes: 'rounded'}); 
															$('#modalAddSeccion0').modal('close');
															this.ListarRegistrosTablaSeccion0();
															this.listarDJ();
															this.listDatos(); 
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



	},
	agregarRegistroSeccion01()
	{ 
				var formData = new FormData();
		formData.append('archivo', $('#documentoResolucionLaboral')[0].files[0]);


		var url = '/remuneracionFam/agregar' + '?' + $('#myFormModalSeccion01').serialize();
		axios.post(url, formData,
			{
				headers:
				{
					'Content-Type': 'multipart/form-data'
				}
			}).then((response) =>
			{  
    	$('#error_archivoResolucionLaboral').text(''); 
    	$('#error_situacionLaboral').text(''); 
    	$('#error_numeroResolucion').text(''); 
    	$('#error_fechaResolucion').text(''); 
    	$('#error_fechaFinContrato').text(''); 
    	$('#error_anotacionesResolucion').text('');  

				if (response.data[0] == "error")
				{ 
						(typeof response.data.archivo != "undefined") ? $('#error_archivoResolucionLaboral').text(response.data.archivo): null;
					(typeof response.data.anotacionesResolucion != "undefined") ? $('#error_anotacionesResolucion').text(response.data.anotacionesResolucion): null; 
					(typeof response.data.nivelRemunerativo != "undefined") ? $('#error_nivelRemunerativo').text(response.data.nivelRemunerativo): null; 
					(typeof response.data.montoRemuneracion != "undefined") ? $('#error_montoRemuneracion').text(response.data.montoRemuneracion): null; 
					(typeof response.data.fechaResolucion != "undefined") ? $('#error_fechaResolucion').text(response.data.fechaResolucion): null; 
					(typeof response.data.tipoResolucion != "undefined") ? $('#error_tipoResolucion').text(response.data.tipoResolucion): null; 
					(typeof response.data.fechaResolucionFin != "undefined") ? $('#error_fechaResolucionFin').text(response.data.fechaResolucionFin): null; 
					(typeof response.data.jornadaLaboral != "undefined") ? $('#error_jornadaLaboral').text(response.data.jornadaLaboral): null; 
					(typeof response.data.numeroFoliosResolucionLaboral != "undefined") ? $('#error_numeroFoliosResolucionLaboral').text(response.data.numeroFoliosResolucionLaboral): null; 
					(typeof response.data.numeroResolucion != "undefined") ? $('#error_numeroResolucion').text(response.data.numeroResolucion): null; 
					(typeof response.data.regimenLaboral != "undefined") ? $('#error_regimenLaboral').text(response.data.regimenLaboral): null; 
					(typeof response.data.situacionLaboral != "undefined") ? $('#error_situacionLaboral').text(response.data.situacionLaboral): null;   
				
				}
				else
				{
					          // this.pintarArrayTablaDocumentosVue(response.data);------------------------------------pendien
               $('#numeroResolucion').val("");
               $('#numeroFoliosResolucionLaboral').val("");
               $('#anotacionesResolucion').val("");
															 M.toast({html: 'REGISTRO EXITOSO ', classes: 'rounded'}); 
															$('#modalAddSeccion01').modal('close');
															this.ListarRegistrosTablaSeccion01();
															this.listarDJ();
															this.listDatos(); 
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



	}, 
	eliminarRegistroSeccion0()
	{
		console.log('ingreso a eleinar');
			var nivelEducativoId = $('#codigoElementoGestionado').val();  
			var url = '/remuneracionFam/eliminar' ; 
				axios.post(url,{id:nivelEducativoId}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'});

					this.ListarRegistrosTablaSeccion01();
					this.listarDJ();

				}).catch((err) =>
				{
					console.log(err)
				});



	},
	eliminarRegistroSeccion01()
	{
		console.log('ingreso a eleinar');
			var nivelEducativoId = $('#codigoElementoGestionado').val();  
			var url = '/remuneracionFam/eliminar' ; 
				axios.post(url,{id:nivelEducativoId}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'});

					this.ListarRegistrosTablaSeccion01();
					this.listarDJ();

				}).catch((err) =>
				{
					console.log(err)
				});



	},
		 pintarTablaSeccion0(array)
	{
               
 
		var table = $('#tabla0').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyTabla0").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
   botonVer ='<a  onclick="verCargoLaboral('+ elemento['codigo']+');" class="waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons" style="color: #7986cb ">visibility</i></a>';

   botonEliminar ='<a onclick="eliminarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color:#dd2c00">delete</i></a>';

   botonDesabilitar=' <a  onclick="desabilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500"   data-tooltip="Desabilitar"><i class="material-icons" style="color: #757575 ">clear</i></a>';
   
   botonHabilitar='<a  onclick="habilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Habilitar"><i class="material-icons" style="color: #2e7d32 ">check</i></a>'; 
               

   if (elemento.estado==1) {
    // console.log('ingresa 1');
    estado='<div   class="chip center-align teal accent-4 white-text" style="width: 70%"><b>ACTIVO</b></div>';
    botonAccion=botonDesabilitar; 
   } else {
    estado='<div   class="chip center-align" style="width: 70%"><b>NO DISPONIBLE</b><i class="material-icons"></i></div>';
    botonAccion=botonHabilitar; 
   } 
			$("#tbodyTabla0").append( 
														'<tr id="elemento'+contadorEleemntos+'">'+
                '<td>'+contadorEleemntos+'</td>'+
                '<td>' + elemento.nombres + '</td>'+
                '<td>' + elemento.tipo_familiares + '</td>'+
                '<td>' + elemento.documento + '</td>'+ 
                '<td>' + elemento.nro_documento + '</td>'+ 
                '<td>' + elemento.sexo + '</td>'+ 
                '<td>' + elemento.fecha_nacimiento + '</td>'+ 
                '<td style="white-space: nowrap;" >'+estado+'</td>'+
                '<td><div>'+botonVer+botonEliminar+botonAccion+'</div></td>'+ 
														'</tr>'
			); 
			 

		});
    // $('#tablaDocumentos').DataTable();
    $('.tooltipped').tooltip();//AGREGAMOS LOS TOOLTIPS A LOS NUEVOS ELEMENTOS DE LA TABLA

				$('#tabla0').DataTable(
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
	 pintarTablaSeccion01(array)
	{
               
 
		var table = $('#tabla01').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyTabla01").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
   botonVer ='<a  onclick="verCargoLaboral('+ elemento['codigo']+');" class="waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons" style="color: #7986cb ">archive</i></a>';

   botonEliminar ='<a onclick="seleccionarRegistroSeccion01('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color:#dd2c00">delete</i></a>';

   botonDesabilitar=' <a  onclick="desabilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500"   data-tooltip="Desabilitar"><i class="material-icons" style="color: #757575 ">clear</i></a>';
   
   botonHabilitar='<a  onclick="habilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Habilitar"><i class="material-icons" style="color: #2e7d32 ">check</i></a>'; 
               

   if (elemento.estado==1) {
    // console.log('ingresa 1');
    estado='<div   class="chip center-align teal accent-4 white-text" style="width: 70%"><b>ACTIVO</b></div>';
    botonAccion=botonDesabilitar; 
   } else {
    estado='<div   class="chip center-align" style="width: 70%"><b>NO DISPONIBLE</b><i class="material-icons"></i></div>';
    botonAccion=botonHabilitar; 
   } 
			$("#tbodyTabla01").append( 
														'<tr id="elemento'+contadorEleemntos+'">'+
                '<td>'+contadorEleemntos+'</td>'+
                '<td>' + elemento.tipoResolucion + '</td>'+
                '<td>' + elemento.numeroResolucion + '</td>'+ 
                '<td>' + elemento.nivelRemunerativo + '</td>'+ 
                '<td>' + elemento.fechaResolucion + '</td>'+ 
                '<td style="white-space: nowrap;" >'+estado+'</td>'+
                '<td><div>'+botonEliminar+botonVer+'</div></td>'+ 
														'</tr>'
			);  
		});
    // $('#tablaDocumentos').DataTable();
    $('.tooltipped').tooltip();//AGREGAMOS LOS TOOLTIPS A LOS NUEVOS ELEMENTOS DE LA TABLA

				$('#tabla01').DataTable(
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
	eliminarCargoLaboral()
	{  
			var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/remuneracionFamiliar/eliminar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'}); 
					 this.ListarRegistrosTablaSeccion0(); 
				}).catch((err) =>
				{
					console.log(err)
				}); 
	}, 
 desabilitarCargoLaboral()
 {
  var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/remuneracionFamiliar/desactivar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO DESACTIVADO', classes: 'rounded'}); 
					 this.ListarRegistrosTablaSeccion0(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 habilitarCargoLaboral()
 {
   var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/remuneracionFamiliar/habilitar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ACTIVO', classes: 'rounded'}); 
					 this.ListarRegistrosTablaSeccion0(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 mostrarCargoLaboral(id)
 {

  $('#codigoRegistro').val(id);
		// console.log('ingreso',id);
		console.log($('#codigoRegistro').val(),"codigo");  

			var url = '/remuneracionFamiliar/consultar' ;  
				axios.post(url,{codigo:id}).then((response) =>
				{  
      let registro = response.data[0];  
						var tipoDocumentoSelec = document.getElementById("tipoDocumentoUpd");  
							for (var i = 0; i < tipoDocumentoSelec.length; i++) {
											//  Aca haces referencia al "option" actual
											var opt = tipoDocumentoSelec[i]; 
											if (opt.value==registro.iddocumento) {
												opt.selected="selected";
											} 
							} 
								var tipoFamiliarUpd = document.getElementById("tipoFamiliarUpd");  
							for (var i = 0; i < tipoFamiliarUpd.length; i++) {
											//  Aca haces referencia al "option" actual
											var opt = tipoFamiliarUpd[i]; 
											if (opt.value==registro.tipo_familiares) {
												opt.selected="selected";
											} 
							} 
							var sexoFamiliarUpd = document.getElementById("sexoFamiliarUpd");  
							for (var i = 0; i < sexoFamiliarUpd.length; i++) {
											//  Aca haces referencia al "option" actual
											var opt = sexoFamiliarUpd[i]; 
											if (opt.value==registro.sexo) {
												opt.selected="selected";
											} 
							} 
      $('#numeroDocumentoFamiliarUpd').val(registro.nro_documento); 
      $('#nombreFamiliarUpd').val(registro.nombre);
      $('#apellidoPaternoFamiliarUpd').val(registro.apellido_paterno);
      $('#apellidoMaternoFamiliarUpd').val(registro.apellido_materno);
      $('#fechaNacimientoUpd').val(registro.fecha_nacimiento);
      $('#anotacionesUpd').val(registro.descripcion); 
      $('#codigoFamiliar').val(registro.codigo);


								// apellido_materno: "materno"
								// apellido_paterno: "paterni"
								// codigo: 1
								// descripcion: null
								// estado: "1"
								// fecha_creacion: "2021-06-15 16:06:24"
								// fecha_nacimiento: "2021-06-09"
								// glosa: null
								// id_trabajador: 333
								// iddocumento: 1
								// nombre: "nombre"
								// nro_documento: "75982485"
								// sexo: "MASCULINO"
								// tipo_familiares: "CONYUGE"

      // $('#nombreCargoLaboralUpd').val(registro.nombre);
      // $('#detalleCargoLaboralUpd').val(registro.descripcion);  
      $('#modalupdCargoLaboral').modal('open');
					 // this.ListarRegistrosTablaSeccion0(); 
				}).catch((err) =>
				{
					console.log(err)
				});

  

 }, 
 actualizarCargoLaboral()
 {
  		var url = '/remuneracionFamiliar/actualizar';
  var datosArray=$('#myFormSituacionAcademicaUpd').serialize();
		axios.post(url,datosArray).then((response) =>
			{   
				$('#error_tipoDocumentoUpd').text(''); 
    	$('#error_numeroDocumentoFamiliarUpd').text(''); 
    	$('#error_tipoFamiliarUpd').text(''); 
    	$('#error_sexoFamiliarUpd').text(''); 
    	$('#error_apellidoPaternoFamiliarUpd').text('');  
				if (response.data[0] == "error")
				{  
      (typeof response.data.tipoDocumento != "undefined") ? $('#error_tipoDocumentoUpd').text(response.data.tipoDocumento): null;    
						(typeof response.data.numeroDocumentoFamiliar != "undefined") ? $('#error_numeroDocumentoFamiliarUpd').text(response.data.numeroDocumentoFamiliar): null;    
						(typeof response.data.tipoFamiliar != "undefined") ? $('#error_tipoFamiliarUpd').text(response.data.tipoFamiliar): null;    
						(typeof response.data.sexoFamiliar != "undefined") ? $('#error_sexoFamiliarUpd').text(response.data.sexoFamiliar): null;    
						(typeof response.data.apellidoPaternoFamiliar != "undefined") ? $('#error_apellidoPaternoFamiliarUpd').text(response.data.apellidoPaternoFamiliar): null;    
						(typeof response.data.apellidoMaternoFamiliar != "undefined") ? $('#error_apellidoMaternoFamiliarUpd').text(response.data.apellidoMaternoFamiliar): null;    
						(typeof response.data.fechaNacimiento != "undefined") ? $('#error_fechaNacimientoUpd').text(response.data.fechaNacimiento): null;     
				}
				else
				{ 
					$('#nombreCargoLaboralUpd').val("");
     $('#detalleCargoLaboralUpd').val("");
					M.toast({html: '  ACTUALIZADO    ', classes: 'rounded'}); 
					$('#modalupdCargoLaboral').modal('close');
					this.ListarRegistrosTablaSeccion0(); 
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
	<script>
		function gestionarDocumentos(valor)
{
	$('#dJCodigo').val(valor); 
	$('#modalEliminarSeccion02').modal('open'); 
}
$('#eliminarDJ').on('click', function ()
{
	app.$options.methods.eliminarDocumentos();   
}); 

 
function seleccionarRegistroSeccion01(valor)
{	
	console.log('ingreso a gestion javascript',valor);  
	$('#codigoElementoGestionado').val(valor); 
	$('#modalEliminarSeccion1').modal('open');
	
}

function eliminarCargoLaboral(valor)
{	 
	$('#CargoLaboralCargo').val(valor); 
	$('#modalEliminarCargoLaboral').modal('open');
	
}
function desabilitarCargoLaboral(valor)
{	 
	$('#CargoLaboralCargo').val(valor); 
	$('#modalDesactivarCargoLaboral').modal('open');
	
}
function habilitarCargoLaboral(valor)
{	 
	$('#CargoLaboralCargo').val(valor); 
	$('#modalHabilitarCargoLaboral').modal('open');
	
}
function verCargoLaboral(valor)
{	  
 		app.$options.methods.mostrarCargoLaboral(valor);  
	
}
// $('#eliminarNivelAcademico').on('click', function ()
// {
// 		app.$options.methods.eliminarRegistroSeccion01();  
// });

	</script>