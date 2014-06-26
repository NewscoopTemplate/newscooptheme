<html>
<head>
<title>Articulo {{ $gimme->article->name }}</title>
<style>
html {
  font: 12px Arial;
}

li.seccion {
  float: left;
  margin-left: 20px;
}
</style>
</head>
<body>
<h2>Secciones para moverse y tal</h2>
<ul>
<li class="seccion"><a href="http://{{ $gimme->publication->site }}">Portada</a></li>
ï¼{{ list_sections }}
<li class="seccion">
<a href="{{ uri options="section" }}" title="View all posts filed under {{ $gimme->section->name }}">{{ $gimme->section->name }}</a>
</li>
{{ /list_sections }}
</ul>
<hr>
<p>Recordad que el $gimmie -> article -> XXXXX ha de corresponderse al nombre del campo del tipo de articulo</p>
<h1>Articulo</h1>
<h2>{{ $gimme->article->name }}</h2>
ï¼Fecha de publicacion {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y" }} en la seccion <a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
<br />
Autores: {{ list_article_authors }}
{{ $gimme->author->name }} ({{ $gimme->author->type|lower }}) {{ if !$gimme->current_list->at_end }}, {{ /if }}
{{ /list_article_authors }}
<hr>
{{if $gimme->article->has_image(1)}}Tiene imagen y la saco: <img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />{{/if}}
<p>Intro: {{ $gimme->article->intro }}</p>
<p>Texto: {{ $gimme->article->full_text }}</p>
<hr>
<hr>ï¼ï¼ï¼ï¼ï¼

<!--facebook-->
<div id="redes_sociales">
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
</body>
</html>
