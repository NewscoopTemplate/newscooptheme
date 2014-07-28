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
<div class="col-md-6 col1">
  {{ list_playlist_articles name="PortadaCol1" }}
    {{ if $gimme -> article -> portada_con_recorrido }}
      <div class="portada_con_recorrido_col1">
        <div class="row">
          <div class="col-md-5">
            <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
          </div>
          <div class="col-md-7">          
            <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
             </p>
             
            <p class="normal_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
            </a></p>
            <p class="datos_articulos normal_font_1"> 
            {{ list_article_authors }}
            {{ $gimme->author->name|upper }} ::
            {{ /list_article_authors }}
            {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
            <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
          </div>
        </div>              
      </div>

    {{elseif $gimme -> article -> portada_sin_recorrido }}
      <div class="portada_sin_recorrido_col1">
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
        <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p><hr>
      </div>
    {{elseif $gimme -> article -> portada_sin_recorrido_foto }}
      <div class="portada_sin_recorrido_foto_col1">
        <div class="img_sin_foto">
          <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  /></a>
        </div>
        <div class="texto_sin_foto">
            <p class="semibold_font_3">
            <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>          
             </p>
             
          <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
          </a></p>
          <p class="datos_articulos normal_font_1">
          {{ list_article_authors }}
          {{ $gimme->author->name|upper }} ::
          {{ /list_article_authors }}
          {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}
          </p>
          <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
        </div>      
      </div><hr>
    {{ /if }}
  {{ /list_playlist_articles }}
</div>
