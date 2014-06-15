{{ $contador=0 }}
{{ $categorias=array() }}
{{ list_articles }}
{{$categorias[$contador]={{ $gimme->article->subseccion }} }}
{{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }}  
{{ foreach from=$categorias item=categoria }}
 <li>{{ $categoria }}</li>
{{ /foreach }}
