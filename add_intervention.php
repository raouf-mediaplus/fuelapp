<?php
include "db.php"; // Assurez-vous d'avoir inclus votre fichier de connexion à la base de données

// Vérification et récupération des données du formulaire
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nomIntervention = $_POST['nomIntervention'];
    $codeIntervention = $_POST['codeIntervention'];

    // Préparation de la requête SQL
    $sql = "INSERT INTO LISTE_INTERVENTIONS (NomInterv, CodeInterv) VALUES (?, ?)";
    
    // Utilisation des requêtes préparées pour éviter les injections SQL
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $nomIntervention, $codeIntervention);

    // Exécution de la requête
    if ($stmt->execute()) {
        $response = [
            'success' => true,
            'message' => 'Nouvelle intervention ajoutée avec succès!'
        ];
    } else {
        $response = [
            'success' => false,
            'message' => 'Erreur lors de l\'ajout de l\'intervention.'
        ];
    }

    // Envoi de la réponse au format JSON
    header('Content-Type: application/json');
    echo json_encode($response);
}

// Fermeture de la connexion à la base de données
$conn->close();
?>
