<?php
include "db.php"; // Assurez-vous que db.php inclut la connexion à votre base de données

// Vérifier si le paramètre 'categorieId' est présent dans la requête GET
if (isset($_GET['categorieId'])) {
    $categorieId = $_GET['categorieId'];

    // Préparer la requête SQL pour récupérer les données de planification pour la catégorie donnée
    $sql = "SELECT INTERV.ID, INTERV.NomInterv, INTERV.CodeInterv, PL.Km, PL.Periode, PL.Observation
            FROM Plan_Intervention_Cat_Piece PL
            INNER JOIN LISTE_INTERVENTIONS  INTERV ON PL.InterventionID = INTERV.ID
            WHERE PL.CategorieID = ?";
    
    // Utilisation de déclarations préparées pour éviter les injections SQL
    if ($stmt = $conn->prepare($sql)) {
        $stmt->bind_param("i", $categorieId);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $data = array();
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
            // Retourner les données au format JSON
            echo json_encode($data);
        } else {
            // Aucune donnée trouvée pour cette catégorie
            echo json_encode(array()); // Retourner un tableau vide
        }

        $stmt->close();
    } else {
        // Erreur de préparation de la déclaration
        echo json_encode(array('error' => 'Erreur de préparation de la déclaration SQL'));
    }
} else {
    // Paramètre 'categorieId' manquant dans la requête GET
    echo json_encode(array('error' => 'Paramètre categorieId manquant'));
}

$conn->close();
?>
