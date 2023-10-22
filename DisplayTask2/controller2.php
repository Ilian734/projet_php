<?php 

require_once 'vue2.php';


function display_tasks2(){
    $tasks = [];

    $html = display_tasks_view($tasks);
    echo $html;


}

