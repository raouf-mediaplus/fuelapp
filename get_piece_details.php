<?php
include "db.php";

header('Content-Type: application/json');

if (isset($_GET['pieceId'])) {
    //Extraire les details principales de la pièce
    $pieceId = intval($_GET['pieceId']); 
    $categorie = "";    $code = "";    $image = "";
    $sql = "SELECT p.Image, p.CategorieID, p.code, cp.Designation_categorie 
            FROM PIECES p, Categorie_Piece cp 
            WHERE cp.ID = p.categorieID AND p.ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $pieceId);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $categorie = $row['Designation_categorie'];
        $categorieId = $row['CategorieID'];
        $code = $row['code'];
        $image = $row['Image'];
    } else {
        echo json_encode(['error' => 'Pièce de rechange Non trouvée']);
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    //Calcul du kilometrage total de la pièce
                    $sql = "SELECT SUM(Km_Fin - Km_Install) AS total_kilometrage
                            FROM Hist_Piece_Unite
                            WHERE PieceID = $pieceId AND Km_Fin IS NOT NULL";
                    $result = $conn->query($sql);
                    $kilometrageTotal = 0;
                    if ($result->num_rows > 0) {
                        $row = $result->fetch_assoc();
                        $kilometrageTotal = $row['total_kilometrage'];
                        //  Add to $kilometrageTotal le kilométrage du dernier montage sur l'unité actuelle si présent
                        $sql_last_install = "SELECT Km_Install
                                            FROM Hist_Piece_Unite
                                            WHERE PieceID = $pieceId AND Km_Fin IS NULL";
                        $result_last_install = $conn->query($sql_last_install);
                        if ($result_last_install->num_rows > 0) {
                            $row_last_install = $result_last_install->fetch_assoc();
                            $km_Install_last = $row_last_install['Km_Install'];
                            // Calcul du kilométrage parcouru pour le dernier montage
                            // (Récupérer le kilométrage actuel de l'unité actuelle de la pièce)
                            $sql_unite_actuelle = "SELECT Km
                                                FROM UNITES
                                                WHERE ID = (SELECT UniteID_Act FROM PIECES WHERE ID = $pieceId)";
                            $result_unite_actuelle = $conn->query($sql_unite_actuelle);
                            if ($result_unite_actuelle->num_rows > 0) {
                                $row_unite_actuelle = $result_unite_actuelle->fetch_assoc();
                                $km_actuel_unite_actuelle = $row_unite_actuelle['Km'];
                                // Calcul du kilométrage total
                                $kilometrageTotal += ($km_actuel_unite_actuelle - $km_Install_last);
                            }
                        }
                    }

                    








    echo json_encode([
        'categorieId' => $categorieId,
        'categorie' => $categorie,
        'code' => $code,
        'kilometrageTotal' => $kilometrageTotal,
        'image' => $image
    ]);

} else {
    echo json_encode(['error' => 'Paramètre pieceId manquant']);
}

$conn->close();
?>

