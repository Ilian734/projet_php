<?php 

require_once 'vue3.php';


function display_tasks3(){
    $tasks = [];

    $html = display_tasks_view($tasks);
    echo $html;


}

