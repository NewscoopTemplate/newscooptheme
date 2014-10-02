{{* Con recorrido y Sin foto *}}
{{* Esto es un oximoron, porque si no tiene foto, da igual que tenga recorrido o no *}}
{{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
<div class="portada_con_recorrido_col1 con_borde">
  <p class="semibold_font_3">
  <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a></p>             
  <p class="semibold_font_2">
  	<a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
  </p>
  <div class="row">
    {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
      <div class="col-xs-5">
        <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
          {{ list_article_images }}
            {{if $gimme->current_list->count > 2}}
              {{ if $gimme->current_list->at_beginning }}                        
                <div class="contenedor_imagen">
                  <div class="imagen">
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                    
                    {{ image rendition="portada_cuadrada" }}
                      <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                    {{ /image }}
                    
                  </div>
                  <div class="icono">
                    <img src="{{ url static_file='dummy/rrss/camera-icon-th.png' }}" />
                  </div>                         
                </div>                        
              {{ else }}
              <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>             
              {{ /if }}
            {{ else }}
              <a href="{{ uri options="article"}}">
            
              {{ image rendition="portada_cuadrada" }}
                {{ if $gimme->current_list->at_beginning }}
                  <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                {{ /if }}
              {{ /image }}
            
              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="width:150px;" /></a>
              {{ /if }}
          {{ /list_article_images }}
      </div>
      <div class="col-xs-7">
        <p class="datos_articulos normal_font_1"> 
        {{ list_article_authors }}
        {{ $gimme->author->name|upper }}, 
        {{ /list_article_authors }}
        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}</p>
        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
      </div>
    {{ else }}<!-- si no hay imagen y la entradilla esta vacia -->
      <div class="col-xs-12">
        <p class="datos_articulos normal_font_1"> 
        {{ list_article_authors }}
        {{ $gimme->author->name|upper }}, 
        {{ /list_article_authors }}
        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}</p>
        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
      </div>
    {{ /if }}<!-- fin si hay imagen y la entradilla es vacio -->
  </div>              
</div><!-- fin portada_recorrido_col1 con borde -->