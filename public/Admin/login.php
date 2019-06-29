<?php

session_start();
$admin_mail = "william@gmail.com";
$admin_password = "1234";
$badinfo = false;

if(
  count($_POST) == 2
  && $_POST["password"] === $admin_password
  && $_POST["mail"] === $admin_mail
  ) {
    $_SESSION["isLogged"] = true;
    header("Location: http://".$_SERVER["HTTP_HOST"]."/admin/accueilAdmin.php");
    exit();
  } else {
    if(isset($_POST["password"]) && $_POST["mail"]){
      $badinfo = true;
    }
  }
?>

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

      <form novalidate="novalidate" action="" method="POST" class="form-signin">
        <img class="mb-4" src="img/bootstrap-solid.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Merci de vous identifier</h1>
        <label for="inputEmail" class="sr-only">Votre email</label>
        <input name="mail" type="email" id="inputEmail" class="form-control" placeholder="Votre adresse email" required autofocus>
        <label for="inputPassword" class="sr-only">Votre mot de passe</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Votre mot de passe" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
        <p class="mt-5 mb-3 text-muted">&copy; <?= date('Y'); ?></p>
      </form>
      </div>
   </body>
</html>
