<!--
  Esto hay que cambiarlo con lo nuevo
-->
{{ $contador=0 }}
{{ $categorias=array() }}
<!-- aqui seria de tipo prueba -->
{{ list_articles constraints="type is prueba" }}
{{$categorias[$contador]={{ $gimme->article->subseccion }} }}
{{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }}  
{{ foreach from=$categorias item=categoria }}
{{ $gimme -> article -> subseccion }}
 <li><a href="{{ uri options="article" }}?subsecion=$categoria" title="Ver noticias de subseccion {{$categoria}}">{{ $categoria }}</a></li>
{{ /foreach }}
