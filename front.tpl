<html>
<head>
<title>Portada</title>
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
<h1>Portada</h1>
<h3>￼￼Edicion numero {{ $gimmie -> issue -> number }}: {{ $gimme->issue->name }}</h3>
<ul>
<li>Published: {{ $gimme->issue->publish_date|camp_date_format:"%e. %M %Y" }}</li> <li>Using template: {{ $gimme->issue->template->name }}</li>
<li>Inside publication: {{ $gimme->issue->publication->name }}</li>
<li>URL name: .../{{ $gimme->issue->url_name }}/</li>
<li>Latest issue? {{ if $gimme->issue->is_current }}yes{{ else }}no{{ /if }}</li> </ul>
<hr>
<p><strong>Listado de secciones</strong></p>
<ul>
￼{{ list_sections }}
<li class="seccion">
<a href="{{ uri options="section" }}" title="View all posts filed under {{ $gimme->section->name }}">{{ $gimme->section->name }}</a>
</li>
{{ /list_sections }}
</ul>￼
￼<hr>
<p><strong>Listado de noticias en lista portada</strong></p>
{{ list_articles }}
 
    <a href="{{ uri options="article" }}" title="{{ $gimme->article->name }}">{{ $gimme->article->name }}</a><br>

{{ /list_articles }}
<hr>
<h2>URL</h2>
http://{{ $gimme->publication->site }}
</body>
</html>
