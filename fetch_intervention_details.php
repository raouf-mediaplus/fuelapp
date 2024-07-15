<?php
// Include database connection
include 'db.php';

// Check if intervention ID is provided
if (isset($_GET['id'])) {
    // Sanitize the input
    $interventionId = mysqli_real_escape_string($conn, $_GET['id']);

    // Query to fetch intervention details based on the ID
    $query = "SELECT * FROM InterventionsCamions WHERE InterventionCamionID = '$interventionId'";

    // Perform the query
    $result = $conn->query($query);

    // Check if the query was successful
    if ($result) {
        // Check if any rows were returned
        if ($result->num_rows > 0) {
            // Fetch the intervention details
            $intervention = $result->fetch_assoc();
            
            // Output intervention details as JSON
            echo json_encode($intervention);
        } else {
            // No intervention found with the provided ID
            echo json_encode(array('error' => 'No intervention found with the provided ID.'));
        }
    } else {
        // Error executing the query
        echo json_encode(array('error' => 'Error executing the query.'));
    }
} else {
    // Intervention ID not provided
    echo json_encode(array('error' => 'Intervention ID not provided.'));
}

// Close the database connection
$conn->close();
?>

