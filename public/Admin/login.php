<?php

session_start();

function is_email_valid(string $email): bool
{
    $pattern = '/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\..[a-zA-Z0-9]+$/';
    if (preg_match($pattern, $email)) {
      return true;
    }

    return  false;
}

// est-ce que j'ai un formulaire
if (count($_POST) === 2) {
  $adminEmail = "contact@gabrielpillet.com";
  $adminPassword = '87d805d9f703896ce77c5afc2b2150ead8a5d4c3';

  if (!is_email_valid($_POST['email'])) {
    die('Email invalide.');
  }

  // est-ce que mes logins sont valides
  if (
    $adminEmail === $_POST['email']
    && $adminPassword === sha1(md5('TOTO'.$_POST['password']))
  ) {
    $_SESSION['is_logged_in'] = true;

    header('Location: http://'.$_SERVER['HTTP_HOST'].'/Admin/index.php');
    exit();
  } else if(isset($errorMessage)) {
    $errorMessage = 'Mauvais indentifiant mec.';
  }
}

?>
<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
      <meta name="generator" content="Jekyll v3.8.5">
      <title>Login</title>
      <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
      <!-- Bootstrap core CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <!-- Custom styles for this template -->
      <link href="public/assets/css/login.css" rel="stylesheet">
   </head>
   <body class="text-center">
     <div class="container">
      <?php if (isset($errorMessage)) { ?>
        <div class="row">
          <div class="col-md-4 mx-auto">
          <div class="alert alert-danger" role="alert">
            <?= $errorMessage; ?>
          </div>
        </div>
        </div>
      <?php } ?>
      <style>

    html,
    body {
      height: 100%;
    }

    body {
      display: -ms-flexbox;
      display: flex;
      -ms-flex-align: center;
      align-items: center;
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: #f5f5f5;
    }

    .form-signin {
      width: 100%;
      max-width: 330px;
      padding: 15px;
      margin: auto;
    }
    .form-signin .checkbox {
      font-weight: 400;
    }
    .form-signin .form-control {
      position: relative;
      box-sizing: border-box;
      height: auto;
      padding: 10px;
      font-size: 16px;
    }
    .form-signin .form-control:focus {
      z-index: 2;
    }
    .form-signin input[type="email"] {
      margin-bottom: -1px;
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
    }
    .form-signin input[type="password"] {
      margin-bottom: 10px;
      border-top-left-radius: 0;
      border-top-right-radius: 0;
    }

    .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    }

    @media (min-width: 768px) {
    .bd-placeholder-img-lg {
        font-size: 3.5rem;
    }
    }
      </style>

      <form novalidate="novalidate" action="http://projetweb/admin/login.php" method="POST" class="form-signin">
        <img class="mb-4" src="img/bootstrap-solid.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Merci de vous identifier</h1>
        <label for="inputEmail" class="sr-only">Votre email</label>
        <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Votre adresse email" required autofocus>
        <label for="inputPassword" class="sr-only">Votre mot de passe</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Votre mot de passe" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
        <p class="mt-5 mb-3 text-muted">&copy; <?= date('Y'); ?></p>
      </form>
      </div>
   </body>
</html>
