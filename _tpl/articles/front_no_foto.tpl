{{* SIN foto o SIN foto y con recorrido *}}
{{* Esto es otro oximoron *}}
{{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}      
<div class="portada_sin_recorrido_col1 con_borde">
  <p class="semibold_font_3">
   <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
  </p>               
  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
  <p class="datos_articulos normal_font_1">
  {{ list_article_authors }}
  {{ $gimme->author->name|upper }}, 
  {{ /list_article_authors }}
  {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
  </p>
  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
</div>