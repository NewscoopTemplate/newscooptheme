{{ include file='header.tpl' }}

{{ $contador=0 }}
{{ $categorias=array() }}
<!-- aqui seria de tipo prueba -->
  {{ set_language name="Spanish" }}
  {{ set_topic name="seccion_{{ $gimme->section->number }}:es" }}
  {{ list_subtopics  }}
        
   {{$categorias[$contador]={{ $gimme->topic->name }} }}
  {{$contador=$contador+1}}
  
  {{ /list_subtopics  }}
  {{ $categorias = array_unique($categorias) }}

  {{ $subseccion_filtrada = $smarty.get.subseccion }}

  <div class="row mod_seccion">
    <!-- igual que en la portas pero para las secciones, este se manejara en los ficheros de la carpeta sections -->
    {{ $numero_columna=1 }}
    {{ include file='_tpl/section_main_col1.tpl' }}
    {{ include file='_tpl/section_main_col2.tpl' }}
    {{ include file='_tpl/section_main_col3.tpl' }}
  </div>
{{ include file='footer.tpl' }}
</div>
</body>
</html>
