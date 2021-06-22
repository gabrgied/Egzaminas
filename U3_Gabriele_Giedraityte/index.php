<?php ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/styles.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo:wght@200;400&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <script src="js/script.js"></script>
  <body>

<header>
<img src="image/logo.png" alt="logo">
</header>

<main>
  <section>
    <h1>Naujausi kursai</h1>
    <div class="grid-container">
  <div class="grid-item">
    <img src="image/php.jpg" alt="php">
    <h2><a href="#">PHP Pagrindai</a></h2>
    <p>Autorius</p>
    <div class="line"></div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    <div class="line"></div>
    <div>
      RATING
      <i class="fa fa-comment"></i>
    </div>
  </div>
  <div class="grid-item">
    <img src="image/css.jpg" alt="css">
    <h2><a href="#">HTML/CSS Įvadas</a></h2>
    <p>Autorius</p>
    <div class="line"></div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    <div class="line"></div>
    <div>
      RATING
      <i class="fa fa-comment"></i>
    </div>
    </div>
  <div class="grid-item">
    <img src="image/git.jpg" alt="git">
    <h2><a href="#">Pažintis Su GIT</a></h2>
    <p>Autorius</p>
    <div class="line"></div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    <div class="line"></div>
    <div>
      RATING
      <i class="fa fa-comment"></i>
    </div>
  </div>
  <div class="grid-item">
    <img src="image/js.jpg" alt="javascript">
    <h2><a href="#">JavaScript Žaliems</a></h2>
    <p>Autorius</p>
    <div class="line"></div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    <div class="line"></div>
    <div>
      RATING
      <i class="fa fa-comment"></i>
    </div>
  </div>
</div>
  </section>

  <section>
    <h1>Sekite naujienas</h1>
    <h5>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</h5>
    <form name="subscribe">
      <label for="name">Vardas</label><br>
      <input type="text" id="name" name="name"><br>
      <label for="email">El.paštas</label><br>
      <input type="email" id="email" name="email"><br><br>
      <input type="button" value="Užsisakyti" onclick="validateForm()">
    </form>
  </section>
</main>

<footer>
  <div class="line"></div>
  <h5 id="copyright">&copy; 2021 Gabrielė Giedraitytė</h5>
</footer>

  </body>
</html>
<?php ?>
