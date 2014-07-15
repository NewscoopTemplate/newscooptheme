<!--
Esto hay que cambiarlo con lo nuevo
-->
<div class="col-md-2 col3">
	<div class="menu_seccion_{{ $gimme->section->number }}">
		{{ foreach from=$categorias item=categoria name=ultimo }}
			{{ $gimme -> article -> subseccion }}
				{{ if $smarty.foreach.ultimo.last}}
					<li><a href="{{ uri options='section' }}?subseccion={{ $categoria }}" title="Ver noticias de subseccion {{$categoria}}">
					{{ $categoria|upper }}</a></li>
				{{ else }}
					<li class="link_{{ $gimme->section->number }}">
					<a href="{{ uri options='section' }}?subseccion={{ $categoria }}" title="Ver noticias de subseccion {{$categoria}}">
					{{ $categoria|upper }}</a></li>
				{{ /if }}		
		{{ /foreach }}
	</div>
	<div class="blog">
		<table>
			<tr>
				<th>
					NUESTROS BLOGS
				</th>
			</tr>
			{{ list_articles constraints="type is enlace" }}
				{{ list_playlist_articles name="Blog" }}
					{{ if $gimme->current_list->at_end }}					
						<tr class="ultimo">
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ else }}
						<tr>
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ /if }}
				{{ /list_playlist_articles }}
			{{ /list_articles }}			
		</table>
	</div>
	<div class="blog_menu">
		<table>
			<tr>
				<th>
					LA CIUDAD CERCA DE TI
				</th>
			</tr>
			{{ list_articles constraints="type is enlace" }}
				{{ list_playlist_articles name="Interes" }}
					{{ if $gimme->current_list->at_end }}					
						<tr class="ultimo">
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ else }}
						<tr>
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ /if }}
				{{ /list_playlist_articles }}
			{{ /list_articles }}			
		</table>
	</div>
</div>
