<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
	Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
		el: '#app',
		data: {  
			nombre  :"",   
		},
		created: function () { 
			this.listarSituacionLaboral();
		},
		methods: { 
	listarSituacionLaboral()
	{ 
				// var url = '/fileacion-DJ';
		var url = '/NivelRemunerativo/list';	
		axios.get(url).then((response) =>
			{  
				if (response.data.length > 0)
				{
     console.log('ingreso');
     console.log(response.data);
					   this.pintarTablaSituacionLaboral(response.data);
						// this.	tablaDocumentos=response.data;
				}else{
					  document.getElementById("tbodySituacionLaboral").innerHTML = "";
					  $('#tablaSituacionLaboral').DataTable();
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});

	},
	agregarSituacionLaboral(){   
		var url = '/NivelRemunerativo/agregar';
  var datosArray=$('#myFormSituacionAcademica').serialize();
		axios.post(url,datosArray).then((response) =>
			{   
				if (response.data[0] == "error")
				{     
     (typeof response.data.nombreNivelRemunerativo != "undefined") ? $('#error_nombreNivelRemunerativo').text(response.data.nombreNivelRemunerativo): null; 
     (typeof response.data.desCortaNivelRemunerativo != "undefined") ? $('#error_desCortaNivelRemunerativo').text(response.data.desCortaNivelRemunerativo): null;  
     (typeof response.data.detalleNivelRenumerativo != "undefined") ? $('#error_detalleNivelRenumerativo').text(response.data.detalleNivelRenumerativo): null;  
				}
				else
				{
     $('#error_nombreNivelRemunerativo').text("");
     $('#error_desCortaNivelRemunerativo').text("");
     $('#error_detalleNivelRenumerativo').text("");
					$('#nombreNivelRemunerativo').val("");
     $('#desCortaNivelRemunerativo').val("");
     $('#detalleNivelRenumerativo').val("");
					M.toast({html: 'NIVEL ACADEMICO REGISTRADO', classes: 'rounded'}); 
					$('#modalAddSituacionLaboral').modal('close');
					this.listarSituacionLaboral(); 
				}

			})
			.catch((err) =>
			{
				console.log(err)
			});



	}, 
	eliminarSituacionLaboral()
	{  
			var situacionLaboralCodigo = $('#nivelSituacionLaboral').val();  
			var url = '/NivelRemunerativo/eliminar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ELIMINADO', classes: 'rounded'}); 
					 this.listarSituacionLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				}); 
	}, 
 desabilitarSituacionLaboral()
 {
  var situacionLaboralCodigo = $('#nivelSituacionLaboral').val();  
			var url = '/NivelRemunerativo/desactivar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO DESACTIVADO', classes: 'rounded'}); 
					 this.listarSituacionLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 habilitarSituacionLaboral()
 {
   var situacionLaboralCodigo = $('#nivelSituacionLaboral').val();  
			var url = '/NivelRemunerativo/habilitar' ; 
				axios.post(url,{id:situacionLaboralCodigo}).then((response) =>
				{ 
					 M.toast({html: 'REGISTRO ACTIVO', classes: 'rounded'}); 
					 this.listarSituacionLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

 },
 mostrarSituacionLaboral(id)
 {

  $('#codigoRegistro').val(id);  

			var url = '/NivelRemunerativo/consultar' ; 
				axios.post(url,{codigo:id}).then((response) =>
				{  
     let registro = response.data[0];
     console.log('registro',registro);
      $('#nombreNivelRemunerativoUpd').val(registro.nombre);
      $('#desCortaNivelRemunerativoUpd').val(registro.desc_corta);  
      $('#idNivelRemunerativoUpd').val(registro.id_MEF);  
      $('#idNivelRemunerativoPLHUpd').val(registro.id_PLH);   
      $('#detalleNivelRenumerativoUpd').val(registro.descripcion);    
      $('#modalupdSituacionLaboral').modal('open');
					 // this.listarSituacionLaboral(); 
				}).catch((err) =>
				{
					console.log(err)
				});

  

 }, 
 actualizarSituacionLaboral()
 {
  		var url = '/NivelRemunerativo/actualizar';
  var datosArray=$('#myFormSituacionAcademicaUpd').serialize();
		axios.post(url,datosArray).then((response) =>
			{   
				if (response.data[0] == "error")
				{  
     (typeof response.data.nombreNivelRemunerativo != "undefined") ? $('#error_nombreNivelRemunerativo').text(response.data.nombreNivelRemunerativo): null; 
     (typeof response.data.desCortaNivelRemunerativo != "undefined") ? $('#error_desCortaNivelRemunerativo').text(response.data.desCortaNivelRemunerativo): null;  
     (typeof response.data.detalleNivelRenumerativo != "undefined") ? $('#error_detalleNivelRenumerativo').text(response.data.detalleNivelRenumerativo): null;    
				}
				else
				{
     $('#error_nombreNivelRemunerativo').text("");
     $('#error_desCortaNivelRemunerativo').text("");
     $('#error_detalleNivelRenumerativo').text("");
					$('#nombreNivelRemunerativo').val("");
     $('#desCortaNivelRemunerativo').val("");
     $('#detalleNivelRenumerativo').val("");
					M.toast({html: 'NIVEL ACADEMICO ACTUALIZADO', classes: 'rounded'}); 
					$('#modalupdSituacionLaboral').modal('close');
					this.listarSituacionLaboral();  
				}
			})
			.catch((err) =>
			{
				console.log(err)
			});



 },
	 pintarTablaSituacionLaboral(array)
	{
               
 
		var table = $('#tablaSituacionLaboral').DataTable();
		table.destroy(); //eliminamos los estilos y datos cargados en la tabla 
		// this.limpiarTablaDirecciones(); //eliminamos los datos de la tabla
  document.getElementById("tbodySituacionLaboral").innerHTML = "";
		let contadorEleemntos = 0;
		array.forEach(elemento =>
		{ 
			contadorEleemntos += 1; 
   botonVer ='<a  onclick="verSituacionLaboral('+ elemento['codigo']+');" class="waves-effect waves-light grey lighten-5 tooltipped" data-position="top" data-delay="500" data-tooltip="Ver"><i class="material-icons" style="color: #7986cb ">visibility</i></a>';

   botonEliminar ='<a onclick="eliminarSituacionLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Eliminar"><i class="material-icons" style="color:#dd2c00">remove</i></a>';

   botonDesabilitar=' <a  onclick="desabilitarSituacionLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500"   data-tooltip="Desabilitar"><i class="material-icons" style="color: #757575 ">clear</i></a>';
   
   botonHabilitar='<a  onclick="habilitarSituacionLaboral('+ elemento['codigo']+');"  class="waves-effect waves-light grey lighten-5 tooltipped modal-trigger" data-position="top" data-delay="500" data-tooltip="Habilitar"><i class="material-icons" style="color: #2e7d32 ">check</i></a>'; 
               

   if (elemento.estado==1) {
    console.log('ingresa 1');
    estado='<div   class="chip center-align teal accent-4 white-text" style="width: 70%"><b>ACTIVO</b></div>';
    botonAccion=botonDesabilitar; 
   } else {
    estado='<div   class="chip center-align" style="width: 70%"><b>NO DISPONIBLE</b><i class="material-icons"></i></div>';
    botonAccion=botonHabilitar; 
   } 
			$("#tbodySituacionLaboral").append( 
														'<tr id="elemento'+contadorEleemntos+'">'+
                '<td>'+contadorEleemntos+'</td>'+
                '<td>' + elemento.nombre + '</td>'+
                '<td>' + elemento.desc_corta + '</td>'+ 
                '<td>' + elemento.descripcion + '</td>'+
                '<td>' + elemento.fecha_creacion + '</td>'+ 
                '<td style="white-space: nowrap;" >'+estado+'</td>'+
                '<td><div>'+botonVer+botonEliminar+botonAccion+'</div></td>'+ 
														'</tr>'
			);  
		});
    // $('#tablaDocumentos').DataTable();
    $('.tooltipped').tooltip();//AGREGAMOS LOS TOOLTIPS A LOS NUEVOS ELEMENTOS DE LA TABLA

				$('#tablaSituacionLaboral').DataTable(
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
function eliminarSituacionLaboral(valor)
{	 
	$('#nivelSituacionLaboral').val(valor); 
	$('#modalEliminarSituacionLaboral').modal('open');
	
}
function desabilitarSituacionLaboral(valor)
{	 
	$('#nivelSituacionLaboral').val(valor); 
	$('#modalDesactivarSituacionLaboral').modal('open');
	
}
function habilitarSituacionLaboral(valor)
{	 
	$('#nivelSituacionLaboral').val(valor); 
	$('#modalHabilitarSituacionLaboral').modal('open');
	
}
function verSituacionLaboral(valor)
{	  
 		app.$options.methods.mostrarSituacionLaboral(valor);  
	
}


// $('#eliminarNivelAcademico').on('click', function ()
// {
// 		app.$options.methods.eliminarSituacionLaboral();  
// });

	</script>