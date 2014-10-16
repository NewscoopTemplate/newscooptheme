<!--si no es nulo y coincide pintamos como subseccion-->
{{ if isset($subseccion_filtrada) }}
  <div class="col-xs-2 col2">    
    {{ list_playlist_articles name="SubSeccionCol2" }}
      <div class="banner">
        <p><a href="http://{{ $gimme->article->enlace }}" target="_blank">
        {{ image rendition="portada_cuadrada" }}
          <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
        {{ /image }}</p>
      </div>
      {{ /list_playlist_articles}}

{{ else }}<!-- si no existe la subseccion_filtrada -->
  <div class="col-xs-5 col2">
    {{ $numero_columna=2 }}
    {{ list_playlist_articles name="{{$gimme->section->name}}{{$gimme->section->number}}Col2" }}
      {{ $contadora=0 }}
      {{ list_article_topics }}
        {{ if $contadora == 0 }}
          {{ if in_array( $gimme -> topic -> name , $categorias)}}

            <!-- division de codigo de la columna 2 de las secciones -->      
            {{ if $gimme -> article -> seccion_sin_foto || $gimme -> article -> seccion_sin_foto && $gimme -> article -> seccion_recorrido }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                {{ include file='_tpl/sections/sin_foto_con_borde.tpl' }}
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde  }}
                {{ include file='_tpl/sections/sin_foto_fondo_gris.tpl' }}
              {{ else }}
                {{ include file='_tpl/sections/sin_foto_sin_borde.tpl' }}
              {{ /if }}<!-- fin seccion_sin_recorrido  bordes y fondo gris -->              
            
            {{elseif $gimme -> article -> seccion_recorrido && !$gimme -> article -> seccion_sin_foto }}
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                {{ include file='_tpl/sections/recorrido_con_borde.tpl' }} 
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                {{ include file='_tpl/sections/recorrido_fondo_gris.tpl' }}
              {{ else }}
                {{ include file='_tpl/sections/recorrido_sin_borde.tpl' }}
              {{ /if }}

            <!-- trata los banners --> 
            {{ elseif $gimme->article->type_name=="banner"  }}
            <div class="banner">
              <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
              {{ image rendition="portada_cuadrada" }}
                <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
              {{ /image }}<hr>
            </div>

            {{ else }}<!-- opcion por defecto si no se elije con recorrido o sin foto -->
              {{ if $gimme->article->seccion_borde || $gimme->article->seccion_borde && $gimme->article->seccion_gris }}
                {{ include file='_tpl/sections/con_foto_con_borde.tpl' }}  
              {{ elseif $gimme->article->seccion_gris && !$gimme->article->seccion_borde }}
                {{ include file='_tpl/sections/con_foto_fondo_gris.tpl' }}
              {{ else }}
                {{ include file='_tpl/sections/con_foto_sin_borde.tpl' }}
              {{ /if }}          
            {{ /if }}    
            {{ $contadora=1 }}
          {{ /if }}            
        {{ /if}}
      {{ /list_article_topics }}
    {{ /list_playlist_articles }}
     
  <!-- añadimos el fichero con el codigo del carrusel -->   
  {{ include file='_tpl/sections/carrusel_section.tpl' }} 
{{ /if }}  
</div>
