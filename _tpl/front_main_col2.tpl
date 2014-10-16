<!--
Todo esto hay que hacerlo leyendo unicamente la lista en cuestion
Es decir, tiene que haber una lista para esta columna
Y al recorrer ella, a traves de
{if} {elseif} {else}
y comprobando la propiedad "con_recorrido", "con_recorrido_foto"... esta on/true
lo mostramos en el div determinado
Asi lo que estamos haciendo es mostrar todos, pero ellos no pueden elegir
en que columna sale.
Ademas, ellos, al colocar el articulo en la lista podran elegir como sale
-->
<div class="col-xs-4 col2">
  {{ $numero_columna=2}}
  {{ list_playlist_articles name="PortadaCol2" }}
    {{if $gimme -> article -> portada_sin_foto || $gimme->article->portada_sin_foto 
    && $gimme->article->portada_recorrido }}                                            
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris  }}
        <div class="portada_sin_recorrido_col2 con_borde">
          {{ include file='_tpl/front_and_section/sin_foto_con_borde.tpl' }}
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_col2 fondo_gris">
          {{ include file='_tpl/front_and_section/sin_foto_fondo_gris.tpl' }}
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_col2 sin_borde">
          {{ include file='_tpl/front_and_section/sin_foto_sin_borde.tpl' }}
        </div><hr>
      {{ /if }}<!-- fin if  portada_sin_recorrido -->

    {{elseif $gimme->article->portada_recorrido && !$gimme->article->portada_sin_foto }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_foto_col2 con_borde">
          {{ include file='_tpl/front_and_section/con_foto_con_borde.tpl' }}
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde}}
        <div class="portada_sin_recorrido_foto_col2 fondo_gris">
          {{ include file='_tpl/front_and_section/con_foto_fondo_gris.tpl' }}
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_foto_col2 sin_borde">
          {{ include file='_tpl/front_and_section/con_foto_sin_borde.tpl' }}
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->

    {{ elseif $gimme->article->type_name=="banner"  }}<!-- trata los banners -->
        <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
        {{ image rendition="portada_cuadrada" }}
          <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" />
        {{ /image }}
        </a><hr>
    
    {{ else }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_foto_col2 con_borde">
          {{ include file='_tpl/front_and_section/con_foto_con_borde.tpl' }}
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_foto_col2 fondo_gris">
          {{ include file='_tpl/front_and_section/con_foto_fondo_gris.tpl' }}
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_foto_col2 sin_borde">
        {{ include file='_tpl/front_and_section/con_foto_sin_borde.tpl' }}
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->
    {{ /if }}
  {{ /list_playlist_articles }}

  <!-- Añadimos en codigo del slider -->
  {{ include file='_tpl/front_and_section/slider.tpl' }}
</div>
