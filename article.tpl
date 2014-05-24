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
</body>
</html>
