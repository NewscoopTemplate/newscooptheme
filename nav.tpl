<!--
	Aqui va la navegacion horizontal 
	
	Recordad que hay que hacer que detecte cuando cargamos la pagina
	de las secciones para que sepa que esta en esa seccion para los
	colores
-->
<style>
ul.nav {
	color: black;
}	
ul.nav li .nav_1 {
	border-bottom: 1px solid red;
}
ul.nav li .nav_2 {
	border-bottom: 1px solid gray;
}
ul.nav li .nav_1 .estoy, ul.nav li .nav_2 .estoy,.... {
	border-bottom: 5px;
}

</style>
<div class="col-md-12">
	<ul class="nav">
	<? $i=1 ?>
	{{ list_sections }}
		<li>
		if estoy== $seccion {
		<span class="nav_<?=$i? estoy">
		}
		<span class="nav_<?=$i?"><<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></span>
		<? i=i+1; ?>
		</li>
	{{ /list_sections }}
	</ul>
</div>
