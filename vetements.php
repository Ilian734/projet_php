<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];


if (strtolower($route) === "/vetements.php") {
    require_once('./DisplayTask3/vetements.php');
    return;
  }
}

route_request();