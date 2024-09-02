<?php

include 'db.php';

$thedogapi = "https://api.thedogapi.com/v1/";

function getDogBreeds() {
    global $thedogapi;
    $response = file_get_contents($thedogapi . "breeds?limit=25&page=2");
    if ($response === FALSE) {
        die("". $thedogapi);
   }
    $rData = json_decode($response, true);

    //print_r($rData);

    foreach ($rData as $dog) {
        insertDog($dog);
    }
}

function insertDog($dog) {
    global $conn;
    $imageUrl = getDogImageUrl($dog['reference_image_id']);

    echo "inserting breed";

    $stmt = $conn->prepare("CALL InsertBreed (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssssssssss", 
        $dog['id'],
        $dog['name'],
        $dog['weight']['imperial'],
        $dog['weight']['metric'],
        $dog['height']['imperial'],
        $dog['height']['metric'],
        $dog['bred_for'],
        $dog['breed_group'],
        $dog['life_span'],
        $dog['temperament'],
        $dog['origin'],
        $dog['reference_image_id'],
        $imageUrl
    );

    if ($stmt->execute()) {
        echo $dog['name'];
    } else {
        print_r($stmt->error);
    }
    $stmt->close();
}

function getDogImageUrl($imgUrl) {
    global $thedogapi;
    $response = file_get_contents($thedogapi . "images/". $imgUrl . "?sub_id&size&include_vote=&include_favourite");
    if ($response === FALSE) {
        die("". $thedogapi);
   }
    $rData = json_decode($response, true);
    return $rData['url'];
}

function getBreedsByPopularity($countryCode) {
    global $conn;

    $stmt = $conn->prepare("CALL GetBreedsByPopularity(?)");
    $stmt->bind_param("s", $countryCode);
    
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        $breeds = [];
        while ($row = $result->fetch_assoc()) {
            $breeds[] = $row;
        }

        echo json_encode($breeds);
    } else {
        echo "Error: " . $stmt->error . "<br>";
    }
    
    // Close the statement
    $stmt->close();
}