  <!--si no es nulo y coincide pintamos como subseccion-->
  {{* SI entramos en SUB-SECCION *}}
  {{ if isset($subseccion_filtrada) }}
  <div class="col-xs-2 col2">    
    {{* BANNER *}}
    {{ list_playlist_articles name="SubSeccionCol2" }}
      <div class="banner"><small>Publicidad</small>
        <a href="http://{{ $gimme->article->enlace }}" target="_blank">
        {{ image rendition="portada_cuadrada" }}
          <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
        {{ /image }}</p>
      </div>
      {{ /list_playlist_articles}}
  
  {{* ENTRAMOS en SECCION *}}
  {{ else }}<!-- si no existe la subseccion_filtrada -->
  <div class="col-xs-4 col2">
    {{ list_playlist_articles name="{{$gimme->section->name}}{{$gimme->section->number}}Col2" }}
        {{ $contadora=0 }}
        {{ list_article_topics }}
          {{ if $contadora == 0 }}
          {{ if in_array( $gimme -> topic -> name , $categorias)}}      
            {{ if $gimme -> article -> seccion_sin_foto || $gimme -> article -> seccion_sin_foto && $gimme -> article -> seccion_recorrido }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_col2 con_borde">          
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                  {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde  }}
                <div class="seccion_sin_recorrido_col2 fondo_gris">          
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                  {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ else }}
                <div class="seccion_sin_recorrido_col2 sin_borde">          
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                  {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ /if }}<!-- fin seccion_sin_recorrido  bordes y fondo gris -->
            
            {{* CON recorrido y SIN foto *}}
            {{elseif $gimme -> article -> seccion_recorrido && !$gimme -> article -> seccion_sin_foto }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_foto_col2 con_borde">
                  {{ $indice=0 }}     
                  <div class="subsecciones">     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}                     
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
                      {{/if }}
                    {{ /list_article_topics }}
                  </div>                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
                  <div class="row">
                    {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                    <div class="col-xs-5">
                      <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->              
                        {{ list_article_images }}
                          {{if $gimme->current_list->count > 1 }}
                            {{ if $gimme->current_list->at_beginning }}
                              <div class="contenedor_imagen">
                                <div class="imagen">
                                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                                  {{ image rendition="portada_vertical" }}
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
                            {{ image rendition="portada_vertical" }}
                              {{ if $gimme->current_list->at_beginning }}
                                <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                              {{ /if }}
                            {{ /image }}
                          {{ /if }}
                        {{ /list_article_images }}              
                    </div>
                    <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>
                </div><hr><!-- fin  seccion_recorrido_col2 -->   
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                <div class="seccion_con_recorrido_col2 fondo_gris">
                  {{ $indice=0 }}     
                  <div class="subsecciones">     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}                     
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
                      {{/if }}
                    {{ /list_article_topics }}
                  </div>                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
                  <div class="row">
                    {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                    <div class="col-xs-5">
                      <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->              
                        {{ list_article_images }}
                          {{if $gimme->current_list->count > 1 }}
                            {{ if $gimme->current_list->at_beginning }}
                              <div class="contenedor_imagen">
                                <div class="imagen">
                                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                                  {{ image rendition="portada_vertical" }}
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
                            {{ image rendition="portada_vertical" }}
                              {{ if $gimme->current_list->at_beginning }}
                                <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                              {{ /if }}
                            {{ /image }}
                          {{ /if }}
                        {{ /list_article_images }}              
                    </div>
                      <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>                  
                </div><hr>
              {{ else }}
                <div class="seccion_con_recorrido_col2 sin_borde">
                  {{ $indice=0 }}     
                  <div class="subsecciones">     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}                     
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
                      {{/if }}
                    {{ /list_article_topics }}
                  </div>                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
                  <div class="row">
                    {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                      <div class="col-xs-5">
                        <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->              
                          {{ list_article_images }}
                            {{if $gimme->current_list->count > 1 }}
                              {{ if $gimme->current_list->at_beginning }}
                                <div class="contenedor_imagen">
                                  <div class="imagen">
                                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                                    {{ image rendition="portada_vertical" }}
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
                              {{ image rendition="portada_vertical" }}
                                {{ if $gimme->current_list->at_beginning }}
                                  <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                                {{ /if }}
                              {{ /image }}
                            {{ /if }}
                          {{ /list_article_images }}              
                      </div>
                      <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }}, 
                        {{ /list_article_authors }}
                        {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>
                </div><hr>
              {{ /if }}
            
            {{* BANNERS *}}
            {{ elseif $gimme->article->type_name=="banner"  }}<!-- trata los banners -->
            <div class="banner"><small>Publicidad</small>
              <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
              {{ image rendition="portada_cuadrada" }}
                <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
              {{ /image }}
            </div>              
            {{ else }}<!-- opcion por defecto si no se elije con recorrido o sin foto -->
                
                {{* CON borde o (CON borde y GRIS) *}}
                {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_foto_col2 con_borde">
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              
              {{* GRIS y SIN border *}}
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                <div class="seccion_sin_recorrido_foto_col2 fondo_gris">
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ else }}
                <div class="seccion_sin_recorrido_foto_col2 sin_borde">
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
                  {{ $gimme->author->name|upper }}, 
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ /if }}          
            {{ /if }}    
        {{ $contadora=1 }}
                {{ /if }}            
            {{ /if}}
          {{ /list_article_topics }}
    {{ /list_playlist_articles }}

  {{* SLIDESHOW *}}
  {{$num_imagenes=0}}
  {{ list_playlist_articles name="slider_seccion"}}
    {{$num_imagenes=$gimme->current_list->count}}
  {{ /list_playlist_articles}}
  {{ if $num_imagenes > 0}}  
     <!--slider: analiza cuatnos articulos hay en la lista "slider" y crea tantos sliders como haya -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        {{ $contador_slider=0 }}
        {{ list_playlist_articles name="slider_seccion" }}
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
         {{ list_playlist_articles name="slider_seccion" }}
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
{{ /if }}  
</div>
