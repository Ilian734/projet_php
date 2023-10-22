<?php
function route_request() {
  $route = $_SERVER['REQUEST_URI'];


if (strtolower($route) === "/sneakers.php") {
    require_once('./DisplayTask2/controller2.php');
    return;
  }
}

route_request();