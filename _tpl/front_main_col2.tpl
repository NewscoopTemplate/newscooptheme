<!--

Todo esto hay que hacerlo leyendo unicamente la lista en cuestion
Es decir, tiene que haber una lista para esta columna
Y al recorrer ella, a traves de
{if} {elseif} {else}
y comprobando la propiedad "con_recorrido", "con_recorrido_foto"... esta on/true
lo mostramos en el div determinado
Asi lo que estamos haciendo es mostrar todos, pero ellos no pueden elegir
en que columna sale.
Ademas, ellos, al colocar el articulo en la lista podran elegir como sale

-->
<div class="col-xs-4 col2">
  {{ list_playlist_articles name="PortadaCol2" }}
    {{if $gimme -> article -> portada_sin_recorrido }}                                            
      {{ if $gimme->article->con_borde_portada }}
        <div class="portada_sin_recorrido_col2 con_borde">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ elseif $gimme->article->con_fondo_gris_portada }}
        <div class="portada_sin_recorrido_col2 fondo_gris">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ else }}
        <div class="portada_sin_recorrido_col2 sin_borde">
          <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
           </p>             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p  class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ /if }}
      
      <!-- fin if  portada_sin_recorrido -->

    {{elseif $gimme -> article -> portada_sin_recorrido_foto || $gimme->article->portada_con_recorrido }}
      {{ if $gimme->article->con_borde_portada }}
        <div class="portada_sin_recorrido_foto_col2 con_borde">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
              {{ if $gimme->article->has_image(1) }}
                {{ list_article_images }}
                  {{ if $gimme->current_list->at_beginning }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                  {{ else }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                  {{ /if }}
                {{ /list_article_images }}
              {{ else }}
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
              {{ /if }}<!-- fin ligthbox -->
          <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
          <p class="semibold_font_3">
          <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
          </p>               
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ elseif $gimme->article->con_fondo_gris_portada }}
        <div class="portada_sin_recorrido_foto_col2 fondo_gris">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
              {{ if $gimme->article->has_image(1) }}
                {{ list_article_images }}
                  {{ if $gimme->current_list->at_beginning }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                  {{ else }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                  {{ /if }}
                {{ /list_article_images }}
              {{ else }}
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
              {{ /if }}<!-- fin ligthbox -->
          <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
          <p class="semibold_font_3">
          <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
          </p>               
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
        {{ else }}
          <div class="portada_sin_recorrido_foto_col2 sin_borde">
          <!-- Uso del lightbox en las imagenes de los articulos que tienen mas de una imagen -->
              {{ if $gimme->article->has_image(1) }}
                {{ list_article_images }}
                  {{ if $gimme->current_list->at_beginning }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}">
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}"  /></a>
                  {{ else }}
                  <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
                    <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" /></a>
                  {{ /if }}
                {{ /list_article_images }}
              {{ else }}
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>
              {{ /if }}<!-- fin ligthbox -->
          <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
          <p class="semibold_font_3">
          <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
          </p>               
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}</a></p>
          <p class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div><hr>
      {{ /if }}<!-- fin if bordes y fondo gris -->
    {{ else }}<!-- trata los banners -->
        <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
        <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
        </a><hr>
    {{ /if }}
  {{ /list_playlist_articles }} 
  
  
  <!--slider: analiza cuatnos articulos hay en la lista "slider" y crea tantos sliders como haya -->
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> 
    <!-- Indicators -->
    <ol class="carousel-indicators">   
       {{ $contador_slider=0 }}
       {{ list_playlist_articles name="slider" }}
           {{ if $contador_slider == 0 }}
               <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
           {{ else }}
               <li data-target="#carousel-example-generic" data-slide-to="{{ $contador }}"></li>
           {{ /if }}
         {{ $contador_slider=$contador_slider+1 }}
       {{ /list_playlist_articles }}      
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">  
       {{ $contador_slider=0 }}
       {{ list_playlist_articles name="slider" }}
         {{ if $contador_slider == 0 }} 
             <div class="item active">
                <p class="semibold_font_3">{{ $gimme -> article -> titular }}</p>
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="width:100%; height:250px;"/></a>         
            </div>
        {{ else }}
             <div class="item">
                   <p class="semibold_font_3">{{ $gimme -> article -> titular }}</p>
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="width:100%; height:250px;"></a>         
             </div>
       {{ /if }}
       {{ $contador_slider=$contador_slider+1 }}
       {{ /list_playlist_articles }}
      
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div><hr><!-- fin carrusel -->
  <!--
  <div class="banner">
    {{ list_playlist_articles name="PortadaCol2Banner" }}
      <a href="http://{{ $gimme -> article -> enlace }}" target="_blank" >
      <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
      </a><hr>
    {{ /list_playlist_articles }}
  </div> -->
</div>
