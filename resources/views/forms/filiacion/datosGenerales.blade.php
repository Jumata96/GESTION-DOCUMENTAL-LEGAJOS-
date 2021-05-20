<div class="row  ">
	{{-- white --}}
	{{-- datos Personales  --}}
	<div class="col s12 m6 l12">
		<br>
		<div class="card">
			<div class="col s12 m12 l9">
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">assignment_ind</i>
						<input id="documentoD" name="documentoD" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="documentoD">Documento de identidad</label> 
					</div>
				</div>
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input id="nombre" name="nombre" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="nombre">Nombres</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input id="primerApellido" name="primerApellido" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="primerApellido">Primer Apellido</label> 
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input id="segundoApellido" name="segundoApellido" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
						<label for="segundoApellido">Segundo Apellido</label> 
					</div>
				</div>
				<div class="col s12 m6 l12">
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input id="estadoCivil" name="estadoCivil" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
						<label for="estadoCivil">Estado Civil</label>
						<div id="error4" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
					</div>
					<div class="input-field col s12 m6 l4">
						<i class="material-icons prefix active">chrome_reader_mode</i>
						<input id="sexo" name="sexo" type="text" data-error=".errorTxt1" onkeyup="mayus(this);">
						<label for="sexo">Sexo</label>
						<div id="error5" style="padding-left: 3rem; color: red; font-size: 12px; font-style: italic;"></div>
					</div>
				</div>
			</div>
			{{-- gestion de imagen --}}
			<div class=" col s12 m6 l3">
				<div class="row">
					<div class="file-field input-field col s12 l12">
						<div class="col s8 m8 l12 center" style="margin: auto; width: 100%">
							<img src="{{asset('images/avatar/perfil.jpg')}}" alt="" id="avatarImage" class="  responsive-img valign profile-image    " style="width: 100px">
						</div>
						<div class="file-field input-field col s12 l12 ">
							<div class="btn light-blue darken-1 col l12 ">
								<span>SUBIR</span>
								<input type="file" id="fotoPerfil" name="fotoPerfil" > 
							</div>
							<div class="file-path-wrapper col l12 ">
								<p class="right"><i>Tamaño recomendado 100 x 130px en formato JPG</i>
								</p>
								<div class="errorTxt1" id="h_error1" style="color: red; font-size: 12px; font-style: italic;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			{{-- gestion de imagen --}}

		</div>
	</div>
	{{-- datos Personales  --}}
	{{-- direccion principal --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>    Dirección principal</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">pin_drop</i>
					<input id="direccion" name="direccion" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="direccion">Dirección</label> 
				</div>
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">pin_drop</i>
					<input id="departamento" name="departamento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="departamento">Departamento/Provincia/Distrito</label>
				</div>
			</div>
		</div>
	</div>
	{{-- direccion principal --}}
	{{-- <span>    Fecha y lugar de nacimiento</span> --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>    Fecha y lugar de nacimiento</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l4">
					<i class="material-icons prefix active">add_location</i>
					<input id="fechaNacimiento" name="fechaNacimiento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="fechaNacimiento">Fecha de nacimiento</label> 
				</div>
				<div class="input-field col s12 m6 l4">
					<i class="material-icons prefix active">add_location</i>
					<input id="nacimientoPais" name="nacimientoPais" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="nacimientoPais">Pais</label>
				</div>
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">add_location</i>
					<input id="nacimientoDepartamento" name="nacimientoDepartamento" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="nacimientoDepartamento">Departamento/Provincia/Distrito</label>
				</div>
			</div>
		</div>
	</div>
	{{-- <span>    Fecha y lugar de nacimiento</span> --}}
	{{-- fallecido --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span> Fallecido</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l4">
					<i class="material-icons prefix active">add_to_photos</i>
					<input id="nombre" name="nombre" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="nombre">Fecha de fallecimiento</label> 
				</div>
			</div>
		</div>
	</div>
	{{-- fallecido --}}
	{{-- validado por reniec --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>    Validado por RENIEC</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l4">
					<div class="switch">
						<label>
						Off
						<input type="checkbox">
						<span class="lever"></span>
						On
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{-- validado por reniec --}}
	{{-- datos de contacto --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>  Datos de contato</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l3">
					<i class="material-icons prefix active">contact_phone</i>
					<input id="telefonoFijo" name="telefonoFijo" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="telefonoFijo">Teléfono fijo</label> 
				</div>
				<div class="input-field col s12 m6 l3">
					<i class="material-icons prefix active">contact_phone</i>
					<input id="telefonoMovil" name="telefonoMovil" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="telefonoMovil">Telefono móvil</label>
				</div>
			</div>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">contact_mail</i>
					<input id="correoLaboral" name="correoLaboral" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="correoLaboral">Correo Electronico Laboral</label>
				</div>
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">contact_mail</i>
					<input id="correoPersonal" name="correoPersonal" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="correoPersonal">Correo Electronico Personal</label>
				</div>
			</div>
		</div>
	</div>
	{{-- datos de contacto --}}
	{{-- datos de contacto de emergencia --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>    Datos de contacto en caso de emergencia</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l6">
					<i class="material-icons prefix active">person_pin</i>
					<input id="contactoNombre" name="contactoNombre" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="contactoNombre">Nombre</label> 
				</div>
				<div class="input-field col s12 m6 l3">
					<i class="material-icons prefix active">phone</i>
					<input id="contactoFijo" name="contactoFijo" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="contactoFijo">Telefono fijo</label>
				</div>
				<div class="input-field col s12 m6 l3">
					<i class="material-icons prefix active">phone</i>
					<input id="contactoMovil" name="contactoMovil" type="text" data-error=".errorTxt1"   onkeyup="mayus(this);">
					<label for="contactoMovil">Telefono movil</label>
				</div>
			</div>
		</div>
	</div>
	{{-- datos de contacto de emergencia --}}
	{{-- Licencia de FF.AA --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>   Licencia de FF.AA</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l4">
					<div class="switch" id="fuerzasArmadas">
						<label>
						Off
						<input type="checkbox">
						<span class="lever"></span>
						On
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{-- Licencia de FF.AA --}}
	{{-- datos de discapacidad --}}
	<div class="col s12 m6 l12">
		<div class="card">
			<span>   Datos de discapacidad</span>
			<div class="col s12 m6 l12">
				<div class="input-field col s12 m6 l4">
					<div class="switch" id="discapacidad">
						<label>
						Off
						<input type="checkbox">
						<span class="lever"></span>
						On
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{-- datos de discapacidad --}}
</div>