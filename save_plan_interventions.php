<?php
include "db.php";

$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['categorieId']) && isset($data['newInterventions'])) {
    $categorieId = $data['categorieId'];
    $newInterventions = $data['newInterventions'];

    foreach ($newInterventions as $intervention) {
        $interventionId = $intervention['interventionId'];
        $km = $intervention['km'];
        $date = $intervention['date'];
        $observation = $intervention['observation'];

        $sql = "INSERT INTO Plan_Intervention_Cat_Piece (CategorieID, InterventionID, Km, Date_Intervension, Observation) 
                VALUES ($categorieId, $interventionId, $km, '$date', '$observation')";

        if (!$conn->query($sql)) {
            echo json_encode(['success' => false, 'message' => 'Erreur lors de l\'insertion']);
            exit;
        }
    }

    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'Données manquantes']);
}

$conn->close();
?>

