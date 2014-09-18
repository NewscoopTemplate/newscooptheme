  <!--si no es nulo y coincide pintamos como subseccion-->
  {{ if isset($subseccion_filtrada) }}
  <div class="col-xs-2 col2">    
    {{ list_playlist_articles name="SubSeccionCol2" }}
      <div class="banner">
        <p><a href="http://{{ $gimme->article->enlace }}" target="_blank"><img src="{{url options="image 1"}}" /></a>
            </p>
      </div>
      {{ /list_playlist_articles}}

  {{ else }}<!-- si no existe la subseccion_filtrada -->
  <div class="col-xs-5 col2">
    {{ list_playlist_articles name="{{$gimme->section->name}}{{$gimme->section->number}}Col2" }}
        {{ $contadora=0 }}
        {{ list_article_topics }}
          {{ if $contadora == 0 }}
          {{ if in_array( $gimme -> topic -> name , $categorias)}}      
            {{ if $gimme -> article -> seccion_sin_foto || $gimme -> article -> seccion_sin_foto && $gimme -> article -> seccion_recorrido }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_col2 con_borde">          
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde  }}
                <div class="seccion_sin_recorrido_col2 fondo_gris">          
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ else }}
                <div class="seccion_sin_recorrido_col2 sin_borde">          
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ /if }}<!-- fin seccion_sin_recorrido  bordes y fondo gris -->
              
            {{elseif $gimme -> article -> seccion_recorrido && !$gimme -> article -> seccion_sin_foto }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_foto_col2 con_borde">
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
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
                                  <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                            <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                          {{ /if }}
                        {{ /list_article_images }}              
                    </div>
                    <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>
                </div><hr><!-- fin  seccion_recorrido_col2 -->   
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                <div class="seccion_con_recorrido_col2 fondo_gris">
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
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
                                  <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                            <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                          {{ /if }}
                        {{ /list_article_images }}              
                    </div>
                      <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>                  
                </div><hr>
              {{ else }}
                <div class="seccion_con_recorrido_col2 sin_borde">
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}                  
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
                  </a></p>
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
                                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                              <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                            {{ /if }}
                          {{ /list_article_images }}              
                      </div>
                      <div class="col-xs-7">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>                                              
                    {{ else }}
                      <div class="col-xs-12">                    
                        <p class="datos_articulos normal_font_1">
                        {{ list_article_authors }}
                        {{ $gimme->author->name|upper }} ::
                        {{ /list_article_authors }}
                         {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                        </p>
                        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                      </div>
                    {{ /if }}
                  </div>
                </div><hr>
              {{ /if }}
            {{ elseif $gimme->article->type_name=="banner"  }}<!-- trata los banners -->
              <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
              <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
              </a><hr>
            {{ else }}<!-- opcion por defecto si no se elije con recorrido o sin foto -->
                {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                <div class="seccion_sin_recorrido_foto_col2 con_borde">
                  <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
                  {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->count > 2}}
                        {{ if $gimme->current_list->at_beginning }}
                          <div class="contenedor_imagen">
                            <div class="imagen">
                              <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                        <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                      {{ /if }}                  
                    {{ /list_article_images }}
                    <p class="normal_font_2" >
                      {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
                  {{ /if }}<!-- fin ligthbox --> 
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                <div class="seccion_sin_recorrido_foto_col2 fondo_gris">
                  {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->count > 2}}
                        {{ if $gimme->current_list->at_beginning }}
                          <div class="contenedor_imagen">
                            <div class="imagen">
                              <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                        <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                      {{ /if }}                  
                    {{ /list_article_images }}
                    <p class="normal_font_2" >
                      {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
                  {{ /if }}<!-- fin ligthbox -->  
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                </div><hr>
              {{ else }}
                <div class="seccion_sin_recorrido_foto_col2 sin_borde">
                  {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->count > 2}}
                        {{ if $gimme->current_list->at_beginning }}
                          <div class="contenedor_imagen">
                            <div class="imagen">
                              <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" ></a>
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
                        <a href="{{ uri options="article"}}"><img src="{{url options="image 1"}}" /></a>
                      {{ /if }}                  
                    {{ /list_article_images }}
                    <p class="normal_font_2" >
                      {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>          
                  {{ /if }}<!-- fin ligthbox --> 
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}   
                  <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name|upper }} ::
                  {{ /list_article_authors }}
                   {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
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
                  <p class="semibold_font_3">{{ $gimme -> article -> titular }}</p>
                  <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="width:100%; height:250px;" /></a>              
              </div>
          {{ else }}
               <div class="item">
                     <p class="semibold_font_3">{{ $gimme -> article -> titular }}</p>
                  <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="width:100%; height:250px;" /></a>              
               </div>
         {{ /if }}
         {{ $contador_slider=$contador_slider+1 }}
         {{ /list_playlist_articles }}
        
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div><hr><!-- fin carrusel -->
  {{ /if }}  
{{ /if }}  
</div>
