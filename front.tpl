<html>
<head>
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
{{ include file='header.tpl' }}
<div class="row">
{{ include file='_tpl/front_main_col1.tpl' }}
	{{ include file='_tpl/front_main_col2.tpl' }}
	{{ include file='_tpl/front_main_col3.tpl' }}
</div>
</body>
</html>
