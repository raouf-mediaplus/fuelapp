<?php
include "db.php";

if (isset($_GET['historiqueId'])) {
    $historiqueId = $_GET['historiqueId'];

    // Mettre à jour la table PIECES pour mettre à NULL la valeur de UniteID_Act
    $sql = "SELECT PieceID, UniteID FROM Hist_Piece_Unite WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $historiqueId);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $UniteID_Hist = $row['UniteID']; // Utilisation correcte de la clé de l'array
        $PieceID_Hist = $row['PieceID']; // Utilisation correcte de la clé de l'array
        
        // Vérifier si UniteID_Hist est NULL avant de procéder
        if ($UniteID_Hist === NULL) {
            echo json_encode(['success' => false, 'message' => 'Erreur lors de la mise à jour de la pièce.']);
        } else {
            // Mettre à jour la table PIECES pour mettre à NULL la valeur de UniteID_Act
            $sql_update = "UPDATE PIECES SET UniteID_Act = NULL WHERE ID = ? AND UniteID_Act = ?";
            $stmt_update = $conn->prepare($sql_update);
            $stmt_update->bind_param("ii", $PieceID_Hist, $UniteID_Hist);

            if ($stmt_update->execute()) {
                // Supprimer l'entrée dans la table Historique_Piece_Unite
                $sql_delete = "DELETE FROM Hist_Piece_Unite WHERE ID = ?";
                $stmt_delete = $conn->prepare($sql_delete);
                $stmt_delete->bind_param("i", $historiqueId);

                if ($stmt_delete->execute()) {
                    echo json_encode(['success' => true]);
                } else {
                    echo json_encode(['success' => false, 'message' => 'Erreur lors de la suppression de l\'historique.']);
                }
            } else {
                echo json_encode(['success' => false, 'message' => 'Erreur lors de la mise à jour de la pièce.']);
            }
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Aucune ligne trouvée pour cet ID dans l\'historique.']);
    }

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => 'ID d\'historique non fourni.']);
}
?>
