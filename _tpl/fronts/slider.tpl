<!-- si la lista de slider_secion contiene imagenes muestra el carrousel sino no muestra nada -->
{{$num_imagenes=0}}
{{ list_playlist_articles name="slider"}}
  {{$num_imagenes=$gimme->current_list->count}}
{{ /list_playlist_articles}}

{{ if $num_imagenes > 0}}
  <!--slider: analiza cuantos articulos hay en la lista "slider" y crea tantos sliders como haya -->
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
{{ /if }}