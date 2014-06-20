<div class="col-md-4">
<!--si no es nulo y coincide pintamos como subseccion-->

{{ if $gimme -> article -> subseccion == {{ $subseccion_filtrada}}  }} 
  {{ list_playlist_articles name="SubSeccionCol1" }}
      {{ if $gimme -> article -> subseccion_con_recorrido }}
        <div class="subseccion_con_recorrido_col1">
            <p><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  width="200" heigth="400" />
            {{ $gimme->article->subseccion }}
            <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            </p>   
            <p>
            {{ list_article_authors }}
            {{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
            {{ /list_article_authors }}
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
          <p>{{ $gimme->article->entradilla }}</p><br><hr>
      </div>        
     {{elseif $gimme -> article -> subseccion_sin_recorrido }}
        <div class="subseccion_sin_recorrido_col1">
            <p>
            {{ $gimme->article->subseccion }}</p>
          <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>  
          <p>
          {{ list_article_authors }}
          {{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
          {{ /list_article_authors }}
           Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p>{{ $gimme->article->entradilla }}</p><br>
        </div>
      {{ /if }} 
  {{ /list_playlist_articles }}

     <!-- si es nulo pinta como seccion -->
{{ else if  {{ $subseccion_filtrada }} == ""}} 
{{ list_playlist_articles name="SeccionCol1" }}
  {{ if $gimme -> article -> seccion_con_recorrido }}
      <div class="seccion_con_recorrido_col1">
          <p><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  width="200" heigth="400" />
          {{ $gimme->article->subseccion }}
          <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
          </p>   
          <p>
          {{ list_article_authors }}
          {{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
          {{ /list_article_authors }}
          Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
        <p>{{ $gimme->article->entradilla }}</p><br><hr>
    </div>    

        
   {{elseif $gimme -> article -> seccion_sin_recorrido }}
      <div class="seccion_sin_recorrido_col1">
          <p>
          {{ $gimme->article->subseccion }}</p>
        <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>  
        <p>
        {{ list_article_authors }}
        {{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
        {{ /list_article_authors }}
         Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
        </p>
        <p>{{ $gimme->article->entradilla }}</p><br>
    
        </div>
  {{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
      <div class="seccion_sin_recorrido_foto_col1">
          <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  width="300" heigth="150" />
          <p>
          {{ $gimme->article->subseccion }}
        <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
        </p>   
        <p>
        {{ list_article_authors }}
        {{ $gimme->author->name }} ({{ $gimme->author->type|lower }})
        {{ /list_article_authors }}
         Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
        </p>
        <p>{{ $gimme->article->entradilla }}</p><br>
       </div>
    {{ /if }}  
{{ /list_playlist_articles }}
{{ /if }}
  </div>
