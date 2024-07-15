<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "db.php";

$pieceId = $_GET['pieceId'];

if ($pieceId != NULL) {

		$ancUniteImmatriculation = $_GET['ancUniteImmatriculation'];
		$ancKilometrage = $_GET['ancKilometrage'];
		$newuniteId = $_GET['newuniteId'];
		$dateInstall = $_GET['dateInstall'];
		$kilometrageInstall = $_GET['kilometrageInstall'];
		$responsable = $_GET['responsable'];
		$observation = "Montage de la pièce $pieceId sur l'unité $newuniteId par $responsable";


	// Chercher dans Hist_Piece_Unite l'unité actuelle sur laquelle la pièce est montée (donc la ligne où Km_Fin est null) et mettre à jour son Km_Fin vers $ancKilometrage
		$stmt = $conn->prepare("UPDATE Hist_Piece_Unite SET Date_Fin = ?, Km_Fin = ? WHERE PieceID = ? AND (Date_Fin IS NULL OR Km_Fin IS NULL)");
		if ($stmt === false) {
			die("Erreur de préparation de la requête: " . $conn->error);
		}
		$stmt->bind_param("sii", $dateInstall, $ancKilometrage, $pieceId);
		if ($stmt->execute() === false) {
			die("Erreur d'exécution de la requête: " . $stmt->error);
		}
		$stmt->close();

	// Mettre à jour Unite_Act dans PIECES
		$stmt = $conn->prepare("UPDATE PIECES SET UniteID_Act = ? WHERE ID = ?");
		if ($stmt === false) {
			die("Erreur de préparation de la requête: " . $conn->error);
		}
		$stmt->bind_param("ii", $newuniteId, $pieceId);
		if ($stmt->execute() === false) {
			die("Erreur d'exécution de la requête: " . $stmt->error);
		}
		$stmt->close();

	// Ajouter le nouveau montage de la pièce
		$stmt = $conn->prepare("INSERT INTO Hist_Piece_Unite (PieceID, UniteID, Date_Install, Km_Install, Observation) VALUES (?, ?, ?, ?, ?)");
		if ($stmt) {
			$stmt->bind_param("iisis", $pieceId, $newuniteId, $dateInstall, $kilometrageInstall, $observation);
			if ($stmt->execute()) {
				$stmt->close();
				$conn->close();
				// Rediriger vers install_piece.php après une insertion réussie
				header("Location: install_piece.php?ID=$pieceId");
				exit();
			} else {
				echo json_encode(["success" => false, "message" => "Erreur lors de l'ajout de la ligne : " . $stmt->error]);
			}
			$stmt->close();
		} else {
			echo json_encode(["success" => false, "message" => "Erreur de préparation de la requête : " . $conn->error]);
		}
		$conn->close();
}
?>

