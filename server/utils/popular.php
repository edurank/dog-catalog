<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$host = '192.168.5.176';
$username = 'root';
$password = '123';
$db = 'dogcatalog';

$conn = new mysqli($host, $username, $password, $db);

if ($conn->connect_error) {
  die("Error: " . $conn->connect_error);
}

$query = "SELECT * FROM popularity";
$response = $conn->query($query);

if ($response->num_rows > 0) {
  while($row = $response->fetch_assoc()) {
      echo implode(", ", $row);
  }
}

$conn->close();
