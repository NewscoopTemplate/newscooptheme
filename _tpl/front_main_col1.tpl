<div class="col-xs-5 col1">

  {{ list_playlist_articles name="PortadaCol1" order="bypublishdate desc" }}
  	{{* Con recorrido y Sin foto *}}
  	  {{ if $gimme -> article -> portada_recorrido && !$gimme->article->portada_sin_foto }}
   	 	{{ include file='_tpl/articles/front_no_foto_recorrido.tpl' }}
   	{{* CON fondo gris y SIN borde *}}
    {{ elseif $gimme ->article->portada_gris && !$gimme->article->portada_borde }}
    	{{ include file='_tpl/articles/front_fondo_gris_no_borde.tpl' }}
    {{* SIN foto o SIN foto y con recorrido *}}
    {{* Esto es otro oximoron *}}
    {{elseif $gimme -> article -> portada_sin_foto || $gimme->article->portada_sin_foto && $gimme->article->portada_recorrido }}
    	{{ include file='_tpl/articles/front_no_foto.tpl' }}
    {{* GRIS y CON borde de (SIN foto o SIN foto y con recorrido) *}}
    {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        {{ include file='_tpl/articles/front_gris_borde.tpl' }}
    {{* GRIS y SIN borde *}}
    {{ elseif $gimme->article->portada_gris && !$gimme->article->portada_borde }}
        {{ include file='_tpl/articles/front_gris_no_borde.tpl' }}
    {{ /if }}<!-- fin con_recorrido, sin _recorrido, sin _recorrido_foto -->
  {{ /list_playlist_articles }}
  
</div>
