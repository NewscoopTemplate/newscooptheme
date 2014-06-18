<!--

	Aqui va la cabecera

-->
<div class="col-md-12">
	<h1>Cabecera</h1>
	<!-- temporalmente, el cuadro de búsqueda aqui-->
<div class="search">
{{ search_form template="_tpl/search.tpl" submit_button="&nbsp;"
html_code="id=\"topSearch\"" button_html_code="class=\"replace\"" }}
<p class="fields">
{{ camp_edit object="search" attribute="keywords" html_code="id=\"s\""
}}
</p>
{{ /search_form }}
</div>

</div>
</div>


