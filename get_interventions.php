<?php
include "db.php"; // Assurez-vous d'avoir inclus votre fichier de connexion à la base de données

// Requête SQL pour récupérer toutes les interventions
$sql = "SELECT * FROM LISTE_INTERVENTIONS";
$result = $conn->query($sql);

// Vérification et construction de la réponse au format JSON
if ($result->num_rows > 0) {
    $interventions = [];
    while ($row = $result->fetch_assoc()) {
        $interventions[] = [
            'ID' => $row['ID'],
            'NomInterv' => $row['NomInterv'],
            'CodeInterv' => $row['CodeInterv']
        ];
    }
    echo json_encode($interventions);
} else {
    echo json_encode([]); // Renvoie un tableau vide si aucune intervention n'est trouvée
}

// Fermeture de la connexion à la base de données
$conn->close();
?>
