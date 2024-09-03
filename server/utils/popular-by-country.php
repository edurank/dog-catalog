<?php
include 'db.php';
include 'thedogapi.php';

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$country_code = 'BR';

if(isset($_GET['country'])){
  $country_code = $_GET['country'];
}

getBreedsByPopularity($country_code);

$conn->close();
