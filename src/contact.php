<link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
<div id="section5">
  <h2>Centres d'intérêts et contact</h2>
  <hr class="barreVerticale">
  <div class="spaceTop">
  </div>
  <div class="spaceLeft">
  </div>
  <form>
  <div class="form">
    <label for="name">Nom</label>
    <input type="text" class="formName" placeholder="Nom">
    <label for="firstName">Prénom</label>
    <input type="text" class="formFirstName" placeholder="Prénom">
    <label for="mail">Email</label>
    <input type="email" class="formMail" placeholder="name@example.com">
    </div>
    <div class="msg">
    <label for="message">Message</label>
    <textarea class="formMsg" rows="3" placeholder="Ecrivez votre message ici"></textarea>
    </div>
    <div class="boutonFormulaire">
      <button type="submit">Envoyer</button>
</form>

<?php
// On commence par récupérer les champs
if(isset($_POST['nom']))      $nom=$_POST['nom'];
else      $nom="";

if(isset($_POST['prenom']))      $prenom=$_POST['prenom'];
else      $prenom="";

if(isset($_POST['email']))      $email=$_POST['email'];
else      $email="";

if(isset($_POST['message']))      $icq=$_POST['message'];
else      $message="";

// On vérifie si les champs sont vides
if(empty($nom) OR empty($prenom) OR empty($email) OR empty($message))
    {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
    }

// Aucun champ n'est vide, on peut enregistrer dans la table
else
    {
       // connexion à la base
$db = mysql_connect('http://localhost/phpmyadmin/db_structure.php?server=1&db=portfolio', 'root', '') or die('Erreur de connexion '.mysql_error());
// sélection de la base

    mysql_select_db('portfolio',$db) or die('Erreur de selection '.mysql_error());

    // on écrit la requête sql
    $sql = "INSERT INTO formulaire_portfolio (nom,prenom,email,message) VALUES('$nom','$prenom','$email','$message')";

    // on insère les informations du formulaire dans la table
    mysql_query($sql) or die('Erreur SQL !'.$sql.'<br>'.mysql_error());

    // on affiche le résultat pour le visiteur
    echo 'Vos infos on été ajoutées.';

    mysql_close();  // on ferme la connexion
    }
?>

