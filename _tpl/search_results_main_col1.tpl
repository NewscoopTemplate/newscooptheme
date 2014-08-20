<!--

  Este seria el resultado de las busquedas...
  en principio, ya que no tenemos un diseño, lo mantenemos 'parecido' al template de las subsecciones..
-->

<div class="col-md-10 col1">
  <div id="principal_busqueda">

    <div class="estilo_busqueda_embebido">
        {{ include file='_tpl/search.tpl' }}
    </div>
      <div class="row">
        {{ list_search_results length="5" order="bypublishdate desc" constraints="type is articulo" }}
          <div class="col-md-3">
            <div class="imagen_resultados">
              {{ if $gimme->article->has_image(1) }}
                <a title="{{ $gimme->article->name }}" href="{{ uri options="article" }}">
                <img src="{{ uri options="image 1 "}}" alt="{{ $gimme->article->image->description }}" class="woo-image thumbnail"/>
                </a>
              {{ /if }}
            </div>
          </div>

          <div class="col-md-9">
            <div class="seccion_resultados">              
              <p class="semibold_font_3">
                <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>  
             </p>
            </div>

            <div class="cabecera_resultados">
              <h2>
              <a href="{{ uri options="article" }}" rel="bookmark" title="{{ $gimme->article->name }}" class="semibold_font_2">
                {{ $gimme -> article -> titular }}
                </a>
              </h2>
              <p class="datos_articulos normal_font_1"> 
              {{ list_article_authors }}
              {{ $gimme->author->name|upper }} ::
              {{ /list_article_authors }}
              {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
              <p>{{ $gimme->article->deck }}</p>
            </div>
            <div class="entradilla_resultados">
              <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
            </div><hr>
            {{ if $gimme->current_list->at_end }}            
              <div class="more_entries">
                <div class="alignleft">{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uripath options="template _tpl/search.tpl" }}?{{ urlparameters options="previous_items" }} ">&laquo; Entradas recientes</a>{{ /if }}</div>
                <div class="alignright">{{ if $gimme->current_list->has_next_elements }}<a href="{{ uripath options="template _tpl/search.tpl" }}?{{ urlparameters options="next_items" }}">Entradas antiguas &raquo;</a>{{ /if }}</div>
              </div>
            {{ /if }}
          </div> <!--fin columna 9-->
        {{ /list_search_results }}       
        {{ if $gimme->prev_list_empty }}
          <div class="postinformation">No se han encontrado resultados
          </div>
        {{ /if }}
      </div> <!--row fin-->

  </div>
</div>
