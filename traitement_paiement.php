<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];


if (strtolower($route) === "/traitement_paiement.php") {
    require_once('./DisplayTask2/traitement_paiement.php');
    return;
  }
}

route_request();