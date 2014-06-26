<!--

  Esta sería la parte grafica del cuadro de busqueda..

-->
<div class="search">
  {{ search_form template="_tpl/search_results_main_col1.tpl" submit_button="&nbsp;" html_code="id=\"topSearch\"" button_html_code="class=\"replace\"" }}
    <p class="fields">
      {{ camp_edit object="search" attribute="keywords" html_code="id=\"s\"" }}
    </p>
  {{ /search_form }}
</div>
