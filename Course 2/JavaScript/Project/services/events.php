<?php
    header('Access-Control-Allow-Origin: *');
    header('Content-type: application/json');
    include 'dbConfig.php';
    $query=mysql_query("SELECT events_id, img, title FROM `events` ORDER BY `events_id` DESC LIMIT 10");
    while($row=mysql_fetch_array($query)){   	
        $post= array('href'=>"$row[events_id]", 'src'=>"$row[img]", 'text'=>"$row[title]"); 
        // $post= array('href'=>"../services/read_more.php?post=$row[post_id]", 'text'=>"$row[title]"); 
        $posts[]=$post;           
    }
    echo json_encode($posts);      
    
?>