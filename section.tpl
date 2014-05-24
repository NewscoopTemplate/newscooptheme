<html>
<head>
<title>Secciones</title>
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
<h1>Secciones</h1>
<ul>
<li class="seccion"><a href="http://{{ $gimme->publication->site }}">Portada</a></li>
ï¼{{ list_sections }}
<li class="seccion">
<a href="{{ uri options="section" }}" title="View all posts filed under {{ $gimme->section->name }}">{{ $gimme->section->name }}</a>
</li>
{{ /list_sections }}
</ul>
<hr>
<h2>Noticias de la seccion {{ $gimme->section->name }}</h2>
<p>Recordad que han de estar publicadas o no saldran</p>
<ul>
{{ list_articles }}
<li><a href="{{ uri options="article" }}" title="{{ $gimme->article->name }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
</ul>
<hr>
</body>
</html>
