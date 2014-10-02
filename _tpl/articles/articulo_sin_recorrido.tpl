{{* Articulo SIN recorrido *}}
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
	              
	              
	            </div> {{* fin de las imagenes *}}
	            <div class="icono">
	              <img src="{{ url static_file='dummy/rrss/camera-icon-th.png' }}" />
	            </div> {{* fin del icono *}}
	          </div> {{* fin del contenedor de la imagen *}}
	        {{ else }}
	          <div class="imagen" style="display:none;">
	            <a href="{{ $gimme->article->image->imageurl }}" data-lightbox="articulo_{{ $gimme->article->number}}" >
	              <img src="{{ $gimme->article->image->imageurl }}" alt="{{ $gimme->image->description }}" style="display:none;" />
	            </a>
	          </div> {{* fin de los independientes para el lightbox *}}
	        {{ /if }}
	       
	      {{ elseif $gimme->current_list->count == 2 }} {{* Si hay 2 *}}
	      
	        
	        {{ if $gimme -> current_list -> index == 1 }} {{* Si estamos en la primera *}}
	          {{ $caca = 1 }}
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
	            
	          </div> {{* fin del row *}}
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
	      
	      {{* ATENCION Esto es una ñapa porque los divs estan hechos un cristo, hay que recolocarlos *}}
	      {{ if $caca==1 }}
	        </div>
	      {{ /if }}
	      
	      </aaaaadiv>
	   
	    <!-- pie de foto -->
	    <p class="normal_font_2" >
	      {{ $gimme->article->image->description }} / {{ $gimme->article->image->photographer|upper }}</p>  
	    </div>        
	  {{ /if }} {{* Fin de si hay imagenes *}} 
	  </div>
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
	  
	  {{* Redes Sociales *}}
      {{ include file='_tpl/articles/redes_sociales.tpl' }}
     {{ /if }}
</div>           
      
     
      
      
