<?php
include "db.php";

header('Content-Type: application/json');

if (isset($_GET['pieceId'])) {
    $pieceId = intval($_GET['pieceId']); // Assurez-vous que pieceId est un entier

    $immatriculation = "";
    $kilometrage = "";

    $sql = "SELECT u.Immatriculation, u.km
            FROM PIECES p, UNITES u
            WHERE p.UniteID_Act = u.ID AND p.ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $pieceId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $immatriculation = $row['Immatriculation'];
        $kilometrage = $row['km'];
    } else {
        echo json_encode(['error' => 'Unité Non trouvée']);
        $stmt->close();
        $conn->close();
        exit();
    }

    $stmt->close();

    echo json_encode([
        'immatriculation' => $immatriculation,
        'kilometrage' => $kilometrage
    ]);

} else {
    echo json_encode(['error' => 'Paramètre pieceId manquant']);
}

$conn->close();
?>

