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
<div class="content">
	<div class="row">
	{{ include file='header.tpl' }}
	</div>
	<div class="row">
	{{ include file='nav.tpl' }}
	</div>
	<div class="row">
		{{ include file='_tpl/front_main_col1.tpl' }}
		{{ include file='_tpl/front_main_col2.tpl' }}
		{{ include file='_tpl/front_main_col3.tpl' }}
	</div>
</div>
</body>
</html>
