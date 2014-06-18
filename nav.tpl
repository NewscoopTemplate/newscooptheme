<!--
	Aqui va la navegacion horizontal 
	
	Recordad que hay que hacer que detecte cuando cargamos la pagina
	de las secciones para que sepa que esta en esa seccion para los
	colores
-->
<div class="col-md-12">
	<ul class="nav nav-pills">
	{{ list_sections }}
		<li class="seccion">
		<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
		</li>
	{{ /list_sections }}
	</ul>
</div>