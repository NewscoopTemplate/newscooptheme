{{php}}
  $template->assign("fecha_hoy",date("d-M-Y"));
{{/php}}
<!-- Footer -->
<div class="footer">
  <div class="row">
    <div class="col-md-12">
      <p>Copyright {{ $fecha_hoy|camp_date_format:"%Y"}}&nbsp;&nbsp;{{ list_playlist_articles name="estaticas" }}<a href="{{ url options="article" }}">[{{ $gimme -> article -> name }}]</a>&nbsp;{{ /list_playlist_articles }}</p>
    </div>
  </div>
</div>
