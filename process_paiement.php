<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];


if (strtolower($route) === "/process_paiement.php") {
    require_once('./DisplayTask3/process_paiement.php');
    return;
  }
}

route_request();