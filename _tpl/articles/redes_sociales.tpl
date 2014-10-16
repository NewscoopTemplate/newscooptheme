<div id="redes_sociales">
  <!--facebook-->
  <div id="fb-button"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>          
  <div class="fb-share-button" data-href="{{ uri options="article"}}" data-width="100" data-type="button_count"></div>
  <!-- twitter -->
  <div id="tw-button">
    <a href="https://twitter.com/share" class="twitter-share-button" data-lang="es" data-size="large">Twittear</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
  </div>
</div><!-- cierre de las redes_sociales -->