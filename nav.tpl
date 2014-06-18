<!--
	Aqui va la navegacion horizontal 
-->
<div class="col-md-12">
	<ul class="nav nav-pills">
	{{ list_sections }}
		<li class="seccion">
		<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
		</li>
	{{ /list_sections }}
	</ul>
<<<<<<< HEAD
</div>
=======
</div>
>>>>>>> FETCH_HEAD
