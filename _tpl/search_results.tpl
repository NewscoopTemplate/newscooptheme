<!DOCTYPE html>
<html>
<head>
  <title>Portada</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script  src="{{ url static_file='_js/bootstrap.jss.css' }}" type="text/javascript"></script>
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
  <div class="row">
    {{ include file='_tpl/search_results_main_col1.tpl' }}
    {{ include file='_tpl/search_results_main_col2.tpl' }}
  </div>
</div>
</div>
</body>
</html>
