<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
	Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
		el: '#app',
		data: {  
			nombre  :"",   
		},
		created: function () { 
			this.listarCargoLaboral();
		},
		methods: { 
	listarCargoLaboral()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/CargoLaboral/list';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
     console.log('ingreso');
     console.log(response.data);
					   this.pintarTablaCargoLaboral(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
					  document.getElementById("tbodyCargoLaboral").innerHTML = "";
					  $('#tablaCargoLaboral').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	agregarCargoLaboral(){   
		var url = '/CargoLaboral/agregar';
  var datosArray=$('#myFormSituacionAcademica').serialize();
		axios.post(url,datosArray).then((response) =>
			{   
				if (response.data[0] == "error")
				{  
     (typeof response.data.nombreCargoLaboral != "undefined") ? $('#error_nombreCargoLaboral').text(response.data.nombreCargoLaboral): null; 
     (typeof response.data.detalleSituacionLaboral != "undefined") ? $('#error_detalleSituacionLaboral').text(response.data.detalleSituacionLaboral): null;  
				}
				else
				{
     $('#error_nombreCargoLaboral').text("");
     $('#error_detalleSituacionLaboral').text("");
					$('#nombreCargoLaboral').val("");
     $('#detalleSituacionLaboral').val("");
					M.toast({html: 'NIVEL ACADEMICO REGISTRADO', classes: 'rounded'}); 
					$('#modalAddCargoLaboral').modal('close');
					this.listarCargoLaboral(); 
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



	}, 
	eliminarCargoLaboral()
	{  
			var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/CargoLaboral/eliminar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'}); 
					 this.listarCargoLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				}); 
	}, 
 desabilitarCargoLaboral()
 {
  var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/CargoLaboral/desactivar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO DESACTIVADO', classes: 'rounded'}); 
					 this.listarCargoLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 habilitarCargoLaboral()
 {
   var situacionLaboralCodigo = $('#CargoLaboralCargo').val();  
			var url = '/CargoLaboral/habilitar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ACTIVO', classes: 'rounded'}); 
					 this.listarCargoLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 mostrarCargoLaboral(id)
 {

  $('#codigoRegistro').val(id);  

			var url = '/CargoLaboral/consultar' ; 
				axios.post(url,{codigo:id}).then((response) =>
				{  
     let registro = response.data[0];
     console.log('registro',registro);
      $('#nombreCargoLaboralUpd').val(registro.nombre);
      $('#detalleCargoLaboralUpd').val(registro.descripcion);  
      $('#modalupdCargoLaboral').modal('open');
					 // this.listarCargoLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

  

 }, 
 actualizarCargoLaboral()
 {
  		var url = '/CargoLaboral/actualizar';
  var datosArray=$('#myFormSituacionAcademicaUpd').serialize();
		axios.post(url,datosArray).then((response) =>
			{   
				if (response.data[0] == "error")
				{  
     (typeof response.data.nombreCargoLaboralUpd != "undefined") ? $('#error_nombreCargoLaboralUpd').text(response.data.nombreCargoLaboralUpd): null; 
     (typeof response.data.detalleCargoLaboralUpd != "undefined") ? $('#error_detalleCargoLaboralUpd').text(response.data.detalleCargoLaboralUpd): null;  
				}
				else
				{
     $('#error_nombreCargoLaboralUpd').text("");
     $('#error_detalleCargoLaboralUpd').text("");
					$('#nombreCargoLaboralUpd').val("");
     $('#detalleCargoLaboralUpd').val("");
					M.toast({html: 'CARGO LABORAL ACTUALIZADO', classes: 'rounded'}); 
					$('#modalupdCargoLaboral').modal('close');
					this.listarCargoLaboral(); 
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



 },
	 pintarTablaCargoLaboral(array)
	{
               
 
		var table = $('#tablaCargoLaboral').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodyCargoLaboral").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
   botonVer ='<a  onclick="verCargoLaboral('+ elemento['codigo']+');" class="waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons" style="color: #7986cb ">visibility</i></a>';

   botonEliminar ='<a onclick="eliminarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color:#dd2c00">remove</i></a>';

   botonDesabilitar=' <a  onclick="desabilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500"   data-tooltip="Desabilitar"><i class="material-icons" style="color: #757575 ">clear</i></a>';
   
   botonHabilitar='<a  onclick="habilitarCargoLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Habilitar"><i class="material-icons" style="color: #2e7d32 ">check</i></a>'; 
               

   if (elemento.estado==1) {
    console.log('ingresa 1');
    estado='<div   class="chip center-align teal accent-4 white-text" style="width: 70%"><b>ACTIVO</b></div>';
    botonAccion=botonDesabilitar; 
   } else {
    estado='<div   class="chip center-align" style="width: 70%"><b>NO DISPONIBLE</b><i class="material-icons"></i></div>';
    botonAccion=botonHabilitar; 
   } 
			$("#tbodyCargoLaboral").append( 
														'<tr id="elemento'+contadorEleemntos+'">'+
                '<td>'+contadorEleemntos+'</td>'+
                '<td>' + elemento.nombre + '</td>'+
                '<td>' + elemento.descripcion + '</td>'+
                '<td>' + elemento.fecha_creacion + '</td>'+ 
                '<td style="white-space: nowrap;" >'+estado+'</td>'+
                '<td><div>'+botonVer+botonEliminar+botonAccion+'</div></td>'+ 
														'</tr>'
			);  
		});
    // $('#tablaDocumentos').DataTable();
    $('.tooltipped').tooltip();//AGREGAMOS LOS TOOLTIPS A LOS NUEVOS ELEMENTOS DE LA TABLA

				$('#tablaCargoLaboral').DataTable(
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
// 		app.$options.methods.eliminarCargoLaboral();  
// });

	</script>