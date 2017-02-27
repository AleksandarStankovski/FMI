<?php
session_start();
error_reporting(0); 
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');
require 'dbConfig.php';

$events_id=(int)$_GET['events'];

$result=mysql_query("SELECT events_id, author FROM events WHERE events_id='$events_id'") or die(mysql_error());
$post=mysql_fetch_assoc($result);
$result=mysql_query("DELETE FROM events WHERE events_id='$events_id'") or die(mysql_error());

$delete= array('del'=>"Узпешно изтрито събитие"); 
$deletes[]=$delete; 
echo json_encode($deletes); 
?>