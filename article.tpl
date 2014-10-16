{{ include file='header.tpl' }}
  <div class="row">
    {{ if $gimme ->article ->articulo_recorrido }}
      <div class="col-md-10 col1">
        {{ include file='_tpl/articles/article_recorrido.tpl' }} 
    {{ else }}
      {{ include file='_tpl/articles/article_sin_recorrido.tpl' }}
    {{ /if }}
        </div>        
      </div>   
    {{ $subseccion_filtrada = $smarty.get.subseccion }}
    <!-- codigo de la tercera columna -->
    {{ include file='_tpl/articles/article_main_col3.tpl' }}
  </div><!-- cierre de los articulos ya sea con recorrido o si recorrido --> 
  {{ include file='footer.tpl' }}  
</div><!-- Cierre del row -->
</body>
</html>
