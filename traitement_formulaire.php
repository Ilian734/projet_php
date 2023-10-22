<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];

if (strtolower($route) === "/traitement_formulaire.php") { 
    require_once('./DisplayTask/traitement_formulaire.php');
    return;
  }
  
}

route_request();