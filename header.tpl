<!DOCTYPE html>
<html>
<head>
	<title>Portada</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <script  src="{{ url static_file='_js/bootstrap.jss.css' }}" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="{{ url static_file='_css/bootstrap.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/front.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/header.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/nav.css' }}"/>
</head>
<body>
	<div class="container">
		<h1>Cabecera</h1>
		<hr>
		<ul class="nav nav-pills">
		{{ list_sections }}
			<li class="seccion">
			<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
			</li>
		{{ /list_sections }}
		</ul>
		<hr>
<!-- ************************Fin del header*******************************-->
