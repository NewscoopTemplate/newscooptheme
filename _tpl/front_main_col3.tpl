<div class="col-xs-2 col3">
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
                <a href=" http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
              </td>
            </tr>
          {{ else }}
            <tr>
              <td>
                <a href=" http://{{ $gimme->article->enlace }} " target="_blank">{{ $gimme->article->name|upper }}</a>
              </td>
            </tr>
          {{ /if }}
        {{ /list_playlist_articles }}
   
    </table>
  </div><br>
  <div class="banner">
  {{ list_playlist_articles name="PortadaCol3" }}
    <p><a href="{{ $gimme -> article -> enlace }}" target="_blank" >
    <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
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
