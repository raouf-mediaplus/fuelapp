<?php
include "db.php";

if (isset($_GET['categorieId'])) {
    $categorieId = $_GET['categorieId'];

    $sql = "SELECT * FROM Categorie_Piece WHERE ID = $categorieId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $data = [
            'designation' => $row['Designation_categorie'],
            'image' => $row['Image']
        ];
        echo json_encode($data);
    } else {
        echo json_encode('Erreur: Catégorie non trouvée.');
    }
} else {
    echo json_encode('Erreur: ID de catégorie non spécifié.');
}

$conn->close();
?>

