
<script type="text/javascript">
    //------JPaiva--11-10-2018-------------GRABAR-----------------------------------
    
    $("#upd").click(function(e){
        e.preventDefault();

        var data = $('#myForm').serializeArray();

        $.ajax({
            url: "{{ url('/trabajador/actualizar') }}",
            type:"POST",
            beforeSend: function (xhr) {
                var token = $('meta[name="csrf-token"]').attr('content');

                if (token) {
                      return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                }
            },
           type:'POST',
           url:"{{ url('/trabajador/actualizar') }}",
           data:data,

           success:function(data){
              
              if ( data[0] == "error") {
                ( typeof data.nro_documento != "undefined" )? $('#error1').text(data.nro_documento) : null;
                ( typeof data.nombre != "undefined" )? $('#error3').text(data.nombre) : null;
                ( typeof data.apellidos != "undefined" )? $('#error4').text(data.apellidos) : null;
                ( typeof data.usuario != "undefined" )? $('#error5').text(data.usuario) : null;
                ( typeof data.email != "undefined" )? $('#error6').text(data.email) : null;
                ( typeof data.situacionLaboral != "undefined" )? $('#error_situacionLaboral').text(data.situacionLaboral) : null; 
                ( typeof data.regimenLaboral != "undefined" )? $('#error_regimenLaboral').text(data.regimenLaboral) : null; 
                ( typeof data.cargo != "undefined" )? $('#error_cargo').text(data.cargo) : null; 
                ( typeof data.areaLaboral  != "undefined" )? $('#error_areaLaboral').text(data.areaLaboral) : null; 
                ( typeof data.idSexo  != "undefined" )? $('#error_sexoLaboral').text(data.idSexo) : null; 
                ( typeof data.idempresa  != "undefined" )? $('#error_idempresa').text(data.idempresa) : null;  
                ( typeof data.tipoTrabajador  != "undefined" )? $('#error_idtipo').text(data.tipoTrabajador) : null; 
              } else {   

                //alert(data.success);
                @if(Auth::user()->idtipo == 'ADM')
                  window.location="{{ url('/trabajadores') }}";
                @else
                  setTimeout(function() {
                    M.toast({ html: '<span>Registro actualizado</span>'});
                  }, 2000);  
                @endif
              }
              
           },

           error:function(){ 
              alert("error!!!!");
        }
        });
  });

    
</script>


