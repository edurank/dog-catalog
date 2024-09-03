<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$host = 'sql.freedb.tech';
$db = 'freedb_dogcatalog';
$user = 'freedb_userf';
$pass = 'hNg@%U6jr!&2sXH';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) { 
    die("". $conn->connect_error);
}
