  <!--si no es nulo y coincide pintamos como subseccion-->
  {{ if isset($subseccion_filtrada) }}
  <div class="col-md-2 col2">
    <div class="banner">
      {{ list_playlist_articles name="SubSeccionCol2Banner" }}
        <p><a href="{{ $gimme->article->enlace }}" target="_blank"><img src="{{url options="image 1"}}" /></a>
            </p>
      {{ /list_playlist_articles}}
    </div>
  <!--
    {{ list_playlist_articles name="SubSeccionCol2" }}
     {{ list_article_topics }}
        
      {{ if $gimme -> topic -> name == {{ $subseccion_filtrada}} }}
        {{ if $gimme -> article -> subseccion_con_recorrido }}
          <div class="subseccion_con_recorrido_col2">
             <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
            <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>          
            <p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            </p>
            <p class="datos_articulos">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
             {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p>{{ $gimme->article->entradilla }}</p>
          </div>
        {{elseif $gimme -> article -> subseccion_sin_recorrido }}
          <div class="subseccion_sin_recorrido_col2">
            <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
            <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            <p class="datos_articulos">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
             {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p>{{ $gimme->article->entradilla }}</p>
          </div>
        {{ /if }}
      {{ /if }}
       {{ /list_article_topics }}
    {{ /list_playlist_articles }}
    -->
<!-- si es nulo pinta como seccion -->
  {{ else }}
  <div class="col-md-5 col2">
    {{ list_playlist_articles name="SeccionCol2"}}
        {{ $contadora=0 }}
        {{ list_article_topics }}
          {{ if $contadora == 0 }}
          {{ if in_array( $gimme -> topic -> name , $categorias)}}      
            {{ if $gimme -> article -> seccion_sin_recorrido }}
              <div class="seccion_sin_recorrido_col2">          
                 {{ $indice=0 }}     
                 {{ list_article_topics }}  
                {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                  {{ $indice = substr($gimme->topic->name,0,1) }}
                  <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_2">{{substr($gimme->topic->name|upper,2)}}</a>          
                {{/if }}
                {{ /list_article_topics }}
                <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                <p class="datos_articulos normal_font_1">
                {{ list_article_authors }}
                {{ $gimme->author->name|upper }} ::
                {{ /list_article_authors }}
                 {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                </p>
                <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p><hr>
              </div>
            {{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
              <div class="seccion_sin_recorrido_foto_col2">
                 <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
                 {{ $indice=0 }}     
                 {{ list_article_topics }}  
                  {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                    {{ $indice = substr($gimme->topic->name,0,1) }}
                    <a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_2">{{substr($gimme->topic->name|upper,2)}}</a>          
                  {{/if }}
                {{ /list_article_topics }}
                <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
                <p class="datos_articulos normal_font_1">
                {{ list_article_authors }}
                {{ $gimme->author->name|upper }} ::
                {{ /list_article_authors }}
                 {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
                </p>
                <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
              </div><hr>
            {{ /if }}    
        {{ $contadora=1 }}
                {{ /if }}              
            {{ /if}}              
          {{ /list_article_topics }}
    {{ /list_playlist_articles }}
  {{ /if }}
</div>
