<!--
Esto hay que cambiarlo con lo nuevo
-->
<div class="col-md-2 col3 menu_seccion_{{ $gimme->section->number }}">
	{{ foreach from=$categorias item=categoria }}
		{{ $gimme -> article -> subseccion }}
		<li><a href="{{ uri options='section' }}?subseccion={{ $categoria }}" title="Ver noticias de subseccion {{$categoria}}">{{ $categoria }}</a></li>
	{{ /foreach }}
</div>
