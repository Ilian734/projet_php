<?php 

require_once 'vue.php';


function display_tasks(){
    $tasks = [];

    $html = display_tasks_view($tasks);
    echo $html;


}

