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
        {{ include file='_tpl/front_and_section/recorrido_con_borde.tpl' }}
      {{ elseif $gimme ->article->portada_gris && !$gimme->article->portada_borde }}
        {{ include file='_tpl/front_and_section/recorrido_fondo_gris.tpl' }}
      {{ else }}
        {{ include file='_tpl/front_and_section/recorrido_sin_borde.tpl' }}
      {{ /if }}<!-- fin if bordes y fondo  gris con recorrido -->

    {{* Si la opcion es sin recorrido sin foto o si esta marcada y en con recorrido esta desmarcado *}}  
    {{elseif $gimme -> article -> portada_sin_foto || $gimme->article->portada_sin_foto && $gimme->article->portada_recorrido }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}      
        {{ include file='_tpl/front_and_section/sin_foto_con_borde.tpl' }}
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        {{ include file='_tpl/front_and_section/sin_foto_fondo_gris.tpl' }}     
      {{ else }}
        {{ include file='_tpl/front_and_section/sin_foto_sin_borde.tpl' }}
      {{ /if }}<!-- fin if bordes y fondo gris sin foto -->
    
    {{* Trata las demas opciones *}} 
    {{ else }}
      {{ if $gimme->article->portada_borde || $gimme->article->portada_borde && $gimme->article->portada_gris }}
        {{ include file='_tpl/front_and_section/con_foto_con_borde.tpl' }}
      {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        {{ include file='_tpl/front_and_section/con_foto_fondo_gris.tpl' }}
      {{ else }}
        {{ include file='_tpl/front_and_section/con_foto_sin_borde.tpl' }}
      {{ /if }}<!-- fin if bordes y fondo gris -->
      
    {{ /if }}<!-- fin con_recorrido, sin _recorrido, sin _recorrido_foto -->
  {{ /list_playlist_articles }}
</div>

