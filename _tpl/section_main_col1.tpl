    <!--si no es nulo y coincide pintamos como subseccion-->
{{ if isset($subseccion_filtrada) }}
  <div class="col-md-8 col1">    
    {{ list_playlist_articles name="SubSeccionCol1" }}
     {{ list_article_topics }} 
       {{ if substr($gimme -> topic -> name,2) == {{ $subseccion_filtrada}} }} 
        {{ if $gimme -> article -> subseccion_con_recorrido }}
          <div class="subseccion_con_recorrido_col1">
            <div class="row">              
              <div class="col-md-7">              
                {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}            
                  <a href="{{ uri options='section' }}?subseccion={{ $gimme->topic->name }}" class="nav_{{ substr($gimme->topic->name,0,1) }} semibold_font_3">{{ substr($gimme->topic->name|upper,2) }}</a>          
                {{/if }}           
                <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                <p class="datos_articulos normal_font_1">
                {{ list_article_authors }}
                {{ $gimme->author->name }} ::
                {{ /list_article_authors }}
                Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                </p>
                <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
              </div>
              <div class="col-md-5">
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
              </div>
            </div>                  
          </div><!-- fin subseccion_con_recorrido_col1 -->
          <hr>
          {{elseif $gimme -> article -> subseccion_sin_recorrido }}
          <div class="subseccion_sin_recorrido_col1">
            {{ $indice=0 }}     
             {{ list_article_topics }}  
            {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
              {{ $indice = substr($gimme->topic->name,0,1) }}
              <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>          
            {{/if }}
            {{ /list_article_topics }}
            <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
            <p class="datos_articulos normal_font_1">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
          </div> <!-- fin subseccion_sin_recorrido_col1 -->
          <hr>
        {{ /if }}
      {{ /if }}
     {{ /list_article_topics }}
    {{ /list_playlist_articles }}
  </div><!-- fin col1 subseccion -->
<!-- si es nulo pinta como seccion -->
  {{ else }}
  <div class="col-md-5 col1">  
    {{ list_playlist_articles name="SeccionCol1"}}
    {{ $contadora=0 }}
      {{ list_article_topics }}
      {{ if $contadora == 0 }}
        {{ if in_array( $gimme -> topic -> name , $categorias)}}      
          {{ if $gimme -> article -> seccion_con_recorrido }}
            <div class="seccion_con_recorrido_col1">
              <div class="row">
                <div class="col-md-5">
                    <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
                <!-- aqui lo cortado -->
                </div>
                <div class="col-md-7">
                  {{ $indice=0 }}     
                  {{ list_article_topics }}  
                    {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                      {{ $indice = substr($gimme->topic->name,0,1) }}
                      <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>         
                    {{/if }}
                  {{ /list_article_topics }}                  
                  <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
                  </p>
                  <p class="datos_articulos normal_font_1">
                  {{ list_article_authors }}
                  {{ $gimme->author->name }} ::
                  {{ /list_article_authors }}
                  Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                  </p>
                  <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
                </div>
              </div>           
            </div><!-- fin  seccion_con_recorrido_col1 -->

          {{elseif $gimme -> article -> seccion_sin_recorrido }}
            <div class="seccion_sin_recorrido_col1">            
              {{ $indice=0 }}     
               {{ list_article_topics }}  
                {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                  {{ $indice = substr($gimme->topic->name,0,1) }}
                  <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>       
                {{/if }}
              {{ /list_article_topics }}             
              <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
              <p class="datos_articulos normal_font_1">
              {{ list_article_authors }}
                {{ $gimme->author->name }} ::
              {{ /list_article_authors }}
              Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
              </p>
              <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p><hr>
            </div><!-- fin seccion_sin_recorrido_col1-->
          {{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
            <div class="seccion_sin_recorrido_foto_col1">
               <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"/></a>
               {{ $indice=0 }}     
               {{ list_article_topics }}  
                {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                  {{ $indice = substr($gimme->topic->name,0,1) }}
                  <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>        
                {{/if }}
              {{ /list_article_topics }}
              <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
              <p class="datos_articulos normal_font_1">
              {{ list_article_authors }}
                {{ $gimme->author->name }} ::
              {{ /list_article_authors }}
              Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
              </p>
              <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
            </div><!-- fin seccion_sin_recorrido_foto_col1 --><hr>
          {{ /if }}
          {{ $contadora=1 }}
      {{ /if}}

{{ /if }} <!-- de la contadora -->
      
      {{ /list_article_topics }}
    {{ /list_playlist_articles }}
   </div><!-- fin col1 seccion -->
 {{ /if }}
