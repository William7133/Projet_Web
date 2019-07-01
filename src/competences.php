<link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
<?php

 $bdd = new PDO('mysql:host=localhost;dbname=portfolio;charset=utf8', 'root', '');

$statement = $bdd->prepare('SELECT * FROM competence');
$statement->execute();

$competences = $statement->fetchall(\PDO::FETCH_ASSOC);


?>
<div id="section4">
    <h2>Compétences</h2>
    <hr class="barreVerticale">
            <div class="content" id="article2">
          <div class="formation">
              <p>Developpement Web</p>
              <div class="matiere">
                <p class="name"><?= $competences[0]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoHtml.png" alt="logo HTML">
                </div>
                <p class="name"><?= $competences[1]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoCss.png" alt="logo CSS">
                </div>
                <p class="name"><?= $competences[2]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoJs.png" alt="logo Javascript">
                </div>
                <p class="name"><?= $competences[3]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoPhp.png" alt="logo PHP">
                </div>
              </div>
          </div>
          <div class="formation">
              <p>Developpement Logiciels</p>
              <div class="matiere">
                <p class="name"><?= $competences[4]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoArduino.png" alt="logo Arduino">
                </div>
                <p class="name"><?= $competences[5]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoPython.png" alt="logo Python">
                </div>
                <p class="name"><?= $competences[6]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoC.png" alt="logo langage C">
                </div>
                <p class="name"><?= $competences[7]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoCsharp.png" alt="logo Csharp">
                </div>
              </div>
          </div>
          <div class="formation">
              <p>Infrastructures et Systemes Informations</p>
              <div class="matiere">
                <p class="name"><?= $competences[8]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoCisco.png" alt="logo Cisco">
                </div>
                <p class="name"><?= $competences[9]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoWindows.png" alt="logo Windows">
                </div>
                <p class="name"><?= $competences[10]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoLinux.png" alt="logo Linux">
                </div>
                <p class="name"><?= $competences[11]['NOM']?></p>
                <div class="logo">
                <img src="assets/img/logoVM.png" alt="logo VMware">
                </div>
              </div>
          </div>
        </div>
</div>


