<!-

	Todo esto hay que hacerlo leyendo unicamente la lista en cuestion
	Es decir, tiene que haber una lista para esta columna
	Y al recorrer ella, a traves de
	{if} {elseif} {else}
	y comprobando la propiedad "con_recorrido", "con_recorrido_foto"... esta on/true
	lo mostramos en el div determinado
	
	Asi lo que estamos haciendo es mostrar todos, pero ellos no pueden elegir
	en que columna sale.
	Ademas, ellos, al colocar el articulo en la lista podran elegir como sale

->
<div class="col-md-6">
	<div class="con_recorrido">
		{{ list_articles constraints="con_recorrido is on" }} 
		{{ list_articles contraints="portada_col_1" }}
		
		{{ if $gimmie -> article -> con_recorrido is on }}
			<div class="con_recorrido">
			</div>
		{{ /if }}
		
		{{ if $gimmie -> article -> sin_recorrido is on }}
			<div class="con_recorrido">
			</div>
		{{ /if }}

		
	    <p><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  width="200" heigth="400" />
	    {{ $gimme->article->subseccion }}
		<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
		</p>	 
		<p>
		{{ list_article_authors }}
		{{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
		{{ /list_article_authors }}
		 Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
		</p>
		<p>{{ $gimme->article->entradilla }}</p><br><hr>
		{{ /list_articles }}
	</div>
	<hr>
	<div class="sin_recorrido_foto">
		{{ list_articles constraints="sin_recorrido_foto is on" }} 
		<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  width="300" heigth="150" />
	    <p>
	    {{ $gimme->article->subseccion }}
		<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
		</p>	 
		<p>
		{{ list_article_authors }}
		{{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
		{{ /list_article_authors }}
		 Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
		</p>
		<p>{{ $gimme->article->entradilla }}</p><br>
		{{ /list_articles }}
	</div>
	<hr>
	<div class="sin_recorrido">
		{{ list_articles constraints="sin_recorrido is on" }} 
	    <p>
	    {{ $gimme->article->subseccion }}</p>
		<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>	 
		<p>
		{{ list_article_authors }}
		{{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
		{{ /list_article_authors }}
		 Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
		</p>
		<p>{{ $gimme->article->entradilla }}</p><br>
		{{ /list_articles }}
	</div>	
	<hr>
</div>
