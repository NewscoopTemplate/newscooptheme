<div class="articulo_recorrido_col1">
  {{ $indice=0 }}     
  <div class="subsecciones">     
    {{ list_article_topics }}  
      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
        {{ $indice = substr($gimme->topic->name,0,1) }}                     
        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
      {{/if }}<!-- fin del metodo strstr -->
    {{ /list_article_topics }}
  </div>      
  <p class="semibold_font_2">{{ $gimme->article->titular }}</p>
  <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
  <p class="datos_articulos normal_font_1">{{ list_article_authors }}
  {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %m %Y" }}
  {{ if !$gimme->current_list->at_end }}, </p>{{ /if }}
  {{ /list_article_authors }}
  <div>
    <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
    {{ if $gimme->article->has_image(1) }}
      {{ list_article_images }}
        {{ if $gimme->current_list->count > 2}}
          {{ if $gimme->current_list->at_beginning }}
            <div class="contenedor_imagen">
              <div class="imagen">
                <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" style="float:left; margin-right:1%;" />
                {{ image rendition="articulo_vertical" }}
                  <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                {{ /image }}
              </div>
              <div class="icono">
                <img src="{{ url static_file='dummy/rrss/camera-icon-th.png' }}" />
              </div>                         
            </div>
          {{ else }}
            <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
          {{ /if }}<!-- fin de list->at_beginning -->
        {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
          {{ image rendition="articulo_vertical" }}
            {{ if $gimme->current_list->at_beginning }}
              <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" style="float: left; margin-right: 1%;" /></a>
            {{ /if }}
          {{ /image }}
        {{ /if }}<!-- fin del current_list->count -->                  
      {{ /list_article_images }}         
    {{ /if }}<!-- fin ligthbox -->
    <div class="texto_articulo">{{ $gimme->article->texto }}</div>
    {{ include file='_tpl/articles/redes_sociales.tpl' }}
  </div> 
<!-- cuando se cierra el if de la opcion articulo con recorrido del switch  se cerrara los divs correspondientes -->