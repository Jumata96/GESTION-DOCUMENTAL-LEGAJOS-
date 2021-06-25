<script type = "text/javascript" src = "{{asset('js/vue-multiselect.min.js')}}"> </script>

	<script type = "text/javascript">
	Vue.component('multiselect', window.VueMultiselect.default)

var app = new Vue({
		el: '#app',
		data: {
			// numeroDocumento:'72805571',
			numeroDocumento: '',
			tipoDocumento: "A",
			nombreServidor: "",
			apellidosServidor: "",
			cargoServidor: "",
			areaServidor: "",
			idServidor: "",
			documentos: [],
         arrayTrabajadores : [],
		},
		created: function () {
			this.listDocumentos();
			this.listDatos();
		},
		methods: {
			listDocumentos: function () {
				var urlTipoDocumentos = '/tipoDocumentos';
				axios.get(urlTipoDocumentos).then(response => {
					this.documentos = response.data
				});
			},
         listDatos: function ()
         {
            var urlDatos = '/trabajador/datos';
            axios.get(urlDatos).then(response =>
            {
               let trabajador = response.data[0][0]; 
               // console.log(trabajador);
               if (trabajador !=null) { 
                   
                  this.numeroDocumento = trabajador.nro_documento; 
                  this.tipoDocumento = trabajador.iddocumento; 
                  this.nombreServidor = trabajador.nombreServidor;
                  this.apellidosServidor = trabajador.apeliidosServidor;   
               }  
            });
            // this.buscarPersona();
         },
         limpiarBusqueda(){
            this.numeroDocumento    ="";
            this.nombreServidor     ="";
            this.apellidosServidor  =""; 

            var ruta ='/sidebar/desactivar'; 


					 axios.get( ruta).then(function (response) { 
								var sidebar = document.getElementsByClassName("bold");
									// console.log('elemento :' , sidebar.length);
								for (let index = 2; index < sidebar.length; index++) {
										document.getElementsByClassName("bold")[index].style.display = "none";
								}
								document.getElementsByClassName("separador")[0].style.display = "none";
                }).catch(function (error) {
                    console.log(error);
                }); 


            var table = $('#data-table-simple').DataTable();
            table.destroy();//eliminamos los estilos y datos cargados en la tabla 
            document.getElementById("tbodyTabla01").innerHTML = "";
            $('#data-table-simple').DataTable({//cargamos los estilos a la tabla con los nuevos datos(tr) 
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
			buscarPersona() {
				var url = '/trabajador/LegajosList' + '?' + $('#formEscalafon').serialize();
               axios.post(url).then((response) => {
                     // console.log(response.data.archivo)
                     if (response.data[0] == "error") {
                        $('#error_buscar1').text('');
                        // ( typeof response.data.archivo != "undefined" )? $('#error1').text('cargar archivo') && $('#archivo').focus() : null;
                        (typeof response.data.tipoDocumento != "undefined") ? $('#error_buscar1').text(response.data.tipoDocumento): null;
                     }else if(response.data["estado"] =="documento no registrado"){
                        M.toast({html: 'DOCUMENTO NO REGISTRADO', classes: 'rounded'}); 
                           // console.log('no registrado');
                     }else if(response.data["estado"] =="documento  no tiene legajo"){
                                    M.toast({html: 'DOCUMENTO NO CUENTA CON LEGAJO', classes: 'rounded'}); 
                     }else if(response.data["estado"] =="documento tiene legajo"){
                           M.toast({html: 'DOCUMENTO ENCONTRADO', classes: 'rounded'}); 
                        let arrayDatos = response.data[0];
                        this.pintarArrayTabla(arrayDatos); //funcion para cargar lso datos en la tabla
                        
                     }else if(response.data["estado"] =="lista de nombre y apellidos"){
                        M.toast({html: 'BUSQUEDA EXITOSA DEL NOMBRE Y APELLIDOS', classes: 'rounded'}); 
                        let arrayDatos = response.data[0];
                        this.pintarArrayTabla(arrayDatos); //funcion para cargar lso datos en la tabla

                     }else if(response.data["estado"] =="lista de nombres"){
                        M.toast({html: 'BUSQUEDA EXITOSA DEL NOMBRE', classes: 'rounded'}); 
                        let arrayDatos = response.data[0];
                        this.pintarArrayTabla(arrayDatos); //funcion para cargar lso datos en la tabla

                     }else if(response.data["estado"] =="lista de apellidos"){
                        M.toast({html: 'BUSQUEDA EXITOSA DE LOS APELLIDOS', classes: 'rounded'}); 
                        let arrayDatos = response.data[0];
                        this.pintarArrayTabla(arrayDatos); //funcion para cargar lso datos en la tabla

                     }else { 
                        M.toast({html: 'LISTADO GENERAL DE VENDEDORES', classes: 'rounded'}); 
                        let arrayDatos = response.data[0];
                        this.pintarArrayTabla(arrayDatos); //funcion para cargar lso datos en la tabla 
                     }
                     
					})
					.catch((err) => {
						console.log(err)
					});


			}, 
         activarSidebar(){
         // console.log('ingreso a gestionar trabajador ',id);
         	var ruta ='/sidebar/activar';
		      var idTrabajador = $('#idTrabajador').val() ;


					 axios.post( ruta,{ 
                    'trabajador': idTrabajador
                }).then(function (response) { 
								var sidebar = document.getElementsByClassName("bold");
									// console.log('elemento :' , sidebar.length);
								for (let index = 2; index < sidebar.length; index++) {
										document.getElementsByClassName("bold")[index].style.display = "block";
								}
								document.getElementsByClassName("separador")[0].style.display = "block";
                }).catch(function (error) {
                    console.log(error);
                }); 

         },
         pintarArrayTabla(array ){
         //   this.limpiarTabla();//eliminamos los datos de la tabla

            var table = $('#data-table-simple').DataTable();
            table.destroy();//eliminamos los estilos y datos cargados en la tabla 
            document.getElementById("tbodyTabla01").innerHTML = "";
            let  contadorEleemntos=0;
              array.forEach(elemento => { 
                  // console.log(elemento);
                          contadorEleemntos +=1;
                          $("#data-table-simple").append( 
                           '<tr id="'+elemento['apellidos']+'" >'+
                              '<td>'+contadorEleemntos+'</td>'+
                              '<td> '+elemento['nro_documento']+'</td>'+
                              '<td>'+elemento['nombre']+' '+elemento['apellidos']+'</td>'+
                              '<td>'+elemento['area_trabajador']+' </td>'+
                              '<td>'+elemento['cargo']+' </td>'+
                              '<td>'+elemento['situacion_laboral']+' </td>'+
                              '<td>'+elemento['regimen_laboral']+' </td>'+
                              // '<td>'+elemento['legajo_numero']+' </td>'+
                              	'<td><a href="'+elemento['legajo_URL']+'" target="_blank" rel="noopener noreferrer">' + elemento['legajo_numero'] + '</a></td>'+
                              '<td>'+elemento['legajo_lugar']+' </td>'+
                              '<td>'+elemento['legajo_folios']+' </td>'+
                              '<td>'+ 
                            '<a  class=" waves-effect waves-light grey lighten-5 tooltipped"  data-toggle="tooltip" title="GESTIONAR TRABAJADOR"  data-tooltip="Gestionar"'+  
                            ' onclick="gestionarTrabajador( '+elemento['id']+');"    >'+
               						 '<i class="material-icons grey-text text-darken-2">settings</i></a>'+
                              '</td>'+
                             '</tr>'
                           );  

              }); 

            $('#data-table-simple').DataTable({//cargamos los estilos a la tabla con los nuevos datos(tr) 
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
         limpiarTabla(){
               //limpiar los elemetos de la tabla 
                     var trs=$("#data-table-simple tbody tr").length; //obtenermos el numero de tr en la tabla  
                     //elimnamos los tr de la tabla 
                     for (var i = 0; i < trs; i++) {
                     $("#data-table-simple tbody tr:last").remove();
                     
                     } 
         }

		}
	}) 
 </script>