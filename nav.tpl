<div class="row">
	{{ $count=1 }}
	<div class="col-md-12">
		<ul class="menu_secciones">
		{{ list_sections }}						
			{{ if strstr({{ $smarty.server.REQUEST_URI }}, {{ uri options="section" }}) }}
			<li class="seccion nav_{{ $count }} estoy">
				<a  href="{{ uri options='section' }}">{{ $gimme->section->name|upper }}</a>
			{{ else }}
			<li class="seccion nav_{{ $count }}">
				<a  href="{{ uri options='section' }}">{{ $gimme->section->name|upper }}</a>
			{{ /if }}			
			</li>
			{{ $count=$count+1 }}
		{{ /list_sections }}
		</ul>
	</div>
</div>

<!-- ************************Fin del nav*******************************-->

