<!-- Footer -->
<div class="footer">
  <div class="row">
    <div class="col-md-12">
      <p>Copyright 2014 {{ list_articles ignore_issue="true" ignore_section="true" constraints="type is estaticas" }}<a href="{{ url options="article" }}">[{{ $gimme -> article -> name }}]</a>&nbsp;{{ /list_articles }}</p>
    </div>
  </div>
</div>
