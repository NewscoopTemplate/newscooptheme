<div class="subseccion_sin_recorrido_col{{ $numero_columna }}">
	<p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
	<p class="datos_articulos normal_font_1">
	{{ list_article_authors }}
	{{ $gimme->author->name|upper }} ::
	{{ /list_article_authors }}
	 {{ $gimme->article->publish_date|camp_date_format:"%e %m %Y" }}
	</p>
	<p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
</div><hr> <!-- fin subseccion_sin_recorrido_col1 -->