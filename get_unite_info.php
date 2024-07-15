<?php
include "db.php";

if (isset($_GET['uniteId'])) {
    $uniteId = $_GET['uniteId'];

    $sql = "SELECT km FROM UNITES WHERE ID = $uniteId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo json_encode(['kilometrage' => $row['km']]);
    } else {
        echo json_encode(['kilometrage' => 'Non trouvé']);
    }
} else {
    echo json_encode(['kilometrage' => 'Aucun ID fourni']);
}

$conn->close();
?>

