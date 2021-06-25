<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
  Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
	el: '#app',
	data: {
		// numeroDocumento:'72805571',
		numeroDocumento: '',
		nombresServidor: "",
		nombreServidor: "",
		apeliidosServidor: "",
		nombreServidor: "",
		situacionLaboral: "",
		regimenLaboral: "",
		estadoCivil:"",
		telefono:"",
		correoLaboral:"",
		correoPersonal:"",
		correoPersonal:"",
		correoPersonal:"",
		correoPersonal:"",
		contactoNombre:"",
		tipoFamiliar :"",
		contactoMovil:"",
		sexo:"",
		reniec        :true,
		centroLaboral: "",
		cargoServidor: "",
		departamentos: [],
		provincias: [],
		distritos: [],
      documentos: [],
      direccionPrincipal:"",
      ubicacionPrincipal:"",

		// areaServidor     : "",
	},
	created: function () {
		this.listDatos();
		this.listarDirecciones();
   this.listarDJ();
		this.cargarDepartamentos();
  this.listDocumentos();
 
	},
	methods: {
   listDocumentos: function () 
   {
				var urlTipoDocumentos = '/tipoDocumentos';
				axios.get(urlTipoDocumentos).then(response => { 
					this.documentos = response.data
				});
	},
   cargarImagen(e)
	{ 
		let imagen = $('#fotoPerfil')[0].files[0];
		if (imagen == null)
		{
			// console.log('ingreos a null');
		}
		else
		{
			$('#h_error_imagen').text('');

			M.toast(
			{
				html: 'CARGANDO IMAGEN',
				classes: 'rounded'
			}); 
			var formData = new FormData();
			var url = '/trabajador/subirImagen';
			formData.append('imagen', $('#fotoPerfil')[0].files[0]);

			axios.post(url, formData,
				{
					headers:
					{
						'Content-Type': 'multipart/form-data'
					}
				}).then((response) =>
				{
					if (response.data[0] == "error")
					{
						$('#h_error_imagen').text('');
						M.toast(
						{
							html: 'IMAGEN NO INGRESADA',
							classes: 'rounded'
						});
						(typeof response.data.imagen != "undefined") ? $('#h_error_imagen').text(response.data.imagen): null;
					}
					else
					{
						M.toast(
						{
							html: 'IMAGEN ACTUALIZADA',
							classes: 'rounded'
						});
						document.getElementById("filiacionImagen").src = response.data["ruta"];
					}
				})
				.catch((err) =>
				{
					console.log(err)
				});
		}


	},
	cargarDepartamentos()
	{
		var url = 'departamentosList';
		axios.get(url).then((response) =>
			{
				// console.log('departamentos ->',response.data);
				this.departamentos = response.data;

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
			this.numeroDocumento 		= trabajador.nro_documento;
			this.nombresServidor 		= trabajador.nombresServidor ;
			this.nombreServidor 			= trabajador.nombreServidor;
			this.apeliidosServidor = trabajador.apeliidosServidor;
			this.situacionLaboral 	= trabajador.situacionLaboral;
			this.regimenLaboral 			= trabajador.regimen_laboral;
			this.centroLaboral 				= trabajador.centroLaboral;
			this.cargoServidor 				= trabajador.cargoServidor; 
			this.direccionPrincipal= trabajador.direccionPrincipal; 
			this.ubicacionPrincipal= trabajador.ubicacion;
			this.estadoCivil							=	trabajador.estado_civil;
			this.sexo														=	trabajador.SEXO;
			this.telefono										=trabajador.telefono;
			this.correoLaboral					=trabajador.email_profesional;
			this.correoPersonal				=trabajador.email; 
			// this.contactoNombre				=trabajador.email; 
			// this.tipoFamiliar 					=trabajador.email; 
			// this.contactoMovil					=trabajador.email; 

			if(trabajador.validado_reniec=="SI"){
					this.reniec        =true;
			}else{
					this.reniec        =false;
			}
			if (trabajador.url_imagen == null)
			{ 
				document.getElementById("filiacionImagen").src = "images/avatar/perfil.jpg";
			}
			else
			{
				document.getElementById("filiacionImagen").src = trabajador.url_imagen;
			}


		});
	},
	listarDirecciones()
	{
		var url = '/fileacion-direcciones';
		axios.get(url).then((response) =>
			{ 
				if (response.data.length > 0)
				{
					this.pintarArrayTablaDirecciones(response.data); 
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});
	},
 	listarDJ()
	{
		var url = '/fileacion-DJ';
		axios.get(url).then((response) =>
			{ 
				if (response.data.length > 0)
				{
					this.pintarArrayTablaDJ(response.data);
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});
	},
	pintarArrayTablaDirecciones(array)
	{ 
 
		var table = $('#data-table-simple').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyDirecciones").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(arrayDirecciones =>
		{ 
			contadorEleemntos += 1;
			$("#data-table-simple").append(
				'<tr>' +
				'<td>' + contadorEleemntos + '</td>' +
				'<td>' + arrayDirecciones.tipo_direccion + '</td>' +
				'<td>' + arrayDirecciones.zonas + '</td>' +
				'<td>' + arrayDirecciones.tipo_via + '</td>' +
				'<td>' + arrayDirecciones.direccion + '</td>' +
				'<td>' + arrayDirecciones.departamento + ' / ' + arrayDirecciones.provincia + ' / ' + arrayDirecciones.distrito + '</td>' +
				'<td>   	<a href="' + arrayDirecciones.url_archivo + '"   target="_blank" rel="noopener noreferrer"> documento.pdf </a>  </td>' +
				'<td>APROBADO</td>' +
				'<td> ' +
				'<center>' +
				'<a    class=" waves-effect waves-light grey lighten-5 tooltipped" data-toggle="tooltip" title="GESTIONAR DIRECCIÓN" ' + 'data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons"    style="color: #7986cb ">visibility</i></a>' +

				'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDomicilio( ' + arrayDirecciones['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +

				'</center>' +
				'</td>' +
				'</tr>'

			);
			if (arrayDirecciones.tipo_direccion == "PRINCIPAL")
			{
				this.direccionPrincipal = arrayDirecciones.direccion,
					this.ubicacionPrincipal = arrayDirecciones.departamento + ' / ' + arrayDirecciones.provincia + ' / ' + arrayDirecciones.distrito;
			}

		});

		$('#data-table-simple').DataTable();
	},
	agregarDireccion()
	{ 
		var formData = new FormData();
		formData.append('archivo', $('#documentoDireccion')[0].files[0]);


		var url = '/fileacion-direcciones/agregar' + '?' + $('#myFormDirecciones').serialize();
		axios.post(url, formData,
			{
				headers:
				{
					'Content-Type': 'multipart/form-data'
				}
			}).then((response) =>
			{ 
				if (response.data[0] == "error")
				{
					$('#error_dir_tipoDirecciónDomicilio').text('');
					$('#error_dir_zonaDomicilio').text('');
					$('#error_dir_tipoViaDomicilio').text('');
					$('#error_dir_departamentoDomicilio').text('');
					$('#error_dir_provinciaDomicilio').text('');
					$('#error_dir_distritoDomicilio').text('');
					$('#error_dir_direccionDomicilio').text('');
					$('#documentoDireccion').text('');

					(typeof response.data.tipoDirecciónDomicilio != "undefined") ? $('#error_dir_tipoDirecciónDomicilio').text(response.data.tipoDirecciónDomicilio): null;
					(typeof response.data.zonaDomicilio != "undefined") ? $('#error_dir_zonaDomicilio').text(response.data.zonaDomicilio): null;
					(typeof response.data.tipoViaDomicilio != "undefined") ? $('#error_dir_tipoViaDomicilio').text(response.data.tipoViaDomicilio): null;
					(typeof response.data.departamentoDomicilio != "undefined") ? $('#error_dir_departamentoDomicilio').text(response.data.departamentoDomicilio): null;
					(typeof response.data.provinciaDomicilio != "undefined") ? $('#error_dir_provinciaDomicilio').text(response.data.provinciaDomicilio): null;
					(typeof response.data.distritoDomicilio != "undefined") ? $('#error_dir_distritoDomicilio').text(response.data.distritoDomicilio): null;
					(typeof response.data.direccionDomicilio != "undefined") ? $('#error_dir_direccionDomicilio').text(response.data.direccionDomicilio): null;
					(typeof response.data.referenciaDomicilio != "undefined") ? $('#error_dir_referenciaDomicilio').text(response.data.referenciaDomicilio): null;
					(typeof response.data.documentoDireccion != "undefined") ? $('#error_dir_documentoDireccion').text(response.data.documentoDireccion): null;

				}
				else
				{
					this.pintarArrayTablaDirecciones(response.data);
               $('#direccionDomicilio').val("");
               $('#referenciaDomicilio').val("");
															 M.toast({html: 'REGISTRO EXITOSO ', classes: 'rounded'}); 

               document.getElementById("documentoDireccion").value = "";
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
 agregarDJ()
	{ 
		var formData = new FormData();
		formData.append('archivo', $('#documentoDJ')[0].files[0]);


		var url = '/fileacion-dj/agregar' + '?' + $('#myFormDJ').serialize();
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
					          this.pintarArrayTablaDJ(response.data);
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
 	pintarArrayTablaDJ(array)
	{
 
		var table = $('#data-table-simpleIII').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyDj").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
			$("#data-table-simpleIII").append(
    '<tr>'+
								'<td>'+contadorEleemntos+'</td>'+
								'<td>' + elemento.tipo_documento + '</td>'+
								'<td>' + elemento.fecha_emision + '</td>'+
								'<td><a href="'+elemento.url_archivo+'" target="_blank" rel="noopener noreferrer">' + elemento.name_archivo + '</a></td>'+
								'<td>APROBADO</td>'+
								'<td>'+
									'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDj( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">delete</i></a>' +
									'<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons grey-text text-darken-2">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});
    $('#data-table-simpleIII').DataTable();

		// $('#data-table-simpleIII').DataTable(
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
	limpiarTablaDirecciones()
	{
		document.getElementById("tbodyDirecciones").innerHTML = "";

		// var trs = $("#data-table-simple tbody tr").length; //obtenermos el numero de tr en la tabla  

		// //elimnamos los tr de la tabla 
		// for (var i = 0; i <= trs+1; i++) {
		// 	$("#data-table-simple tbody tr:last").remove();

		// }
	} 

      

	}
})

 </script>
<script>
$("#departamentoDomicilio").focusout(function ()
{
	let idDepartamento = $('#departamentoDomicilio').val();
	const $select = document.querySelector("#provinciaDomicilio");
	if (idDepartamento != null)
	{
		var url = '/provinciasList/' + idDepartamento;
		axios.get(url).then((response) =>
			{ 
				response.data.forEach(element =>
				{
					const option = document.createElement('option');
					option.value = element.idProv;
					option.text = element.provincia;
					$select.appendChild(option);

				});
			})
			.catch((err) =>
			{
				console.log(err)
			});

	}
});
$("#provinciaDomicilio").focusout(function ()
{
	let idProvincia = $('#provinciaDomicilio').val();
	const $select = document.querySelector("#distritoDomicilio");
	if (idProvincia != null)
	{
		var url = '/distritoList/' + idProvincia;
		axios.get(url).then((response) =>
			{ 
				response.data.forEach(element =>
				{
					const option = document.createElement('option');
					option.value = element.idDist;
					option.text = element.distrito;
					$select.appendChild(option);

				});
			})
			.catch((err) =>
			{
				console.log(err)
			});

	}
});

function gestionarDomicilio(valor)
{
	$('#domicilioCodigo').val(valor); 
	$('#modalEliminarDireccion').modal('open');


}
$('#eliminarDomicilio').on('click', function ()
{
	var codigoDomiciio = $('#domicilioCodigo').val(); 
	var url = '/eliminarDireccion/' + codigoDomiciio; 
	axios.get(url).then((response) =>
	{

		var trs = $("#data-table-simple tbody tr").length; //obtenermos el numero de tr en la tabla   
		//elimnamos los tr de la tabla 
		for (var i = 0; i <= trs + 1; i++)
		{
			$("#data-table-simple tbody tr:last").remove();

		}
		pintarArrayTablaDireccionesNuevas(response.data); 

	}).catch((err) =>
	{
		console.log(err)
	});


});
function ActualizarDomicilio(valor)
{
	  
	var url = '/actualizarDireccion/' + valor; 
	axios.get(url).then((response) =>
	{

		var trs = $("#data-table-simple tbody tr").length; //obtenermos el numero de tr en la tabla   
		//elimnamos los tr de la tabla 
		for (var i = 0; i <= trs + 1; i++)
		{
			$("#data-table-simple tbody tr:last").remove();

		}
		pintarArrayTablaDireccionesNuevas(response.data); 

	}).catch((err) =>
	{
		console.log(err)
	});


}

function pintarArrayTablaDireccionesNuevas(array)
{


	var table = $('#data-table-simple').DataTable();
	table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
	document.getElementById("tbodyDirecciones").innerHTML = "";

	let contadorEleemntos = 0;
	array.forEach(elemento =>
	{ 
		contadorEleemntos += 1;
		$("#data-table-simple").append(
			'<tr>' +
			'<td>' + contadorEleemntos + '</td>' +
			'<td>' + elemento.tipo_direccion + '</td>' +
			'<td>' + elemento.zonas + '</td>' +
			'<td>' + elemento.tipo_via + '</td>' +
			'<td>' + elemento.direccion + '</td>' +
			'<td>' + elemento.departamento + ' / ' + elemento.provincia + ' / ' + elemento.distrito + '</td>' +
			'<td>   	<a href="' + elemento.url_archivo + '"   target="_blank" rel="noopener noreferrer"> documento.pdf </a>  </td>' +
			'<td>APROBADO</td>' +
			'<td> ' +
			'<center>' +
			
         			'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDj( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +

			'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDomicilio( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +

			'</center>' +
			'</td>' +
			'</tr>'

		);
		if (elemento.tipo_direccion == "PRINCIPAL")
		{
			this.direccionPrincipal = elemento.direccion,
				this.ubicacionPrincipal = elemento.departamento + ' / ' + elemento.provincia + ' / ' + elemento.distrito;
		}

	});

	$('#data-table-simple').DataTable();
}

function gestionarDj(valor)
{
	$('#dJCodigo').val(valor); 
	$('#modalEliminarDJ').modal('open');


}
$('#eliminarDJ').on('click', function ()
{
	var codigoDJ = $('#dJCodigo').val(); 
	var url = '/eliminarDJ/' + codigoDJ; 
	axios.get(url).then((response) =>
	{
  // if(response.data.length>0 ){
     // pintarArrayTablaDJNuevas(response.data);
  // }else{
  //   var table = $('#data-table-simpleIII').DataTable();
  //    table.destroy(); //eliminamos los estilos y datos cargados en la tabla  
  //    document.getElementById("tbodyDj").innerHTML = "";

  // }
		pintarArrayTablaDJNuevas(response.data);
	}).catch((err) =>
	{
		console.log(err)
	});


});

function pintarArrayTablaDJNuevas(array)
{
 	var table = $('#data-table-simpleIII').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		 
  document.getElementById("tbodyDj").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
			$("#data-table-simpleIII").append(
    '<tr>'+
								'<td>'+contadorEleemntos+'</td>'+
								'<td>' + elemento.tipo_documento + '</td>'+
								'<td>' + elemento.fecha_emision + '</td>'+
								'<td><a href="'+elemento.url_archivo+'" target="_blank" rel="noopener noreferrer">' + elemento.name_archivo + '</a></td>'+
								'<td>APROBADO</td>'+
								'<td>'+

         			'<a   class=" waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-toggle="tooltip" title="ELIMINAR DIRECCIÓN"' + 'data-position="top" onclick="gestionarDj( ' + elemento['codigo'] + ');" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color: #dd2c00">remove</i></a>' +




									'<a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >'+
									'<i class="material-icons grey-text text-darken-2">archive</i></a>'+
								'</td>'+
							'</tr>'
			); 

		});

		$('#data-table-simpleIII').DataTable();
 
}



</script>