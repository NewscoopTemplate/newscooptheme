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
  <!--si no es nulo y coincide pintamos como subseccion-->
  {{ if isset($subseccion_filtrada) }}
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
  <!-- si es nulo pinta como seccion -->
  {{ else }}
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
      {{ list_playlist_articles name="SeccionCol3" }}
        <p>
        <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
        {{ image rendition="portada_cuadrada" }}
          <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
        {{ /image }}
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
  
  {{ /if }}
</div>
