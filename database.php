<?php

$hostName = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbName = "php project";

// Create connection
$conn = mysqli_connect($hostName, $dbUser, $dbPassword, $dbName);

// Check connection
if (!$conn) {
    // Use mysqli_connect_error() to get the detailed error message
    die("Connection failed: " . mysqli_connect_error());
}

// Connection successful
echo "Connected successfully";

?>
