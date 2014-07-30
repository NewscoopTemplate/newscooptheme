<!--

Esta sería la parte grafica del cuadro de busqueda..

-->
<div class="search">
  {{ search_form template="_tpl/search_results.tpl" submit_button="&nbsp;" html_code="id=\"topSearch\"" button_html_code="class=\"replace\"" }}
  {{ camp_edit object="search" attribute="keywords" html_code="placeholder=\"Buscar contenido\" class=\"busca\""  }}
  {{ /search_form }}
</div>
<!--
<div class="span5">
                        <form id="seachform" name="search_articles" action="/{{ $gimme->language->code }}/{{ $gimme->issue->url_name }}/" method="POST">
                            <div class="input-append pull-right">
                                <input type="hidden" name="tpl" value="7">
                                <input type="search" id="searchinput" placeholder="Search" name="f_search_keywords">
                                <button class="btn" type="submit" name="f_search_articles"><i class="icon-search"></i></button>
                            </div>
                            <div class="clearfix"></div>
                        </form>
                    </div> -->
