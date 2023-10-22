<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];

  if (strtolower($route) === "/acceuil.php") { 
    require_once('./DisplayTask/controller.php');
    return;
  }

  echo "<h1>404 NOT FOUND</h1>";
}

route_request();