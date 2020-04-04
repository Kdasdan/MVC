<?php
$user = 'root';
$password = '';
$name = 'groupe_musique';
$hote = '127.0.0.1';

$db = new PDO("mysql:host=$hote; dbname=$name", $user, $password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
?>