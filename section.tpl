<!--
  Recordad que cuando la pagina de seccion a traves del menu de la
  tercera columna vuelva a ser llamada, sera una subseccion
  
  Con lo que hay que tenerlo en cuenta para los includes de cada columna

-->
<!DOCTYPE html>
<html>
<head>
  <title>Seccion/Subseccion</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script  src="{{ url static_file='_js/bootstrap.js' }}" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/bootstrap.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/front.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/header.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/nav.css' }}"/>
</head>
<body>
<div class="content">
  <div class="row">
  {{ include file='header.tpl' }}
  </div>
  <div class="row">
    {{ include file='nav.tpl' }}
  </div>
  {{ $contador=0 }}
{{ $categorias=array() }}
<!-- aqui seria de tipo prueba -->
{{ list_articles constraints="type is articulo" }}
{{$categorias[$contador]={{ $gimme->article->subseccion }} }}
{{$contador=$contador+1}}
{{ /list_articles }}
{{ $categorias = array_unique($categorias) }} 

{{ $subseccion_filtrada = $smarty.get.subseccion }}

  <div class="row">
    {{ include file='_tpl/section_main_col1.tpl' }}
    {{ include file='_tpl/section_main_col2.tpl' }}
    {{ include file='_tpl/section_main_col3.tpl' }}
  </div>
</div>
</body>
</html>

