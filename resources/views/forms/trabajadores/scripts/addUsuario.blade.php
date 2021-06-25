
<script type="text/javascript">
    //------JPaiva--11-10-2018-------------GRABAR-----------------------------------
    
    $("#add").click(function(e){
        e.preventDefault();

        var data = $('#myForm').serializeArray();

        $.ajax({
            url: "{{ url('/trabajador/grabar') }}",
            type:"POST",
            beforeSend: function (xhr) {
                var token = $('meta[name="csrf-token"]').attr('content');

                if (token) {
                      return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                }
            },
           type:'POST',
           url:"{{ url('/trabajador/grabar') }}",
           data:data,

           success:function(data){
              
              if ( data[0] == "error") {
                ( typeof data.nro_documento != "undefined" )? $('#error1').text(data.nro_documento) : null;
                ( typeof data.nombre != "undefined" )? $('#error3').text(data.nombre) : null;
                ( typeof data.apellidos != "undefined" )? $('#error4').text(data.apellidos) : null;
                ( typeof data.email != "undefined" )? $('#error6').text(data.email) : null;
                ( typeof data.password != "undefined" )? $('#error7').text(data.password) : null;
                ( typeof data.idtipo != "undefined" )? $('#error8').text(data.idtipo) : null;
                ( typeof data.idempresa != "undefined" )? $('#error_empresa').text(data.idempresa) : null; 
                ( typeof data.tipoTrabajador != "undefined" )? $('#error_tipoTrabajador').text(data.tipoTrabajador) : null; 
                ( typeof data.situacionLaboral != "undefined" )? $('#error_situacionLaboral').text(data.situacionLaboral) : null; 
                ( typeof data.regimenLaboral != "undefined" )? $('#error_regimenLaboral').text(data.regimenLaboral) : null; 
                ( typeof data.cargo != "undefined" )? $('#error_cargo').text(data.cargo) : null; 
                ( typeof data.areaLaboral  != "undefined" )? $('#error_areaLaboral').text(data.areaLaboral) : null; 
                ( typeof data.idSexo  != "undefined" )? $('#error_sexoLaboral').text(data.idSexo) : null; 

              } else {   

                //alert(data.success);
                window.location="{{ url('/trabajadores') }}";

              }
              
           },

           error:function(){ 
              alert("error!!!!");
        }
        });
  });

    
</script>







