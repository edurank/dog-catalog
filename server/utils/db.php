<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$host = '192.168.5.176:3306';
$db = 'dogcatalog';
$user = 'root';
$pass = '123';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) { 
    die("". $conn->connect_error);
}
