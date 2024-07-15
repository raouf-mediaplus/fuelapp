<?php
include "db.php"; // Assurez-vous que ce fichier inclut votre connexion à la base de données

// Requête pour mettre à jour le kilométrage de l'unité
        $updateSql = "UPDATE UNITES SET km = km+5000";
        if ($conn->query($updateSql) !== TRUE) {
            echo "Erreur lors de la mise à jour du kilométrage pour l'unité ID: $unitId";
        }

$conn->close();
?>
