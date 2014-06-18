<!--
	Esto hay que cambiarlo con lo nuevo
-->
{{ $contador=0 }}
{{ $categorias=array() }}
{{ list_articles constraints="type is prueba" }}
{{$categorias[$contador]={{ $gimme->article->subseccion }} }}
{{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }}  
{{ foreach from=$categorias item=categoria }}
 <li>{{ $categoria }}</li>
{{ /foreach }}
