
<?php
/**
 * conexion a la base de datos controlabsentismo de nuestra aplicación 
 */
    $servidor = "localhost"; 
    $user = "root"; 
    $password = null; 
    $database = "controlabsentismo"; 
    $db = new mysqli($servidor,$user, $password,$database); 
    if($db->connect_error){ 
        die("La conexión con la bd ha fallado, error: " . $db->connect_errno . ": ". $db->connect_error); 
    } 