{{ include file='header.tpl' }}
  <div class="row">
    {{ if $gimme ->article -> articulo_recorrido }}
    	{{ include file='_tpl/articles/articulo_recorrido.tpl' }}   
    {{ else }} {{* Si no es articulo con recorrido *}}
    	{{ include file='_tpl/articles/articulo_sin_recorrido.tpl' }} 
    <div class="col-xs-2 col2">
    <!-- columna 2 -->
      {{ list_playlist_articles name="SubSeccionCol2" }}
      {{* Como no tengo ni idea de que quieren pner aqui, pongo las de la subseccion *}}
        <div class="banner"><small>Publicidad</small>
          <a href="http://{{ $gimme->article->enlace }}" target="_blank">
          {{ image rendition="portada_cuadrada" }}
            <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
          {{ /image }}</p>
        </div>
        {{ /list_playlist_articles}}
    </div>
    
   
    
    {{ $subseccion_filtrada = $smarty.get.subseccion }}
    <div class="col-xs-2 col3">
      <!--el menu de las subsecciones siempre-->
      <div class="menu_seccion_{{ $gimme->section->number }}">
        {{ set_language name="Spanish" }}
        {{ set_topic name="seccion_{{ $gimme->section->number }}:es" }}
          {{ list_subtopics  }}
            {{ if $gimme->current_list->at_end }}
              <li class=" bold_font_2"><a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}"> {{ substr($gimme->topic->name|upper,2) }}</a></li>
            {{ else }}
              <li class="link_{{ $gimme->section->number }} bold_font_2"><a href="{{ uri options='section' }}?subseccion={{ substr($gimme->topic->name,2) }}"> {{ substr($gimme->topic->name|upper,2) }}</a></li>
            {{ /if }}        
          {{ /list_subtopics  }}
      </div>
      <div class="blog">
        <table>
          <tr>
          <th>
            NUESTROS BLOGS
          </th>
          </tr>
          {{ list_playlist_articles name="Blogs" }}
          {{ if $gimme->current_list->at_end }}
            <tr class="ultimo">
            <td>
              <a href="http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
            </td>
            </tr>
          {{ else }}
            <tr>
            <td>
              <a href="http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
            </td>
            </tr>
          {{ /if }}
          {{ /list_playlist_articles }}
        </table>
      </div><br>
      <div class="banner">    
          {{ list_playlist_articles name="ArticuloCol2" }}
            <small>Publicidad</small><br/>
            <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
              <img src="{{ $gimme -> article -> image -> imageurl }}" />
            </a>
            </p>
          {{ /list_playlist_articles }}
      </div><br>

      <div class="blog_menu">
        <table>
          <tr>
          <th>
            LA CIUDAD CERCA DE TI
          </th>
          </tr>
          {{ list_playlist_articles name="Interes" }}
          {{ if $gimme->current_list->at_end }}
            <tr class="ultimo">
            <td>
              <a href="http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
            </td>
            </tr>
          {{ else }}
            <tr>
            <td>
              <a href="http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
            </td>
            </tr>
          {{ /if }}
          {{ /list_playlist_articles }}
        </table>
      </div>
    </div>
  </div>   
  
  {{ include file='footer.tpl' }}
  
</div>
</body>
</html>
