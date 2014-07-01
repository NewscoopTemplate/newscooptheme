<!--

Todo esto hay que hacerlo leyendo unicamente la lista en cuestion
Es decir, tiene que haber una lista para esta columna
Y al recorrer ella, a traves de
{if} {elseif} {else}
y comprobando la propiedad "con_recorrido", "con_recorrido_foto"... esta on/true
lo mostramos en el div determinado
Asi lo que estamos haciendo es mostrar todos, pero ellos no pueden elegir
en que columna sale.
Ademas, ellos, al colocar el articulo en la lista podran elegir como sale

-->
<div class="col-md-6">
	{{ list_playlist_articles name="PortadaCol1" }}
		{{ if $gimme -> article -> portada_con_recorrido }}
			<div class="portada_con_recorrido_col1">
				<div class="row">
					<div class="col-md-5">
						<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />	
					</div>
					<div class="col-md-7">
						<p>{{ $gimme->article->subseccion }}<br>
						<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p><p>	
						{{ list_article_authors }}
						{{ $gimme->author->name }} ::
						{{ /list_article_authors }}
						Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
						<p>{{ $gimme->article->entradilla }}</p><br>
					</div>
				</div>							
			</div>

		{{elseif $gimme -> article -> portada_sin_recorrido }}
			<div class="portada_sin_recorrido_col1">
			<p>
			{{ $gimme->article->subseccion }}</p><br>
			<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
			<p>
			{{ list_article_authors }}
			{{ $gimme->author->name }} ::
			{{ /list_article_authors }}
			Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
			</p>
			<p>{{ $gimme->article->entradilla }}</p>
			</div>
		{{elseif $gimme -> article -> portada_sin_recorrido_foto }}
			<div class="portada_sin_recorrido_foto_col1">
				<div class="img_sin_foto">
					<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  />
				</div>
				<div class="texto_sin_foto">
					<p>
					{{ $gimme->article->subseccion }}<br>
					<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
					</p>
					<p>
					{{ list_article_authors }}
					{{ $gimme->author->name }} ::
					{{ /list_article_authors }}
					Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
					</p>
					<p>{{ $gimme->article->entradilla }}</p>
				</div>
			
			</div>
		{{ /if }}
	{{ /list_playlist_articles }}
</div>
