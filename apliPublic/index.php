<!DOCTYPE html>
<html lang="es">

    <head>
        <title> Sistema Control Absentismo </title>
        <meta charset=" UTF-8 ">
        <meta name="viewport" content=" width=device-width, initial-scale=1 ">
        <meta name="description" content=" Herramienta control de absentimo y recompensas ">
        <link rel="stylesheet" href="../styles/stylesindex.css">
        <link rel="icon" href="../images/favicon.ico">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:wght@300;400&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- Encabezado con logo y menu navegador en la aplicación. -->     
        <header class="header"> 
            <div class="containerlogomenu">
                    <a href="#" class="logo"> S.C.A </a>
                    <nav class="menu">
                        <ol>
                            <li><a href="index.php"> Principal </a></li>
                            <li><a href="../apliPrivate/privado.php"> Privado Control Horario </a></li>
                            <li><a href="../apliPrivate/edicion.php"> Privado Edición </a></li>
                        </ol>
                    </nav>
            </div>
        </header>
        
        <main>
            <div class="container">
                <?php
                /**
                 * Muestro datos de usuarios activos con formato tabla para la parte pública de aplicación 
                 * 
                 */
                    include('../apliPrivate/conexionBd.php');

                    $sentencia = $db->prepare("SELECT em.`idEmpleado`, em.`nombreCompleto`, em.`alias`, em.`email`, em.`totalPuntos`, em.`activo`, eq.`alias` 
                    FROM `empleados` em INNER JOIN `equipos` eq ON em.`idEquipo`= eq.`idEquipo` ");     
                    $sentencia -> execute();
                    $sentencia -> bind_result($idEmpleado, $nombreCompleto ,$aliasEmpleado, $email , $totalPuntos ,$activo,  $aliasEquipo);

                    echo "<table class=tabla1>";
                    echo  "<tbody><tr> <th>Alias</th>  <th>Email</th>  <th>Puntos de Mérito</th>  <th>Equipo</th>  </tr> ";
                    
                    while($sentencia->fetch()){
                        if($activo == 1){
                            echo  "<tr><td>$aliasEmpleado</td> <td>$email</td> <td>$totalPuntos</td> <td>$aliasEquipo</td> ";
                        }
                    }
                    
                    echo "</tbody></table>";

                    $sentencia->close();    
                    $db->close();
                ?> 
            </div>
        </main>

        <footer class="footer">  
            <div class="container">
                <p> Sistema Control Absentismo     Designed 2021 </p>
            </div>
        </footer>

    </body>

</html>