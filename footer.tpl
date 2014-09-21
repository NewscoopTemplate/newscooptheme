<!-- Footer -->
<div class="footer">
  <div class="row">
      <div class="col-md-2">
        <h3>Secciones</h3>
        {{ list_sections }}
          <ul>
            <li><a href="{{ uri options='section' }} ">{{ $gimme -> section -> name|lower }}</a>
          </ul>
        {{ /list_sections }}
      </div>
      <div class="col-md-2">
        <h3>Social</h3>
        <ul>
          <li>Facebook</li>
          <li>Twitter</li>
        </ul>
      </div>
      <div class="col-md-8">
          <h3>Columna gorda</h3>
          <p>Habra que pensar que se pone aqui y tal y pascual y esto y lo otro</p>
      </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="letra_enana">
        Copyright 2014 - <a href="contacto.php">contacto</a> <a href="aviso_legal.html">aviso legal</a>
      </div>
    </div>
  </div>
</div>
