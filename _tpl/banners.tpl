{{* Aqui metemos el de los banners de cabecera *}}
{{* La que vamos a montar es solo para saber si hay articulos sin topicos y por ende, van en la cabecera *}}
{{ list_playlist_articles name="Banner_Cabecera" }}
  {{* Miramos si es banner que no te puedes fiar del usuario *}}
  {{ if $gimme -> article -> type_name="banner" }}
    {{* Comprobamos solo los que no tienen topicos *}}
    {{ $topicos = 0 }}
    {{ list_article_topics }}
      {{ $topicos = 1 }}
    {{ /list_article_topics }}
    {{* Mostramos si hay sin topic *}}
    {{ if ($topicos == 0) }}
    <div class="row">
      <div class=".col-md-12">
        <div class="banner_cabecera">
          <div class="texto_publicidad">Publicidad</div>
          <a href="{{ $gimme -> article -> enlace }}">
          {{ image rendition="banner_cabecera" }}
            <img src="{{ $image->src }}" width="{{ $image->width }}" alt="Publicidad" />
          {{ /image }}
          </a>
        </div>
      </div>
    </div>
    {{ /if }}
  {{ /if }}
{{ /list_playlist_articles }}

