{{ include file='header.tpl' }}
  <div class="row">

      {{ if $gimme ->article ->articulo_foto_superior }}
      <div class="col-md-8 col1">
      <div class="articulo_foto_superior_col1">
        <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
        {{ if $gimme->article->has_image(1) }}
          <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
        {{ /if }}
        <p>{{ $gimme->article->titular }}</p>
        <p>{{ $gimme->article->entradilla }}</p>
        <p class="datos_articulos">{{ list_article_authors }}
        {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }} 
        {{ if !$gimme->current_list->at_end }}, </p>{{ /if }}
        {{ /list_article_authors }}
        <p>{{ $gimme->article->texto }}

        
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
      {{ elseif $gimme->article->articulo_foto_lateral }} 
      <div class="col-md-8 col1">
        <div class="articulo_foto_lateral_col1">
          <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
          <div class="row">
            <div class="col-md-7">
              <p>{{ $gimme->article->titular }}</p>
              <p>{{ $gimme->article->entradilla }}</p>
            </div>
            <div class="col-md-5">
              {{ if $gimme->article->has_image(1) }}
                <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
              {{ /if }}
            </div>
          </div>        
          <p class="datos_articulos">{{ list_article_authors }}
          {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }} 
          {{ if !$gimme->current_list->at_end }}, {{ /if }}
          {{ /list_article_authors }}</p>
          <p>{{ $gimme->article->texto }}</p>       
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
        </div>  
     {{ elseif  $gimme->article->articulo_sin_banner }}
    <div class="col-md-10 col1">
<div class="articulo_sin_banner_col1">
          <p class="nav_{{ $gimme->section->number }}">{{ $gimme->article->subseccion|upper }}</p>
          <div class="row">
            <div class="col-md-7">
              <p>{{ $gimme->article->titular }}</p>
              <p>{{ $gimme->article->entradilla }}</p>
            </div>
            <div class="col-md-5">
              {{ if $gimme->article->has_image(1) }}
                <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
              {{ /if }}
            </div>
          </div>        
          <p class="datos_articulos">{{ list_article_authors }}
          {{ $gimme->author->name }}:: {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }} 
          {{ if !$gimme->current_list->at_end }}, {{ /if }}
          {{ /list_article_authors }}</p>
          <p>{{ $gimme->article->texto }}</p>       
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
        </div>  

      {{ /if }}
    </div>
    
    {{ if $gimme ->article ->articulo_foto_superior || $gimme ->article->articulo_foto_lateral }}
      </div>
          <div class="col-md-2 col2">
      columna2
    </div>
    {{ /if }}
    {{ $contador=0 }}
{{ $categorias=array() }}
<!-- aqui seria de tipo prueba -->
{{ list_articles constraints="type is articulo" }}
  {{$categorias[$contador]={{ $gimme->article->subseccion }} }}
  {{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }}

{{ $subseccion_filtrada = $smarty.get.subseccion }}
    {{ include file='_tpl/section_main_col3.tpl' }} 
  </div>
</div>
</body>
</html>
