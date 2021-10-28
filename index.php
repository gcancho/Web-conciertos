<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/main.css">

  <meta name="theme-color" content="#fafafa">
  <!-- Nuevo Link de fontawesome (actualizado)-->
  <script src="https://kit.fontawesome.com/a21ee4ed16.js" crossorigin="anonymous"></script>

  <!-- Google fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Oswald:wght@200;400;500;700&family=PT+Sans:wght@400;700&display=swap"
    rel="stylesheet">

</head>

<body>
  <!--[if IE]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  <![endif]-->

  <!-- Add your site or application content here -->
  <?php include_once 'includes/templates/header.php' ?>



  <section class="seccion contenedor">
    <h2>La mejor conferencia de diseño web en español</h2>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam, officia aliquid. Non voluptatum nemo,
      tenetur, ducimus soluta laudantium eveniet voluptate quia sint ipsam quidem minus odio quo cupiditate, ratione
      dolorum suscipit commodi tempora dicta! Inventore odit facilis sint provident quia.
    </p>
  </section>

  <section class="programa">
    <div class="contenedor-video">
      <video autoplay loop poster="bg-talleres.jpg">
        <source src="video/video.mp4" type="video/mp4">
        <source src="video/video.webm" type="video/webm">
        <source src="video/video.ogv" type="video/ogv">
      </video>
    </div>

    <div class="contenido-programa">
      <div class="contenedor">
        <div class="programa-evento">
          <h2>Programa del Evento</h2>
          <nav class="menu-programa">
            <a href="#talleres"><i class="fas fa-code" aria-hidden="true"></i> Talleres</a>
            <a href="#conferencias"><i class="fas fa-comments" aria-hidden="true"></i> Conferencias</a>
            <a href="#seminarios"><i class="fas fa-university" aria-hidden="true"></i> Seminarios</a>
          </nav>

          <div id="talleres" class="info-curso ocultar clearfix">
            <div class="detalle-evento">
              <h3>HTML5, CSS Y Javascript </h3>
              <p><i class="fa fa-clock-o" aria-hidden="true"></i> 16:00 hrs</p>
              <p><i class="fa fa-calendar" aria-hidden="true"></i> 10 de Dic</p>
              <p><i class="fa fa-user" aria-hidden="true"></i> Giovanni Cancho Buleje</p>
            </div>
            <div class="detalle-evento">
              <h3>Responsive Web Design </h3>
              <p><i class="fa fa-clock-o" aria-hidden="true"></i> 20:00 hrs</p>
              <p><i class="fa fa-calendar" aria-hidden="true"></i> 10 de Dic</p>
              <p><i class="fa fa-user" aria-hidden="true"></i> Giovanni Cancho Buleje</p>
            </div>
            <a href="#" class="button float-right">Ver todos</a>
          </div>
          <!--#talleres-->
        </div>
        <!--.programa-eveno-->
      </div>
      <!--.contenedor-->
    </div>
    <!--.contenido-programa-->
  </section>
  <!--.programa-->

  <section class="invitados contenedor seccion">
    <h2>Nuestros Invitados</h2>
    <ul class="lista-invitados clearfix">
      <li>
        <div class="invitado">
          <img src="img/invitado1.jpg" alt="imagen invitado">
          <p>Rafael Bautista</p>
        </div>
      </li>
      <li>
        <div class="invitado">
          <img src="img/invitado2.jpg" alt="imagen invitado">
          <p>Rafael Bautista</p>
        </div>
      </li>
      <div class="invitado">
        <img src="img/invitado3.jpg" alt="imagen invitado">
        <p>Rafael Bautista</p>
      </div>
      </li>
      <li>
        <div class="invitado">
          <img src="img/invitado4.jpg" alt="imagen invitado">
          <p>Rafael Bautista</p>
        </div>
      </li>
      <li>
        <div class="invitado">
          <img src="img/invitado5.jpg" alt="imagen invitado">
          <p>Rafael Bautista</p>
        </div>
      </li>
      <li>
        <div class="invitado">
          <img src="img/invitado6.jpg" alt="imagen invitado">
          <p>Rafael Bautista</p>
        </div>
      </li>
    </ul>
  </section>

  <div class="contador parallax">
    <div class="contenedor">
      <ul class="resumen-evento">
        <li>
          <p class="numero">6</p>Invitados
        </li>
        <li>
          <p class="numero">15</p>Talleres
        </li>
        <li>
          <p class="numero">3</p>Dias
        </li>
        <li>
          <p class="numero">9</p>Conciertos
        </li>
      </ul>
    </div>
  </div>

  <section class="precios seccion">
    <h2>Precios</h2>
    <div class="contenedor">
      <ul class="lista-precios clearfix">
        <li class="tabla-precio">
          <h3>Pase por un dia</h3>
          <p class="numero">$30</p>
          <ul>
            <li>Bocaditos Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
          </ul>
          <a href="#" class="button hollow">Comprar</a>
        </li>
        <li class="tabla-precio">
          <h3>Todos los dias</h3>
          <p class="numero">$50</p>
          <ul>
            <li>Bocaditos Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
          </ul>
          <a href="#" class="button hollow">Comprar</a>
        </li>
        <li class="tabla-precio">
          <h3>Pase por dos dia</h3>
          <p class="numero">$45</p>
          <ul>
            <li>Bocaditos Gratis</li>
            <li>Todas las conferencias</li>
            <li>Todos los talleres</li>
          </ul>
          <a href="#" class="button hollow">Comprar</a>
        </li>
      </ul>
    </div>
  </section>

  <div id="mapa" class="mapa"></div>

  <section class="seccion">
    <h2>Testimoniales</h2>
    <div class="testimoniales contenedor clearfix">
      <div class="testimonial">
        <blockquote>
          <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellendus vero nemo qui? Omnis molestiae
            quaerat
            perspiciatis fuga rem impedit et?</p>
          <footer class="info-testimonial clearfix">
            <img src="img/testimonial.jpg" alt="imagen testimonial">
            <cite>Oswaldo Aponte Escobedo<span>Diseñador</span></cite>
          </footer>
        </blockquote>
      </div>
      <!--Testimonial-->
      <div class="testimonial">
        <blockquote>
          <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellendus vero nemo qui? Omnis molestiae
            quaerat
            perspiciatis fuga rem impedit et?</p>
          <footer class="info-testimonial clearfix">
            <img src="img/testimonial.jpg" alt="imagen testimonial">
            <cite>Oswaldo Aponte Escobedo<span>Diseñador</span></cite>
          </footer>
        </blockquote>
      </div>
      <!--Testimonial-->
      <div class="testimonial">
        <blockquote>
          <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellendus vero nemo qui? Omnis molestiae
            quaerat
            perspiciatis fuga rem impedit et?</p>
          <footer class="info-testimonial clearfix">
            <img src="img/testimonial.jpg" alt="imagen testimonial">
            <cite>Oswaldo Aponte Escobedo<span>Diseñador</span></cite>
          </footer>
        </blockquote>
      </div>
      <!--Testimonial-->
    </div>
  </section>

  <div class="newsletter parralax">
    <div class="contenido contenedor">
      <p>registrate al newsletter</p>
      <h3>limawebcamp</h3>
      <a href="#" class="button transparente">Registro</a>
    </div><!--contenido-->
  </div><!--newsletter-->

  <section class="seccion">
    <h2>Faltan</h2>
      <div class="cuenta-regresiva contenedor">
        <ul class="clearfix">
          <li><p class="numero">2</p>dias</li>
          <li><p class="numero">15</p>horas</li>
          <li><p class="numero">5</p>minutos</li>
          <li><p class="numero">10</p>segundos</li>
        </ul>
      </div>
  </section>

  <?php include_once 'includes/templates/footer.php' ?>
  
  
  <script src="js/vendor/modernizr-3.8.0.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.4.1.min.js"><\/script>')</script>
  <script src="js/plugins.js"></script>
  <script src="js/main.js"></script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('set', 'transport', 'beacon'); ga('send', 'pageview')
  </script>
  <script src="https://www.google-analytics.com/analytics.js" async></script>
</body>

</html>