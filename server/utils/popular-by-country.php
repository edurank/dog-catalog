<?php
include 'db.php';
include 'thedogapi.php';

$country_code = 'BR';

if(isset($_GET['country'])){
  $country_code = $_GET['country'];
}

getBreedsByPopularity($country_code);

$conn->close();
