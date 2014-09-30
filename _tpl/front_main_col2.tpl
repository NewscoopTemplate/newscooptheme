<div class="col-xs-4 col2">
  {{ list_playlist_articles name="PortadaCol2" }}
    {{if $gimme -> article -> portada_sin_foto || $gimme->article->portada_sin_foto 
    && $gimme->article->portada_recorrido }}                                            
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris  }}
        <div class="portada_sin_recorrido_col2 con_borde">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }}, 
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_col2 fondo_gris">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }}, 
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_col2 sin_borde">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }}, 
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ /if }}
      
      <!-- fin if  portada_sin_recorrido -->

    {{elseif $gimme->article->portada_recorrido && !$gimme->article->portada_sin_foto }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_foto_col2 con_borde">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
            {{ list_article_images }}
              {{ if $gimme->current_list->count > 1 }}
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                      {{ image rendition="portada_horizontal" }}
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
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <a href="{{ uri options="article"}}">
                {{ image rendition="portada_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                  {{ /if }}
                {{ /image }}
              {{ /if }}                  
            {{ /list_article_images }}
            <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
          {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde}}
        <div class="portada_sin_recorrido_foto_col2 fondo_gris">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
            {{ list_article_images }}
              {{ if $gimme->current_list->count > 1 }}
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                      {{ image rendition="portada_horizontal" }}
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
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <a href="{{ uri options="article"}}">
                {{ image rendition="portada_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                  {{ /if }}
                {{ /image }}
              {{ /if }}                  
            {{ /list_article_images }}
            <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
          {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
        {{ else }}
          <div class="portada_sin_recorrido_foto_col2 sin_borde">
            <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
            {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
              {{ list_article_images }}
                {{ if $gimme->current_list->count > 1 }}
                  {{ if $gimme->current_list->at_beginning }}
                    <div class="contenedor_imagen">
                      <div class="imagen">
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                        {{ image rendition="portada_horizontal" }}
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
                {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                  <a href="{{ uri options="article"}}">
                  {{ image rendition="portada_horizontal" }}
                    {{ if $gimme->current_list->at_beginning }}
                      <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                    {{ /if }}
                  {{ /image }}
                {{ /if }}                  
              {{ /list_article_images }}
              <p class="normal_font_2" >
                {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
            {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->
    {{ elseif $gimme->article->type_name=="banner"  }}<!-- trata los banners -->
      <div class="banner"><small>Publicidad</small>
        <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
        {{ image rendition="portada_cuadrada" }}
          <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
        {{ /image }}
        </a>
      </div>
    {{ else }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_foto_col2 con_borde">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
            {{ list_article_images }}
              {{ if $gimme->current_list->count > 1 }}
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                      {{ image rendition="portada_horizontal" }}
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
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <a href="{{ uri options="article"}}">
                {{ image rendition="portada_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                  {{ /if }}
                {{ /image }}
              {{ /if }}                  
            {{ /list_article_images }}
            <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
          {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_foto_col2 fondo_gris">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
            {{ list_article_images }}
              {{ if $gimme->current_list->count > 1 }}
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                      {{ image rendition="portada_horizontal" }}
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
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <a href="{{ uri options="article"}}">
                {{ image rendition="portada_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                  {{ /if }}
                {{ /image }}
              {{ /if }}                  
            {{ /list_article_images }}
            <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
          {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
        {{ else }}
          <div class="portada_sin_recorrido_foto_col2 sin_borde">
            <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
            {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
              {{ list_article_images }}
                {{ if $gimme->current_list->count > 1}}
                  {{ if $gimme->current_list->at_beginning }}
                    <div class="contenedor_imagen">
                      <div class="imagen">
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                        {{ image rendition="portada_horizontal" }}
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
                {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                  <a href="{{ uri options="article"}}">
                  {{ image rendition="portada_horizontal" }}
                    {{ if $gimme->current_list->at_beginning }}
                      <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                    {{ /if }}
                  {{ /image }}
                {{ /if }}                  
              {{ /list_article_images }}
              <p class="normal_font_2" >
                {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
            {{ /if }}<!-- fin ligthbox -->
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
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->
    {{ /if }}
  {{ /list_playlist_articles }}  
  <!-- si la lista de slider_secion contiene imagenes muestra el carrousel sino no muestra nada -->
  {{$num_imagenes=0}}
  {{ list_playlist_articles name="slider_seccion"}}
    {{$num_imagenes=$gimme->current_list->count}}
  {{ /list_playlist_articles}}
  {{ if $num_imagenes > 0}}
    <!--slider: analiza cuantos articulos hay en la lista "slider" y crea tantos sliders como haya -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        {{ $contador_slider=0 }}
        {{ list_playlist_articles name="slider" }}
           {{ if $contador_slider == 0 }}
               <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
           {{ else }}
               <li data-target="#carousel-example-generic" data-slide-to="{{ $contador }}"></li>
           {{ /if }}
           {{ $contador_slider=$contador_slider+1 }}
         {{ /list_playlist_articles }}
      </ol>
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
         {{ $contador_slider=0 }}
         {{ list_playlist_articles name="slider" }}
         {{ if $contador_slider == 0 }}
               <div class="item active">
                        {{ list_images length="1" }}
                        {{ image rendition="portada_cuadrada" }}
                                <img src="{{ $image->src }}" alt="{{ $image->caption }}" style="width:100%;"/>
                        {{ /image }}
                        {{ /list_images }}
                  <div class="carousel-caption" style="background-color:rgba(0,0,0,0.5);">{{ $gimme -> article -> titular }}</div>
              </div>
              {{ $contador_slider=1 }}
        {{ else }}
             <div class="item">
                        {{ list_images length="1" }}
                        {{ image rendition="portada_cuadrada" }}
                                <img src="{{ $image->src }}" alt="{{ $image->caption }}" style="width:100%;"/>
                        {{ /image }}
                        {{ /list_images }}
                  <div class="carousel-caption" style="background-color:rgba(0,0,0,0.5);">{{ $gimme -> article -> titular }}</div>
              </div>
        {{ /if }}
        {{ /list_playlist_articles }}
        </div> <!-- fin slides -->
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div><!-- fin carrusel -->
  {{ /if }}
</div>
