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
<div class="col-md-4 col2">
	{{ list_playlist_articles name="PortadaCol2" }}
		{{if $gimme -> article -> portada_sin_recorrido }}
			<div class="portada_sin_recorrido_col2">
				<p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
				<p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
				<p  class="datos_articulos">
				{{ list_article_authors }}
				{{ $gimme->author->name|upper }} ::
				{{ /list_article_authors }}
				{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
				</p>
				<p>{{ $gimme->article->entradilla }}</p>
			</div><hr>
		{{elseif $gimme -> article -> portada_sin_recorrido_foto }}
			<div class="portada_sin_recorrido_foto_col2">
			<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
				<p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
				<p class="datos_articulos">
				{{ list_article_authors }}
				{{ $gimme->author->name|upper }} ::
				{{ /list_article_authors }}
				{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
				</p>
				<p>{{ $gimme->article->entradilla }}</p>
			</div><hr>
		{{ /if }}
	{{ /list_playlist_articles }}
</div>
