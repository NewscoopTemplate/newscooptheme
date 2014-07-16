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
      {{ if $gimme -> article -> subseccion == {{ $subseccion_filtrada}} }}
        {{ if $gimme -> article -> subseccion_con_recorrido }}
          <div class="subseccion_con_recorrido_col2">
            <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
            <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>          
            <p><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            </p>
            <p class="datos_articulos">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
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
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p>{{ $gimme->article->entradilla }}</p>
          </div>
        {{ /if }}
      {{ /if }}
    {{ /list_playlist_articles }}
    -->
<!-- si es nulo pinta como seccion -->
  {{ else }}
  <div class="col-md-5 col2">
    {{ list_playlist_articles name="SeccionCol2"}}
      {{ if in_array($gimme -> article -> subseccion, $categorias) }} 
        {{ if $gimme -> article -> seccion_sin_recorrido }}
          <div class="seccion_sin_recorrido_col2">
            <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
            <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            <p class="datos_articulos">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p>{{ $gimme->article->entradilla }}</p><hr>
          </div>
        {{elseif $gimme -> article -> seccion_sin_recorrido_foto }}
          <div class="seccion_sin_recorrido_foto_col2">
            <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
            <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
            <a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a>
            <p class="datos_articulos">
            {{ list_article_authors }}
            {{ $gimme->author->name }} ::
            {{ /list_article_authors }}
            Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
            </p>
            <p>{{ $gimme->article->entradilla }}</p>
          </div><hr>
        {{ /if }}
      {{ /if}}
    {{ /list_playlist_articles }}
  {{ /if }}
</div>
