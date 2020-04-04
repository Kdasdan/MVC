<?php
if (isset($_GET['groupe'])) {
  $id_groupes = (int)$_GET['groupe'];
  $req = $db->query ("SELECT * FROM groupes WHERE id=$id_groupes");
  while ($donnees = $req->fetch()) {
      echo "
        <h5>Nom du groupe</h5>
        <p>".$donnees['nom_groupe']."</p>
        <h5>Date de création</h5>
        <p>".$donnees['date_creation']."</p>
      ";
      $req = $db->query(
        "SELECT 
          nom,
          prenom,
          id_groupes
        FROM 
          j_membres_groupes 
        INNER JOIN 
          membres
        ON 
          membres.id = j_membres_groupes.id_membres
        WHERE id_groupes = $id_groupes"
      );
      echo '
          <table>
          <tr>
            <th>Nom</th>
            <th>Prénom</th>
          </tr>
      ';
      while ($donnees = $req->fetch()){
        echo"
          <tr>
            <td>".$donnees['nom']."</td>
            <td>".$donnees['prenom']."</td>
          </tr>
        ";
      }
      echo"
        </table>
      ";
  }
}
?>