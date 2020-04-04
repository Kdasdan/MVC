<?php
include './db/groupe_musique.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="scss/style.css" />
    <title>MVC</title>
  </head>
  <body>
    <?php
      try {
        include './db/groupe_musique.php';
    ?>
    <h1>Les groupes de musique</h1>
    <div class="container">
      <form action="./index.php" method="GET">
        <select name="groupe" id="">
          <?php 
            $req = $db->query("SELECT id, nom_groupe FROM groupes");
            echo "<option selected>Sélectionner...</option>";
            while ($donnees = $req->fetch()) {
              echo "<option value=".$donnees['id'].">".$donnees['nom_groupe']."</option>";
            }    
          ?>
        </select>
        <input type="submit" value="Afficher les membres" id="btn">
        <div class="box">
          <?php include './traitements/t_index.php'; ?>
        </div>
      </form>
    </div>
    <?php
      } catch (PDOException $e) {
        echo "Error :"." ".$e->getMessage();
      }
    ?>
  </body>
</html>
