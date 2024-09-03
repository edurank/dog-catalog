<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include 'db.php';

$query = "SELECT * FROM popularity";
$response = $conn->query($query);

if ($response->num_rows > 0) {
  while($row = $response->fetch_assoc()) {
      echo implode(", ", $row);
  }
}

$conn->close();
