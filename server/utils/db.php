<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$host = 'autorack.proxy.rlwy.net:51574';
$db = 'railway';
$user = 'root';
$pass = 'Nhb58k_wzffihBcW5PhlGuja9Hr_6IkW';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) { 
    die("". $conn->connect_error);
}
