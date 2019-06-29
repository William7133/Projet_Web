<?php

    $nom ="";
    $prenom ="";
    $mail ="";
    $message = "";

    if (!empty($_POST)) {
      $nom = ($_POST["nom"]);
      $prenom =($_POST["prenom"]);
      $mail = ($_POST["mail"]);
      $message = ($_POST["message"]);

      $bdd = new PDO('mysql:host=localhost;dbname=portfolio;charset=utf8', 'root', '');

      $statement = $bdd->prepare('
        INSERT INTO formulaire (NOM, PRENOM, MAIL, TEXTE)
        VALUES ("'.$nom.'", "'.$prenom.'", "'.$mail.'","'.$message.'");
        ');
      $statement->execute();
    }

    ?>

<link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
<div id="section5">
  <h2>Centres d'intérêts et contact</h2>
  <hr class="barreVerticale">
  <div class="spaceTop">
  </div>
  <div class="sport">
    <img src="assets/img/handball.png" class="logoSport">
    <p>Handball / 3ans</p>
    <img src="assets/img/tennis.png" class="logoSport">
    <p>Tennis / 3 ans</p>
    <img src="assets/img/run.png" class="logoSport" text-align="center">
    <p>Course à pied / Actuellement</p>
    <img src="assets/img/computer.png" class="logoSport">
    <p>Informatique / Jeux vidéos</p>
  </div>
  <div class="spaceLeft">
  </div>
  <form name="my_form" action="http://projetweb/#section1" method="POST">
  <div class="form">
    <label for="name" name="nom">Nom</label>
    <input type="text" class="formName" placeholder="Nom" name="nom">
    <label for="firstName" name="prenom">Prénom</label>
    <input type="text" class="formFirstName" placeholder="Prénom" name="prenom">
    <label for="mail" name="mail">Email</label>
    <input type="mail" class="formMail" placeholder="name@example.com" name="mail">
    </div>
    <div class="msg">
    <label for="message" name="message">Message</label>
    <textarea class="formMsg" rows="3" placeholder="Ecrivez votre message ici" name="message"></textarea>
    </div>
    <div class="boutonFormulaire">
      <button type="submit" class="buttonSubmit">Envoyer</button>
    </div>
</form>
</div>


