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
<div class="col-md-4 col2">
  {{ list_playlist_articles name="PortadaCol2" }}
    {{if $gimme -> article -> portada_sin_recorrido }}
      <div class="portada_sin_recorrido_col2">
          <p class="semibold_font_2">
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
    {{elseif $gimme -> article -> portada_sin_recorrido_foto }}
      <div class="portada_sin_recorrido_foto_col2">
      <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /></a>
             <p class="semibold_font_2">
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
              <p class="semibold_font_2">{{ $gimme -> article -> titular }}</p>
              <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /></a>              
          </div>
      {{ else }}
           <div class="item">
                 <p class="semibold_font_2">{{ $gimme -> article -> titular }}</p>
              <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /></a>              
           </div>
     {{ /if }}
     {{ $contador_slider=$contador_slider+1 }}
     {{ /list_playlist_articles }}
    Esto es el pie..
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
</div>
