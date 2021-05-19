@extends('layouts2.app')
@section('titulo','Gestión de Escalafon')
@section('main-content')


   {{-- <nav>
    <div class="nav-wrapper">
      <div class="col s12"> 
        <a href="#!" class="breadcrumb"> HOME</a>
        <a href="#!" class="breadcrumb">Second</a>
        <a href="#!" class="breadcrumb">Third</a>
      </div>
    </div>
  </nav> --}}




<br>
<div class="row">
<div class="col s12 m12 l12">
	<div class="card">
		<div class="card-header  ">
			<i class="fa fa-table fa-lg material-icons">receipt</i>
			<h2>APERTURA DE LEGAJO</h2>
		</div>
		<div class="card-header" style="height: 50px; padding-top: 5px; background-color: #f6f6f6">
			<div class="col s12 m12">
				<a class="btn-floating waves-effect waves-light grey lighten-5 tooltipped" href="#" data-position="top" data-delay="500" data-tooltip="BUSCAR">
				<i class="material-icons" style="color: #03a9f4">search</i>
				</a>
				<a style="margin-left: 6px"></a>       
        
         
				<a style="margin-left: 6px"></a>   
			</div>
		</div>
		<div class="row cuerpo">
			<div class="row" >
				<div class="col s12 m6 l12 ">
           <div class="col s12 m6 l12 card"> 
              <div class="col s12 m6 l12">
                <div class="col s12 m6 l4">
                  <label for="tipoDocumento">Tipo de documento</label>                 
                  <select class="browser-default" id="tipoDocumento" name="tipoDocumento" required>
                    <option value="" disabled selected="">Seleccione</option>
                  </select>
                  <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m6 l4">
                  <i class="material-icons prefix active">label_outline</i>
                  <input id="documento" name="documento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                  <label for="documento">Numero de documento</label>
                  <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
              </div>
              <div class="col s12 m6 l12">
                <div class="input-field col s12 m6 l4">
                  <i class="material-icons prefix active">label_outline</i>
                  <input id="apellidoP" name="apellidoP" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
                  <label for="apellidoP">Primer Apellidos</label>
                  <div id="error" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m6 l4">
                  <i class="material-icons prefix active">label_outline</i>
                  <input id="apellidoM" name="apellidoM" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
                  <label for="apellidoM">Segundo Apellido</label>
                  <div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
                <div class="input-field col s12 m6 l4">
                  <i class="material-icons prefix active">label_outline</i>
                  <input id="nombre" name="nombre" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
                  <label for="nombre">Nombres</label>
                  <div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                </div>
              </div>
            </div>
				</div>
				<div class="col s12 m6 l12">
					<ul class="collapsible">
            <li>
              <div class="collapsible-header"><i class="material-icons">arrow_drop_down</i>BUSQUEDA AVANZADA</div>
              <div class="collapsible-body z-index: 2 card">
                <div class="col s12 m6 l12 card   ">
                  <span>servidor</span>
                  <div class="col s12 m6 l12">
                    <div class="col s12 m6 l4">
                    <label for="condicionLaboral">Condición Laboral </label>                 
                    <select class="browser-default" id="condicionLaboral" name="condicionLaboral" required>
                      <option value="" disabled selected="">Seleccione</option>
                    </select>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div> 
                  <div class="col s12 m6 l4">
                    <label for="regimenLaboral">Regimen Laboral</label>                 
                    <select class="browser-default" id="regimenLaboral" name="regimenLaboral" required>
                      <option value="" disabled selected="">Seleccione</option>
                    </select>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>
                  <div class="input-field col s12 m6 l4">
                    <label for="codigoPaza">Código Plaza</label>
                    <i class="material-icons prefix active">label_outline</i>
                    <input id="codigoPaza" name="codigoPaza" type="text" data-error=".errorTxt1" placeholder=""   onkeyup="mayus(this);">
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>

                  </div>

                  
                </div>
                <div class="col s12 m6 l12   card">
                  <span>centro</span>
                  <div class="col s12 m6 l6">
                    <label for="dre">DRE</label>                 
                    <select class="browser-default" id="dre" name="dre" required>
                      <option value="" disabled selected="">Seleccione</option>
                    </select>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>

                  <div class="col s12 m6 l6">
                    <label for="ugel">UGEL</label>                 
                    <select class="browser-default" id="ugel" name="ugel" required>
                      <option value="" disabled selected="">Seleccione</option>
                    </select>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>
                  {{-- <div class="col s12 m6 l6">
                    <label for="idempresa">Código Modular IE</label>                 
                    <select class="browser-default" id="idempresa" name="idempresa" required>
                      <option value="" disabled selected="">Seleccione</option>
                    </select>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div> --}}
                  <div class="input-field col s12 m6 l6">
                    <i class="material-icons prefix active">search</i>
                    <input id="codigoModular" name="codigoModular" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                    <label for="codigoModular">Código Modular IE</label>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>
                   <div class="input-field col s12 m6 l6">
                    {{-- <i class="material-icons prefix active">label_outline</i> --}}
                    <input id="codigoLaboral" name="codigoLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
                    <label for="codigoLaboral">Centro Laboral</label>
                    <div id="error1" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
                  </div>

                </div>


              </div>
            </li> 
					</ul>
					</div>  
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<div class="row">
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="row cuerpo">
				<br>
				<div class="row">
					<div class="col s12 m12 l12">
						<div class="card-content">
							Existen 0 registros. <br><br>
							<table id="data-table-simple" class="responsive-table display" cellspacing="0">
								<thead>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>CENTRO LABORAL</th>
										<th>CONDICIÓN LABORAL</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>ACCIÓN</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>#</th>
										<th>DOCUMENTO</th>
										<th>APELLIDOS Y NOMBRES</th>
										<th>CENTRO LABORAL</th>
										<th>CONDICIÓN LABORAL</th>
										<th>SITUACIÓN LABORAL</th>
										<th>REGIMEN LABORAL</th>
										<th>ACCIÓN</th>
									</tr>
								</tfoot>
								<tbody>
                  <tr>
                    <td>1</td>
                    <td>75980586</td>
                    <td>CARLOS RAMIREZ TORRES</td>
                    <td>BAGUA</td>
                    <td>CONTRATADO</td>
                    <td>EN ACTIVO</td>
                    <td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
                    <td>
                      <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
													<i class="material-icons grey-text text-darken-2">settings</i></a>
                    </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>36584925</td>
                    <td>ARAUJO RAMOS WILIAMS</td>
                    <td>2066 SSEÑOR DE LOS MILAGROS</td>
                    <td>NOMBRADO</td>
                    <td>EN ACTIVO</td>
                    <td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
                    <td>
                      <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
													<i class="material-icons grey-text text-darken-2">settings</i></a>
                    </td>
                  </tr> 
                  <tr>
                    <td>3</td>
                    <td>06745787</td>
                    <td>CHAVEZ ROMERO FREDY</td>
                    <td>2066 SSEÑOR DE LOS MILAGROS</td>
                    <td>NOMBRADO</td>
                    <td>EN ACTIVO</td>
                    <td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
                    <td>
                      <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
													<i class="material-icons grey-text text-darken-2">settings</i></a>
                    </td>
                  </tr> 
                  <tr>
                    <td>4</td>
                    <td>40599574</td>
                    <td>HUAMAN DIAS ADRIAN</td>
                    <td>2066 SSEÑOR DE LOS MILAGROS</td>
                    <td>NOMBRADO</td>
                    <td>EN ACTIVO</td>
                    <td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
                    <td>
                      <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
													<i class="material-icons grey-text text-darken-2">settings</i></a>
                    </td>
                  </tr> 
                  <tr>
                    <td>5</td>
                    <td>17859654</td>
                    <td>RAMIREZ GILIO ISABEL</td>
                    <td>2066 SSEÑOR DE LOS MILAGROS</td>
                    <td>NOMBRADO</td>
                    <td>EN ACTIVO</td>
                    <td>LEY 299944 -LEY DE REFORMA MAGISTERIAL</td>
                    <td>
                      <a href="#" class=" waves-effect waves-light grey lighten-5 tooltipped"  >
													<i class="material-icons grey-text text-darken-2">settings</i></a>
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
@endsection