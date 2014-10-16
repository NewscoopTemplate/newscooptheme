  <!--si no es nulo y coincide pintamos como subseccion
  -Empezar la seccion 2  -->

{{ if isset($subseccion_filtrada) }}
  <div class="col-xs-8 col1"> 
    <p class="semibold_font_3 nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }} / {{ $subseccion_filtrada|upper }}</p>   
    {{ list_playlist_articles name="SubSeccionCol1" }}
      {{ $baliza=0 }} 
     {{ list_article_topics }} 
       {{ if substr($gimme -> topic -> name,2) == {{ $subseccion_filtrada}} }}
        <!-- division de codigo de las subsecciones --> 
        {{ if $gimme->article->has_image(1) && $gimme->article->entradilla!="" }}
          {{ include file='_tpl/sections/subseccion_recorrido.tpl' }}    
      <!-- este ya no hace falta, pues es siempre de tipo: lista con foto y texto apaisado..-->
        {{ else }}
           {{ include file='_tpl/sections/subseccion_sin_recorrido.tpl' }}         
        {{ /if }}
      {{ /if }}
     {{ /list_article_topics }}
    {{ /list_playlist_articles }}
  </div><!-- fin col1 subseccion -->

<!-- si es nulo pinta como seccion -->
{{ else }}
  <div class="col-xs-5 col1"> 
    {{ list_playlist_articles name="{{$gimme->section->name}}{{$gimme->section->number}}Col1"}}
    {{ $contadora=0 }}
      {{ list_article_topics }}
      {{ if $contadora == 0 }}
        {{ if in_array( $gimme -> topic -> name , $categorias)}} 

          <!-- Empieza la division de codigo estos ficheros estaran en la carpeta sections -->     
          {{ if $gimme -> article -> seccion_recorrido && !$gimme -> article -> seccion_sin_foto }}
            {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
              {{ include file='_tpl/sections/recorrido_con_borde.tpl' }}
            {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
              {{ include file='_tpl/sections/recorrido_fondo_gris.tpl' }}
            {{ else }}
              {{ include file='_tpl/sections/recorrido_sin_borde.tpl' }}
            {{ /if }}<!-- fin if seccion_con_recorrido bordes y fondo gris -->            

          {{elseif $gimme -> article -> seccion_sin_foto || $gimme -> article -> seccion_sin_foto && $gimme -> article -> seccion_recorrido }}
            {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
              {{ include file='_tpl/sections/sin_foto_con_borde.tpl' }}
            {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
              {{ include file='_tpl/sections/sin_foto_fondo_gris.tpl' }}
            {{ else}}
              {{ include file='_tpl/sections/sin_foto_sin_borde.tpl' }}
            {{ /if }}<!-- fin seccion_sin_recorrido bordes y fondos gris -->            

          {{ else }}<!-- opcion por defecto si no se elije recorrido y  sin foto -->
            {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris  }}
              {{ include file='_tpl/sections/con_foto_con_borde.tpl' }}
            {{ elseif $gimme->article->seccion_gris &&  !$gimme->article->seccion_borde }}
              {{ include file='_tpl/sections/con_foto_fondo_gris.tpl' }}
            {{ else }}<!-- Opcion por defecto de  -->
              {{ include file='_tpl/sections/con_foto_sin_borde.tpl' }}
            {{ /if }}<!-- fin seccion_sin_recorrrido_foto bordes y fondo gris -->            
          {{ /if }}<!-- switches de los articulos -->

          {{ $contadora=1 }}
        {{ /if}}<!-- fin del uso del metodo in_array(,,,) -->
      {{ /if }} <!-- de la contadora -->      
      {{ /list_article_topics }}
    {{ /list_playlist_articles }}
  </div><!-- fin col1 seccion -->
{{ /if }}<!-- fin del uso del metodo isset()--> 
