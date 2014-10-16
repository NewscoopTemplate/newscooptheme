<div class="seccion_sin_recorrido_col{{ $numero_columna }} con_borde">            
  {{ $indice=0 }}
  <div class="subsecciones">
    {{ list_article_topics }}  
      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
        {{ $indice = substr($gimme->topic->name,0,1) }}
        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>            
      {{/if }}
    {{ /list_article_topics }}
  </div>                              
  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
  <p class="datos_articulos normal_font_1">
  {{ list_article_authors }}
    {{ $gimme->author->name|upper }} ::
  {{ /list_article_authors }}
   {{ $gimme->article->publish_date|camp_date_format:"%e %m %Y" }}
  </p>
  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
</div><hr><!-- fin seccion_sin_recorrido_col1-->