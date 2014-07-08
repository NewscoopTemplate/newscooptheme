<div class="col-md-5 col1">
	<!--si no es nulo y coincide pintamos como subseccion-->
	{{ if isset($subseccion_filtrada) }}
		{{ list_playlist_articles name="SubSeccionCol1" }}
			{{ if $gimme -> article -> subseccion == {{ $subseccion_filtrada}} }}
				{{ if $gimme -> article -> subseccion_con_recorrido }}
					<div class="subseccion_con_recorrido_col1">
						<div class="row">
							<div class="col-md-5">
								<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
							</div>
							<div class="col-md-7">
								<p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
								<p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
								<p class="datos_articulos">
								{{ list_article_authors }}
								{{ $gimme->author->name }} ::
								{{ /list_article_authors }}
								Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
								</p>
								<p>{{ $gimme->article->entradilla }}</p>
							</div>
						</div>					
					</div>
					{{elseif $gimme -> article -> subseccion_sin_recorrido }}
					<div class="subseccion_sin_recorrido_col1">
						<p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
						<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
						<p class="datos_articulos">
						{{ list_article_authors }}
						{{ $gimme->author->name }} ::
						{{ /list_article_authors }}
						Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
						</p>
						<p>{{ $gimme->article->entradilla }}</p>
					</div>
				{{ /if }}
			{{ /if }}
		{{ /list_playlist_articles }}
<!-- si es nulo pinta como seccion -->
	{{ else }}
		{{ list_playlist_articles name="SeccionCol1"}}
			{{ if in_array($gimme -> article -> subseccion, $categorias)}}
				{{ if $gimme -> article -> seccion_con_recorrido }}
					<div class="seccion_con_recorrido_col1">
						<div class="row">
							<div class="col-md-5">
								<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="200" heigth="400" />
							</div>
							<div class="col-md-7">
								<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
								<p class="datos_articulos">
								{{ list_article_authors }}
								{{ $gimme->author->name }} ::
								{{ /list_article_authors }}
								Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
								</p>
								<p>{{ $gimme->article->entradilla }}</p>
							</div>
						</div>					
					</div>

				{{elseif $gimme -> article -> seccion_sin_recorrido }}
					<div class="seccion_sin_recorrido_col1">
						<p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
						<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
						<p class="datos_articulos">
						{{ list_article_authors }}
							{{ $gimme->author->name }} ::
						{{ /list_article_authors }}
						Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
						</p>
						<p>{{ $gimme->article->entradilla }}</p><hr>
					</div>
				{{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
					<div class="seccion_sin_recorrido_foto_col1">
						<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
						<p class="nav_{{ $gimme->section->number }}">
						{{ $gimme->article->subseccion|upper }}</p>
						<p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
						<p class="datos_articulos">
						{{ list_article_authors }}
							{{ $gimme->author->name }} ::
						{{ /list_article_authors }}
						Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
						</p>
						<p>{{ $gimme->article->entradilla }}</p>
					</div><hr>
				{{ /if }}
			{{ /if}}
		{{ /list_playlist_articles }}
	{{ /if }}
</div>
