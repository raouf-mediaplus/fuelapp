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
    $day = $_POST['day'];
    $month = $_POST['month'];
    $datePrevue = date("Y") . "-" . $month . "-" . $day;

    $sql = "INSERT INTO Planifications (InterventionID, DatePrevue, Description, Responsable, day, month)
            VALUES ($camion, '$datePrevue', '$description', '$responsable', $day, $month)";

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

