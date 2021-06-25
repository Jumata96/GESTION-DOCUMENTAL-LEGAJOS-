@extends('layouts2.app')
@section('titulo','Registro Empresa')

@section('main-content')

<div id="app">
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-header  ">
				<i class="fa fa-table fa-lg material-icons">receipt</i>
				<h2>RESOLUCIÓN  LABORAL</h2>
			</div>
			<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
				<div class="col s12 m12">
					<a  href="#modalAddSituacionLaboral" class="btn-floating waves-effect waves-light grey lighten-5 tooltipped modal-trigger"  data-position="top" data-delay="500" data-tooltip="BUSCAR">
					<i class="material-icons" style="color: #03a9f4">add</i>
					</a>
					<a style="margin-left: 6px"></a>       
					<a style="margin-left: 6px"></a>   
				</div>
			</div>
			<div class="row cuerpo"> 
            <div class="row">
      <div class="col s12 m12 l12">
        <div class="card-content" style="overflow-x:scroll">
          <table id="tablaSituacionLaboral" class="tablaCerti responsive-table display tabla centered" >
            <thead>
              <tr>
                <th>N°</th>
                <th>RESOLUCIONES</th>
                <th>DESCRIPCIONES</th>
                <th>FECHAS DE CREACION</th>  
                <th>ESTADO</th>
                <th class="center">ACCIONES</th>
              </tr> 
            </thead> 
            <tbody id="tbodySituacionLaboral"> 
              <tr>
                <td>N°</td>
                <td>RESOLUCIONES</td>
                <td>DESCRIPCIONES</td>
                <td>FECHAS DE CREACION</td>  
                <td>ESTADO</td>
                <td> 
                    <a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >
                    <i class="material-icons "  style="color:#dd2c00" data-tooltip="Eliminar"  >remove</i></a> 
                  

                    <a  class=" waves-effect waves-light grey lighten-5 tooltipped"  >
                    <i class="material-icons grey-text text-darken-2"  data-tooltip="Historial">archive</i></a> 
                </td>
              </tr> 
            </tbody>
          </table>
        </div>
      </div>
    </div>
			</div>
		</div>
	</div>
</div>
<br>

{{-- modals --}}
@include('forms.resolucionLaboral.scripts.alertaConfirmacionEliminar')
@include('forms.resolucionLaboral.scripts.alertaConfirmacionDesactivar')
@include('forms.resolucionLaboral.scripts.alertaConfirmacionHabilitar')
@include('forms.resolucionLaboral.modalAgregar')
@include('forms.resolucionLaboral.modalActualizar')
{{-- modals --}}


</div>

 
 
@endsection

@section('script')  
@include('forms.resolucionLaboral.scripts.vuejs')

@endsection 