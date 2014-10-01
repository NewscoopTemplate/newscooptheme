{{ include file='header.tpl' }}
  <div class="row">
    {{ if $gimme ->article -> articulo_recorrido }}
    <div class="col-xs-8 col1">
      <div class="articulo_recorrido_col1">
        {{ $indice=0 }}     
        <div class="subsecciones">     
          {{ list_article_topics }}  
            {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
              {{ $indice = substr($gimme->topic->name,0,1) }}                     
              <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
            {{/if }}
          {{ /list_article_topics }}
        </div>      
        <p class="semibold_font_2">{{ $gimme->article->titular }}</p>
        <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
        <p class="datos_articulos normal_font_1">{{ list_article_authors }}
        {{ $gimme->author->name }}, {{ $gimme->article->publish_date|camp_date_format:"%e/%m/%Y" }}
        {{ if !$gimme->current_list->at_end }}, </p>{{ /if }}
        {{ /list_article_authors }}
        <div>
        
          
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme->article->has_image(1) }}
            {{ list_article_images }}
              {{ if $gimme->current_list->count > 1}}
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" style="float:left; margin-right:1%;" />
                      {{ image rendition="articulo_vertical" }}
                        <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                      {{ /image }}
                    </div>
                    <div class="icono">
                      <img src="{{ url static_file='dummy/rrss/camera-icon-th.png' }}" />
                    </div>                         
                  </div>
                {{ else }}
                  <div class="imagen" style="display:none;">
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" />
                    </a>
                  </div>
                {{ /if }}
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
               
               {{ image rendition="articulo_vertical" }}
                  
                  {{ if $gimme->current_list->at_beginning }}
            
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" style="float: left; margin-right: 1%;" /></a>
               
                   {{ /if }}
                   
                {{ /image }}
              {{ /if }}                  
            {{ /list_article_images }}         
          {{ /if }}<!-- fin ligthbox -->
          
         
          
          <div class="texto_articulo">{{ $gimme->article->texto }}</div>
          <div id="redes_sociales">
          <!--facebook-->
            <div id="fb-button"></div>
            <script>(function(d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.0";
                        fjs.parentNode.insertBefore(js, fjs);
                      }(document, 'script', 'facebook-jssdk'));</script>          
            <div class="fb-share-button" data-href="{{ uri options="article"}}" data-width="100" data-type="button_count"></div>
            <!-- twitter -->
            <div id="tw-button">
              <a href="https://twitter.com/share" class="twitter-share-button" data-lang="es" data-size="large">Twittear</a>
              <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
            </div>
          </div>
          <!--redes_sociales -->
        </div>   
    {{ else }} {{* Si no es articulo con recorrido *}}
      <div class="col-xs-8 col1">
      
        <div class="articulo_estandar_col1">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de 2 imagenes -->
          {{ if $gimme -> article -> has_image(1) }}
          <div class="row">
            {{ list_article_images }}

              {{ if $gimme->current_list->count > 2 }} {{* Si hay 3 imagenes o mas... *}}
              
                {{ if $gimme->current_list->at_beginning }}
                  <div class="contenedor_imagen">
                    <div class="imagen">
                      <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                      
                      {{ image rendition="articulo_horizontal" }}
                        <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" style="float:left;" /></a>
                      {{ /image }}
                      
                      
                    </div>
                    <div class="icono">
                      <img src="{{ url static_file='dummy/rrss/camera-icon-th.png' }}" />
                    </div>                         
                  </div>
                {{ else }}
                  <div class="imagen" style="display:none;">
                    <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                      <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" />
                    </a>
                  </div>
                {{ /if }}
               
              {{ elseif $gimme->current_list->count == 2 }} {{* Si hay 2 *}}
              
                
                {{ if $gimme -> current_list -> index == 1 }} {{* Si estamos en la primera *}}
    
                  <div class="col-md-7">
                     {{ image rendition="articulo_horizontal" }}
                       <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" />
                     {{ /image }}
                  </div>
                {{ elseif $gimme -> current_list -> index == 2 }}{{* Si estamos en la segunda *}}
                  
                  <div class="col-md-5">

                    {{ image rendition="portada_cuadrada" }}
                      <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}"
                    {{ /image }}
                    
                  </div>
                {{ /if }}
                
               {{*  
              {{ else }}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <!-- <div class="col-md-12"> -->
                 
                {{ image rendition="articulo_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" style="float: left; margin-right: 1%;" /></a>
                  {{ /if }}
                {{ /image }}
               <!-- </div> -->
               </div>
               *}}
               
               {{ elseif $gimme->current_list->count == 1}}<!-- si no la imagen se convierte en un enlace que redirecciona al articulo -->
                <div class="col-md-12">
                
                {{ image rendition="articulo_horizontal" }}
                  {{ if $gimme->current_list->at_beginning }}
                    <img src="{{ $image->src }}" width="{{ $image->width }}" alt="{{ $image->photographer }}: {{ $image->caption }}" /></a>
                  {{ /if }}
                {{ /image }}
               
               </div>
              {{ /if }}  {{* Fin de la cantidad de imagenes *}}
              {{ /list_article_images }}
              </div>
           
            <!-- pie de foto -->
            <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>  
            </div>        
          {{ /if }} {{* Fin de si hay imagenes *}} 
          
          {{ $indice=0 }}     
          <div class="subsecciones">     
            {{ list_article_topics }}  
              {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
                {{ $indice = substr($gimme->topic->name,0,1) }}                     
                <a href="../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>      
              {{/if }}
            {{ /list_article_topics }}
          </div>
          <p class="nav_{{ $gimme->section->number }} semibold_font_3">{{ $gimme->article->subseccion|upper }}</p>
          <p class="semibold_font_2">{{ $gimme->article->titular }}</p>
          <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>            
          <p class="datos_articulos normal_font_1">{{ list_article_authors }}
          {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %m %Y" }}
          {{ if !$gimme->current_list->at_end }}, {{ /if }}
          {{ /list_article_authors }}</p>
          <div class="texto_articulo">{{ $gimme->article->texto }}</div>
          <div id="redes_sociales">
            <!--facebook-->
            <div id="fb-button"></div>
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.0";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

            <div class="fb-share-button" data-href="{{ uri options="article"}}" data-width="100" data-type="button_count"></div>
            <!-- twitter -->
            <div id="tw-button">
            <a href="https://twitter.com/share" class="twitter-share-button" data-lang="es" data-size="large">Twittear</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
            </div>
          </div> 
          <!--redes_sociales -->
          {{ /if }}
        </div>        
      <!-- </div> -->    
      
     
      
      
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
