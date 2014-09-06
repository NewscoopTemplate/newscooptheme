{{ include file='header.tpl' }}
  <div class="row">
    {{ if $gimme ->article ->articulo_recorrido }}
    <div class="col-md-8 col1">
      <div class="articulo_recorrido_col1">
        {{ $indice=0 }}     
           {{ list_article_topics }}  
            {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
              {{ $indice = substr($gimme->topic->name,0,1) }}
              <a href="../../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>        
            {{/if }}
          {{ /list_article_topics }}
        <p class="semibold_font_2">{{ $gimme->article->titular }}</p>
        <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>
        <p class="datos_articulos normal_font_1">{{ list_article_authors }}
        {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
        {{ if !$gimme->current_list->at_end }}, </p>{{ /if }}
        {{ /list_article_authors }}
        <div>
          {{ if $gimme->article->has_image(1) }}
            <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="float:left; width:200px; margin-right:1%;" />
          {{ /if }}        
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
    {{ else }}
      <div class="col-xs-8 col1">
        <div class="articulo_estandar_col1">
          {{ if $gimme->article->has_image(1) }}
          <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
          <p class="normal_font_2" >
              {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
          {{ /if }}
          {{ $indice=0 }}     
           {{ list_article_topics }}  
            {{ if !strstr({{$gimme->topic->name}}, "seccion_")}}
              {{ $indice = substr($gimme->topic->name,0,1) }}
              <a href="../../../../{{$gimme->language->code}}/{{ $gimme->issue->name}}/{{ substr($gimme->topic->name,0,1)}}/?subseccion={{ substr($gimme->topic->name,2) }}" class="nav_{{ $indice }} semibold_font_3">{{substr($gimme->topic->name|upper,2)}}</a>        
            {{/if }}
          {{ /list_article_topics }}
          <p class="nav_{{ $gimme->section->number }} semibold_font_3">{{ $gimme->article->subseccion|upper }}</p>
          <p class="semibold_font_2">{{ $gimme->article->titular }}</p>
          <p class="semibold_font_1">{{ $gimme->article->entradilla }}</p>            
          <p class="datos_articulos normal_font_1">{{ list_article_authors }}
          {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
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
      </div>    
    <div class="col-md-2 col2">
      {{ list_playlist_articles name="ArticuloCol2"}}
        <p>
          <a href="{{ $gimme -> article -> enlace }}" target="_blank" >
          <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
          </a>
        </p>
      {{ /list_playlist_articles }}
    </div>
    {{ $subseccion_filtrada = $smarty.get.subseccion }}
    {{ include file='_tpl/section_main_col3.tpl' }} 
  </div>   
</div>
</body>
</html>
