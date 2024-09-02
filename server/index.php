<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

$request = $_SERVER['REQUEST_URI'];

$url = parse_url($request, PHP_URL_PATH);

switch ($url) {
  case '/':
    echo 'Main page!';
    break;
  default:
    header("HTTP/1.0 404 Not Found");
    echo "404 Not Found";
    break;
}
