<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/jokes.css">
    <link rel="stylesheet" href="/form.css">
    <link rel="stylesheet" type="text/css" href="https://css.cubit.md/css/buttons.css" />
    <link rel="stylesheet" type="text/css" href="https://css.cubit.md/css/form.css" />
    <title><?=$title?></title>
  </head>
  <body>
    <header>
      <h1>Internet Joke Database</h1>
      
    </header>
    <nav>
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/joke/list">Jokes List</a></li>
        <li><a href="/joke/edit">Add a new Joke</a></li>
      </ul>
    </nav>
    
    <main>
  <?=$output?>
  </main>

  <footer>
  &copy; IJDB <?php echo date('Y'); ?>
  </footer>
  </body>
</html>