<!-- Sin recorrido con foto con borde -->
<!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
{{ if $gimme->article->has_image(1) }}
  <div class="img_sin_foto">
    {{ list_article_images }}
      {{ if $gimme->current_list->count > 2}}
        {{ if $gimme->current_list->at_beginning }}
          <div class="contenedor_imagen">
            <div class="imagen">
              <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
              {{ image rendition="portada_horizontal" }}
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
        {{ /if }}
      {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
        <a href="{{ uri options="article"}}">
        {{ image rendition="portada_horizontal" }}
          {{ if $gimme->current_list->at_beginning }}
            <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
          {{ /if }}
        {{ /image }}
      {{ /if }}                  
    {{ /list_article_images }}
    <p class="normal_font_2" >
      {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
  </div>
{{ /if }}<!-- fin ligthbox -->          
<div class="texto_sin_foto">
  <p class="semibold_font_3">
  <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
   </p>               
  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
  </a></p>
  <p class="datos_articulos normal_font_1">
  {{ list_article_authors }}
  {{ $gimme->author->name|upper }} ::
  {{ /list_article_authors }}
  {{ $gimme->article->publish_date|camp_date_format:"%e %m %Y" }}
  </p>
  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
</div>