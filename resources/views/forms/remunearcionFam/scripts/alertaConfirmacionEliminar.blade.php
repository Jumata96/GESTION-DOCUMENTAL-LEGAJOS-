<div id="modalEliminarCargoLaboral" class="modal" style="width: 500px">
	<input type="hidden" name="CargoLaboralCargo" id="CargoLaboralCargo">
	<div class="modal-content  red darken-3 white-text center">
		<p>Está seguro que desea eliminar este registro?</p>
	</div>
	<div class="modal-footer indigo lighten-4">
		<a class="waves-effectwaves-light btn-flat modal-action modal-close">Cancelar</a>
		<a v-on:click="eliminarCargoLaboral()"   id="eliminarNivelAcademico" class="waves-effect waves-light btn-flat modal-action modal-close">Aceptar</a>
	</div>
</div>