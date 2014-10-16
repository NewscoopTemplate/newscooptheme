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
<div class="col-xs-6 col1">
  {{ list_playlist_articles name="PortadaCol1" order="bypublishdate desc" }}
    {{* Si la opcion es con recorrido y la sin foto esta desmarcado *}}
    {{ if $gimme -> article -> portada_recorrido && !$gimme->article->portada_sin_foto }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_con_recorrido_col1 con_borde">
          {{ include file='_tpl/front_and_section/recorrido_con_borde.tpl' }}
        </div><hr><!-- fin portada_recorrido_col1 con borde -->
      {{ elseif $gimme ->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_con_recorrido_col1 fondo_gris">
          {{ include file='_tpl/front_and_section/recorrido_fondo_gris.tpl' }}
        </div><hr><!-- fin portada_recorrido_col1 fondo gris-->
      {{ else }}
        <div class="portada_con_recorrido_col1 sin_borde">
          {{ include file='_tpl/front_and_section/recorrido_sin_borde.tpl' }}
        </div><hr><!-- fin portada_con_recorrido_col1 sin borde -->
      {{ /if }}<!-- fin if bordes y fondo  gris con recorrido -->

    {{* Si la opcion es sin recorrido sin foto o si esta marcada y en con recorrido esta desmarcado *}}  
    {{elseif $gimme -> article -> portada_sin_foto || $gimme->article->portada_sin_foto && $gimme->article->portada_recorrido }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_foto_col1 con_borde">      
          {{ include file='_tpl/front_and_section/sin_foto_con_borde.tpl' }}
        </div><hr><!-- fin con borde de la opcion por defecto -->
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_foto_col1 fondo_gris">
          {{ include file='_tpl/front_and_section/sin_foto_fondo_gris.tpl' }} 
        </div><hr>    
      {{ else }}
        <div class="portada_sin_recorrido_foto_col1 sin_borde">
          {{ include file='_tpl/front_and_section/sin_foto_sin_borde.tpl' }}
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris sin foto -->
    
    {{* Trata las demas opciones *}} 
    {{ else }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        <div class="portada_sin_recorrido_col1 con_borde">
          {{ include file='_tpl/front_and_section/con_foto_con_borde.tpl' }}
        </div><hr>
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        <div class="portada_sin_recorrido_col1 fondo_gris">
          {{ include file='_tpl/front_and_section/con_foto_fondo_gris.tpl' }}
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_col1 sin_borde">
          {{ include file='_tpl/front_and_section/con_foto_sin_borde.tpl' }}
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->
      
    {{ /if }}<!-- fin con_recorrido, sin _recorrido, sin _recorrido_foto -->
  {{ /list_playlist_articles }}
</div>
