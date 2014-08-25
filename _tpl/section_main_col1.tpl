  <!--si no es nulo y coincide pintamos como subseccion-->

{{ if isset($subseccion_filtrada) }}
  <div class="col-xs-8 col1"> 
    <p class="semibold_font_3 nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }} / {{ $subseccion_filtrada|upper }}</p>   
    {{ list_playlist_articles name="SubSeccionCol1" }}
             {{ $baliza=0 }} 
     {{ list_article_topics }} 
       {{ if substr($gimme -> topic -> name,2) == {{ $subseccion_filtrada}} }} 
        {{ if $gimme -> article -> subseccion_con_recorrido && $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
          <div class="subseccion_con_recorrido_col1">
            <div class="row">              
              <div class="col-xs-7">                        
                <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                <p class="datos_articulos normal_font_1">
                {{ list_article_authors }}
                {{ $gimme->author->name }} ::
                {{ /list_article_authors }}
                 {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                </p>
                <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
              </div>
              <div class="col-xs-5">
                <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                {{ if $gimme->article->has_image(2) }}
                  {{ list_article_images }}
                    {{ if $gimme->current_list->at_beginning }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                    {{ else }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                    {{ /if }}
                  {{ /list_article_images }}
                {{ else }}
                  <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                {{ /if }}<!-- fin ligthbox --> 
              </div>
            </div>                  
          </div><!-- fin subseccion_con_recorrido_col1 -->
          <hr>
        
      <!-- este ya no hace falta, pues es siempre de tipo: lista con foto y texto apaisado..-->
          {{ else }}
          <div class="subseccion_sin_recorrido_col1">
            <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
            <p class="datos_articulos normal_font_1">
            {{ list_article_authors }}
            {{ $gimme->author->name|upper }} ::
            {{ /list_article_authors }}
             {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
          </div> <!-- fin subseccion_sin_recorrido_col1 -->
          <hr>
        {{ /if }}
      {{ /if }}
     {{ /list_article_topics }}
    {{ /list_playlist_articles }}
  </div><!-- fin col1 subseccion -->
<!-- si es nulo pinta como seccion -->
  {{ else }}
  <div class="col-xs-5 col1">  
    {{ list_playlist_articles name="Seccion{{$gimme->section->number}}Col1"}}
    {{ $contadora=0 }}
      {{ list_article_topics }}
      {{ if $contadora == 0 }}
        {{ if in_array( $gimme -> topic -> name , $categorias)}}      
          {{ if $gimme -> article -> seccion_con_recorrido }}
            {{ if $gimme->article->con_borde_seccion }}
              <div class="seccion_con_recorrido_col1 con_borde">              
                <div class="row">
                  <div class="col-xs-5">
                    <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                    {{ if $gimme->article->has_image(2) }}
                      {{ list_article_images }}
                        {{ if $gimme->current_list->at_beginning }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                        {{ else }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                        {{ /if }}
                      {{ /list_article_images }}
                    {{ else }}
                      <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                    {{ /if }}<!-- fin ligthbox --> 
                  <!-- aqui lo cortado -->
                  </div>
                  <div class="col-xs-7">
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}                  
                    <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
                    </p>
                    <p class="datos_articulos normal_font_1">
                    {{ list_article_authors }}
                    {{ $gimme->author->name|upper }} ::
                    {{ /list_article_authors }}
                     {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                    </p>
                    <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                  </div>
                </div>           
              </div><hr><!-- fin  seccion_con_recorrido_col1 -->
            {{ elseif $gimme->article->con_fondo_gris_seccion }}
              <div class="seccion_con_recorrido_col1 fondo_gris">              
                <div class="row">
                  <div class="col-xs-5">
                    <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                    {{ if $gimme->article->has_image(2) }}
                      {{ list_article_images }}
                        {{ if $gimme->current_list->at_beginning }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                        {{ else }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                        {{ /if }}
                      {{ /list_article_images }}
                    {{ else }}
                      <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                    {{ /if }}<!-- fin ligthbox --> 
                  <!-- aqui lo cortado -->
                  </div>
                  <div class="col-xs-7">
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                        <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}                  
                    <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
                    </p>
                    <p class="datos_articulos normal_font_1">
                    {{ list_article_authors }}
                    {{ $gimme->author->name|upper }} ::
                    {{ /list_article_authors }}
                     {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                    </p>
                    <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                  </div>
                </div>           
              </div><hr><!-- fin  seccion_con_recorrido_col1 -->
            {{ else }}
              <div class="seccion_con_recorrido_col1 sin_borde">              
                <div class="row">
                  <div class="col-xs-5">
                    <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                    {{ if $gimme->article->has_image(2) }}
                      {{ list_article_images }}
                        {{ if $gimme->current_list->at_beginning }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                        {{ else }}
                        <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
                          <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                        {{ /if }}
                      {{ /list_article_images }}
                    {{ else }}
                      <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
                    {{ /if }}<!-- fin ligthbox --> 
                  <!-- aqui lo cortado -->
                  </div>
                  <div class="col-xs-7">
                    {{ $indice=0 }}     
                    {{ list_article_topics }}  
                      {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                        {{ $indice = substr($gimme->topic->name,0,1) }}
                          <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                      {{/if }}
                    {{ /list_article_topics }}                  
                    <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
                    </p>
                    <p class="datos_articulos normal_font_1">
                    {{ list_article_authors }}
                    {{ $gimme->author->name|upper }} ::
                    {{ /list_article_authors }}
                     {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                    </p>
                    <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
                  </div>
                </div>           
              </div><hr><!-- fin  seccion_con_recorrido_col1 -->
            {{ /if }}<!-- fin if seccion_con_recorrido bordes y fondo gris -->            

          {{elseif $gimme -> article -> seccion_sin_recorrido }}
            {{ if $gimme->article->con_borde_seccion }}
              <div class="seccion_sin_recorrido_col1 con_borde">            
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
              </div><hr><!-- fin seccion_sin_recorrido_col1-->
            {{ elseif $gimme->article->con_fondo_gris_seccion }}
              <div class="seccion_sin_recorrido_col1 fondo_gris">            
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
              </div><hr><!-- fin seccion_sin_recorrido_col1-->
            {{ else}}
              <div class="seccion_sin_recorrido_col1 sin_borde">            
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
              </div><hr><!-- fin seccion_sin_recorrido_col1-->
            {{ /if }}<!-- fin seccion_sin_recorrido bordes y fondos gris -->            

          {{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
            {{ if $gimme->article->con_borde_seccion }}
              <div class="seccion_sin_recorrido_foto_col1 con_borde">
                <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                {{ if $gimme->article->has_image(2) }}
                  {{ list_article_images }}
                    {{ if $gimme->current_list->at_beginning }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                    {{ else }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
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
              </div><hr><!-- fin seccion_sin_recorrido_foto_col1 -->
            {{ elseif $gimme->article->con_fondo_gris_seccion }}
              <div class="seccion_sin_recorrido_foto_col1 fondo_gris">
                <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                {{ if $gimme->article->has_image(2) }}
                  {{ list_article_images }}
                    {{ if $gimme->current_list->at_beginning }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                    {{ else }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
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
              </div><hr><!-- fin seccion_sin_recorrido_foto_col1 -->
            {{ else }}
              <div class="seccion_sin_recorrido_foto_col1 sin_borde">
                 <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
                {{ if $gimme->article->has_image(2) }}
                  {{ list_article_images }}
                    {{ if $gimme->current_list->at_beginning }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip">
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                    {{ else }}
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="roadtrip" >
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
              </div><hr><!-- fin seccion_sin_recorrido_foto_col1 -->
            {{ /if }}<!-- fin seccion_sin_recorrrido_foto bordes y fondo gris -->
            
          {{ /if }}<!-- switches de los articulos -->
          {{ $contadora=1 }}
      {{ /if}}

{{ /if }} <!-- de la contadora -->
      
      {{ /list_article_topics }}
    {{ /list_playlist_articles }}
   </div><!-- fin col1 seccion -->
 {{ /if }}
