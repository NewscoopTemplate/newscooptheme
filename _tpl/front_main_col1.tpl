<div class="col-md-6">
	<div class="con_recorrido">
		{{ list_articles constraints="con_recorrido is on" }} 
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
