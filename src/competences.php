<link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
<div id="section4">
    <h2>Compétences</h2>
    <hr class="barreVerticale">
            <div class="content" id="article2">
          <div class="formation">
              <p>Developpement Web</p>
              <div class="matiere">
                <p class="name">HTML</p>
                <div class="logo">
                <img src="assets/img/logoHtml.png" alt="">
                </div>
                <p class="name">CSS</p>
                <div class="logo">
                <img src="assets/img/logoCss.png" alt="">
                </div>
                <p class="name">Javascript</p>
                <div class="logo">
                <img src="assets/img/logoJs.png" alt="">
                </div>
                <p class="name">PHP</p>
                <div class="logo">
                <img src="assets/img/logoPhp.png" alt="">
                </div>
              </div>
          </div>
          <div class="formation">
              <p>Developpement Logiciel</p>
              <div class="matiere">
                <p class="name">Arduino</p>
                <div class="logo">
                <img src="assets/img/logoArduino.png" alt="">
                </div>
                <p class="name">Python</p>
                <div class="logo">
                <img src="assets/img/logoPython.png" alt="">
                </div>
                <p class="name">C</p>
                <div class="logo">
                <img src="assets/img/logoC.png" alt="">
                </div>
                <p class="name">C sharp</p>
                <div class="logo">
                <img src="assets/img/logoCsharp.png" alt="">
                </div>
              </div>
          </div>
          <div class="formation">
              <p>Infrastructure et Systeme Informations</p>
              <div class="matiere">
                <p class="name">Cisco</p>
                <div class="logo">
                <img src="assets/img/logoCisco.png" alt="">
                </div>
                <p class="name">Windows</p>
                <div class="logo">
                <img src="assets/img/logoWindows.png" alt="">
                </div>
                <p class="name">Linux</p>
                <div class="logo">
                <img src="assets/img/logoLinux.png" alt="">
                </div>
                <p class="name">Virtualisation</p>
                <div class="logo">
                <img src="assets/img/logoVM.png" alt="">
                </div>
              </div>
          </div>
        </div>
</div>

<?php
// On commence par récupérer les champs
if(isset($_POST['competence1']))      $competence1=$_POST['competence1'];
else      $competence1="";

if(isset($_POST['competence2']))      $competence2=$_POST['competence2'];
else       $competence2="";

if(isset($_POST['competence3']))      $competence3=$_POST['competence3'];
else       $competence3="";

if(isset($_POST['competence4']))      $competence4=$_POST['competence4'];
else      $competence4="";

if(isset($_POST['competence5']))      $competence5=$_POST['competence5'];
else      $competence5="";

if(isset($_POST['competence6']))      $competence6=$_POST['competence6'];
else      $competence6="";

if(isset($_POST['competence7']))      $competence7=$_POST['competence7'];
else      $competence7="";

if(isset($_POST['competence8']))      $competence8=$_POST['competence8'];
else      $competence8="";

if(isset($_POST['competence9']))      $competence9=$_POST['competence9'];
else      $competence9="";

if(isset($_POST['competence10']))      $competence10=$_POST['competence10'];
else      $competence10="";

if(isset($_POST['competence11']))      $competence11=$_POST['competence11'];
else      $competence11="";

if(isset($_POST['competence12']))      $competence12=$_POST['competence12'];
else      $competence12="";

// On vérifie si les champs sont vides
if(empty($competence1) OR empty($competence2) OR empty($competence3) OR empty($competence4) OR empty($competence5) OR empty($competence6) OR empty($competence7) OR empty($competence8) OR empty($competence9) OR empty($competence10) OR empty($competence11) OR empty($competence12))
    {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
    }

// Aucun champ n'est vide, on peut enregistrer dans la table
else
    {
       // connexion à la base
$db = mysql_connect('localhost', 'root', '') or die('Erreur de connexion '.mysql_error());
// sélection de la base

    mysql_select_db('portfolio',$db) or die('Erreur de selection '.mysql_error());

    // on écrit la requête sql
    $sql = "INSERT INTO competences_portfolio (competence1,competence2,competence3,competence4,competence5,competence6,competence7,competence8,competence9,competence10,competence11,competence12)

    VALUES($competence1','$competence1','$competence2','$competence3','$competence4','$competence5,$competence6,$competence7,$competence8,$competence9,$competence10,$competence11,$competence12,')";

    // on insère les informations du formulaire dans la table
    mysql_query($sql) or die('Erreur SQL !'.$sql.'<br>'.mysql_error());

    // on affiche le résultat pour le visiteur
    echo 'Vos infos on été ajoutées.';

    mysql_close();  // on ferme la connexion
    }
?>
