  <!--si no es nulo y coincide pintamos como subseccion-->
  {{ if isset($subseccion_filtrada) }}
  <div class="col-xs-2 col2">    
    {{ list_playlist_articles name="SubSeccionCol2Banner" }}
      <div class="banner">
        <p><a href="http://{{ $gimme->article->enlace }}" target="_blank"><img src="{{url options="image 1"}}" /></a>
            </p>
      </div>
      {{ /list_playlist_articles}}

  {{ else }}<!-- si no existe la subseccion_filtrada -->
  <div class="col-xs-5 col2">
    {{ list_playlist_articles name="Seccion{{$gimme->section->number}}Col2"}}
        {{ $contadora=0 }}
        {{ list_article_topics }}
          {{ if $contadora == 0 }}
          {{ if in_array( $gimme -> topic -> name , $categorias)}}      
            {{ if $gimme -> article -> seccion_sin_recorrido }}
              {{ if $gimme->article->con_borde_seccion }}
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
              {{ elseif $gimme->article->con_fondo_gris_seccion }}
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
              
            {{elseif $gimme -> article -> seccion_sin_recorrido_foto || $gimme->article->seccion_con_recorrido }}
              {{ if $gimme->article->con_borde_seccion }}
                <div class="seccion_sin_recorrido_foto_col2 con_borde">
                  <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                  {{ if $gimme->article->has_image(1) }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->at_beginning }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                      {{ else }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                      {{ /if }}
                    {{ /list_article_images }}
                  {{ else }}
                    <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                  {{ /if }}<!-- fin ligthbox -->
                  <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p> 
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
              {{ elseif $gimme->article->con_fondo_gris_seccion }}
                <div class="seccion_sin_recorrido_foto_col2 fondo_gris">
                  <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                  {{ if $gimme->article->has_image(1) }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->at_beginning }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                      {{ else }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                      {{ /if }}
                    {{ /list_article_images }}
                  {{ else }}
                    <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                  {{ /if }}<!-- fin ligthbox -->
                  <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p> 
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
                  <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                  {{ if $gimme->article->has_image(1) }}
                    {{ list_article_images }}
                      {{ if $gimme->current_list->at_beginning }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                      {{ else }}
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                        <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                      {{ /if }}
                    {{ /list_article_images }}
                  {{ else }}
                    <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                  {{ /if }}<!-- fin ligthbox -->
                  <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p> 
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
            {{ else }}<!-- trata los banners -->
              <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
              <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
              </a><hr>           
            {{ /if }}    
        {{ $contadora=1 }}
                {{ /if }}            
            {{ /if}}
          {{ /list_article_topics }}
    {{ /list_playlist_articles }}
    
    
      <!--slider: analiza cuatnos articulos hay en la lista "slider" y crea tantos sliders como haya -->
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
  
  
    <!-- <div class="banner">
    {{ list_playlist_articles name="SeccionCol2Banner" }}
      <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
      <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
      </a>
    {{ /list_playlist_articles }}
  </div> -->
  
  {{ /if }}  
</div>
