<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gestion_camions";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $description = $_POST['description'];
    $responsable = $_POST['responsable'];
    $camion = $_POST['camion'];
    $type = $_POST['typeIntervention'];
    $cout = $_POST['cout'];
    $statut = $_POST['statut'];

    $day = $_POST['day'];
    $month = $_POST['month'];
    $date = date("Y") . "-" . $month . "-" . $day;

    $sql = "INSERT INTO InterventionsCamions (CamionID, DateIntervention, TypeIntervention, Description, Responsable, Cout, Statut)VALUES ('$camion', '$date', '$type', '$description', '$responsable', '$cout', '$statut')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}

header("Location: plan.php");
exit();
?>

