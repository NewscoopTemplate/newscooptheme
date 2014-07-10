{{ include file='header.tpl' }}

{{ $contador=0 }}
{{ $categorias=array() }}
<!-- aqui seria de tipo prueba -->
{{ list_articles constraints="type is articulo" }}
  {{$categorias[$contador]={{ $gimme->article->subseccion }} }}
  {{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }}

{{ $subseccion_filtrada = $smarty.get.subseccion }}

  <div class="row mod_seccion">
    {{ include file='_tpl/section_main_col1.tpl' }}
    {{ include file='_tpl/section_main_col2.tpl' }}
    {{ include file='_tpl/section_main_col3.tpl' }}
  </div>

</div>
</body>
</html>

