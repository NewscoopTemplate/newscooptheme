<!-

  Este seria el resultado de las busquedas...
  en principio, ya que no tenemos un diseño, lo mantenemos 'parecido' al template de las subsecciones..
-->

<div class="col-md-10">
  <div id="principal_busqueda">
    <h2>Resultados de noticias (cabecera temporal)</h2>
    {{ list_search_results length="5" order="bypublishdate desc" constraints="type is articulo" }}
      <div class="seccion_resultados">
        {{ $gimme->article->section }}
      </div>
      <div class="imagen_resultados">
        {{ if $gimme->article->has_image(1) }}
          <a title="{{ $gimme->article->name }}" href="{{ uri options="article" }}">
          <img src="{{ uri options="image 1 width 134"}}" alt="{{ $gimme->article->image->description }}" class="woo-image thumbnail">
          </a>
        {{ /if }}
      </div>
      
      <div class="seccion_resultados">
        {{ $gimme -> article -> section }}
      </div>
      <div class="cabecera_resultados">
        <h2>
          <a href="{{ uri options="article" }}" rel="bookmark" title="{{ $gimme->article->name }}">
          {{ $gimme -> article -> titular }}
          </a>
        </h2>
        <p class="detalles_resultados">
          {{ list_article_authors }}
            {{ $gimme->author->name }}
          {{ /list_article_authors }}
          :
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
        </p>

        <p>{{ $gimme->article->deck }}</p>

      </div>
      <div class="entradilla_resultados">
        {{ $gimme->article->entradilla }}
      </div>
      
      <hr>

    {{ if $gimme->current_list->at_end }}
    
      <div class="more_entries">
      <div class="alignleft">{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uripath options="template _tpl/search.tpl" }}?{{ urlparameters options="previous_items" }} ">&laquo; Entradas recientes</a>{{ /if }}</div>
      <div class="alignright">{{ if $gimme->current_list->has_next_elements }}<a href="{{ uripath options="template _tpl/search.tpl" }}?{{ urlparameters options="next_items" }}">Entradas antiguas &raquo;</a>{{ /if }}</div>
    {{ /if }}
    {{ /list_search_results }}
  </div>
  
  {{ if $gimme->prev_list_empty }}
    <div class="postinformation">No se han encontrado resultados
    </div>
  {{ /if }}
</div>
</div>
