<?php
include "db.php";

if (isset($_GET['pieceId'])) {
    $pieceId = intval($_GET['pieceId']);

    $sql = "SELECT h.ID, h.UniteID, u.Immatriculation, h.Date_Install, h.Date_Fin, h.Km_Install, h.Km_Fin 
            FROM Hist_Piece_Unite h, UNITES u
            WHERE h.UniteID = u.ID and h.PieceID = $pieceId";
    
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $history = [];
        while($row = $result->fetch_assoc()) {
            $history[] = $row;
        }
        echo json_encode($history);
    } else {
        echo json_encode([]);
    }
} else {
    echo json_encode([]);
}

$conn->close();
?>


