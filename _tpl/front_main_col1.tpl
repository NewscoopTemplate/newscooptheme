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

  {{ list_playlist_articles name="PortadaCol1" order="bypublishdate desc" }}
    {{ if $gimme -> article -> portada_con_recorrido }}
      {{ if $gimme->article->con_borde_portada }}
        <div class="portada_con_recorrido_col1 con_borde">
          <div class="row">
            <div class="col-md-5">
              <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>          
            </div>
            <div class="col-md-7">          
              <p class="semibold_font_3">
              <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
               </p>             
              <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
              </a></p>
              <p class="datos_articulos normal_font_1"> 
              {{ list_article_authors }}
              {{ $gimme->author->name|upper }} ::
              {{ /list_article_authors }}
              {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
              <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
            </div>
          </div>              
        </div><hr><!-- fin portada_con_recorrido_col1 con borde -->
      {{ elseif $gimme ->article->con_fondo_gris_portada }}
        <div class="portada_con_recorrido_col1 fondo_gris">
          <div class="row">
            <div class="col-md-5">
              <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a> 
            </div>
            <div class="col-md-7">          
              <p class="semibold_font_3">
              <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
               </p>             
              <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
              </a></p>
              <p class="datos_articulos normal_font_1"> 
              {{ list_article_authors }}
              {{ $gimme->author->name|upper }} ::
              {{ /list_article_authors }}
              {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
              <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
            </div>
          </div>             
        </div><hr><!-- fin portada_con_recorrido_col1 fondo gris-->
      {{ else }}
        <div class="portada_con_recorrido_col1 sin_borde">
          <div class="row">
            <div class="col-md-5">              
                <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" /> </a>        
            </div>
            <div class="col-md-7">          
              <p class="semibold_font_3">
              <a href="{{ uri options='section' }}" class="nav_{{ $gimme->section->number }}">{{ $gimme->section->name|upper }}</a>      
               </p>             
              <p class="semibold_font_2"><a href="{{ uri options="article" }}" title="{{ $gimme->article->titular }}">{{ $gimme->article->titular }}
              </a></p>
              <p class="datos_articulos normal_font_1"> 
       
              {{ list_article_authors }}
              {{ $gimme->author->name|upper }} ::
              {{ /list_article_authors }}
              {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }}</p>
              <p class="semibold_font_1"><a href="{{ uri options="article" }}">{{ $gimme->article->entradilla }}</a></p>
            </div>
          </div>              
        </div><hr><!-- fin portada_con_recorrido_col1 sin borde -->
      {{ /if }}<!-- fin if bordes y fondo gris -->

    {{elseif $gimme -> article -> portada_sin_recorrido }}
      {{ if $gimme->article->con_borde_portada }}
        <div class="portada_sin_recorrido_col1 con_borde">
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
        <div class="portada_sin_recorrido_col1 fondo_gris">
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
        <div class="portada_sin_recorrido_col1 sin_borde">
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
      
    {{elseif $gimme -> article -> portada_sin_recorrido_foto }}
      {{ if $gimme->article->con_borde_portada}}
        <div class="portada_sin_recorrido_foto_col1 con_borde">
          <div class="img_sin_foto">
            <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  /></a>
            <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
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
      {{ elseif $gimme->article->con_fondo_gris_portada}}
        <div class="portada_sin_recorrido_foto_col1 fondo_gris">
          <div class="img_sin_foto">
            <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  /></a>
            <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
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
      {{ else }}
        <div class="portada_sin_recorrido_foto_col1 sin_borde">
          <div class="img_sin_foto">
            <a href="{{ uri options="article" }}"><img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}"  /></a>
            <p class="normal_font_2" >
                  {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>
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
      {{ /if }}<!-- fin if bordes y fondo gris -->
      
    {{ /if }}<!-- fin con_recorrido, sin _recorrido, sin _recorrido_foto -->
  {{ /list_playlist_articles }}
</div>
