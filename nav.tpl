<div class="row">
  <div class="col-xs-12">
    <ul class="menu_secciones nav_{{ $gimme->section->number }}">
    {{ list_sections }}           
      {{ if strstr({{ $smarty.server.REQUEST_URI }}, {{ uri options="section" }}) }}
      <li class="seccion nav_{{ $gimme->section->number }} estoy">
        <a  href="{{ uri options='section' }}" class="semibold_font_4">{{ $gimme->section->name|upper }}</a>
      {{ else }}
      <li class="seccion nav_{{ $gimme->section->number }}">
        <a  href="{{ uri options='section' }}" class="semibold_font_4">{{ $gimme->section->name|upper }}</a>
      {{ /if }}     
      </li>
      {{ $count=$count+1 }}
    {{ /list_sections }}
    </ul>
  </div>
</div>

<!-- ************************Fin del nav*******************************-->
