<!--
Esto hay que cambiarlo con lo nuevo
-->
<div class="col-md-2 col3 menu_seccion_{{ $gimme->section->number }}">
  {{ foreach from=$categorias item=categoria name=ultimo }}
    {{ $gimme -> article -> subseccion }}
      {{ if $smarty.foreach.ultimo.last}}
        <li><a href="{{ uri options='section' }}?subseccion={{ $categoria }}" title="Ver noticias de subseccion {{$categoria}}">
        {{ $categoria|upper }}</a></li>
      {{ else }}
        <li class="link_{{ $gimme->section->number }}">
        <a href="{{ uri options='section' }}?subseccion={{ $categoria }}" title="Ver noticias de subseccion {{$categoria}}">
        {{ $categoria|upper }}</a></li>
      {{ /if }}   
  {{ /foreach }}
</div>
