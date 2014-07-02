<div class="row">
	{{ $count=1 }}
	<div class="col-md-12">
		<ul class="menu_secciones">
		{{ list_sections }}
			<li class="seccion nav_{{ $count }}">			
			{{ if strstr({{ $smarty.server.REQUEST_URI }}, {{ uri options="section" }}) }}
				<a  href="{{ uri options='section' }}" class="estoy">{{ $gimme->section->name }}</a>
			{{ else }}
				<a  href="{{ uri options='section' }}">{{ $gimme->section->name }}</a>
			{{ /if }}			
			</li>
			{{ $count=$count+1 }}
		{{ /list_sections }}
		</ul>
	</div>
</div>

<!-- ************************Fin del nav*******************************-->

