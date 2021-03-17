<!DOCTYPE html>
<html lang="es">

    <head>
        <title> Sistema Control Absentismo </title>
        <meta charset=" UTF-8 ">
        <meta name="viewport" content=" width=device-width, initial-scale=1 ">
        <meta name="description" content=" Herramienta control de absentimo y recompensas ">
        <link rel="stylesheet" href="../styles/stylesedicion.css">
        <link rel="icon" href="../images/favicon.ico">
    </head>
    <body>

        <header class="header"> 
            <div class="containerlogomenu">
                    <a href="#" class="logo"> S.C.A </a>
                    <nav class="menu">
                        <ol>
                            <li><a href="../apliPublic/index.php"> Principal </a></li>
                            <li><a href="privado.php"> Privado Control Horario </a></li>
                            <li><a href="edicion.php"> Privado Edición </a></li>
                        </ol>
                    </nav>
            </div>
        </header>
        
        <main>
            <div class="container">
            
            <!-- formularios para obtencion de datos, genera informe, registra empleado a la api, editar usuario, y activa o desactiva empleado -->
             
                <form method="POST" enctype="application/x-www-form-urlencoded" action="edicion.php">
                    <fieldset>
                        <legend>Informes</legend>
                        <div><label> Fecha: <input type="date" name="fecha" required><label></div>
                        <div class="button"><button type="submit" name="enviar"> Generar </button></div>
                    </fieldset>
                </form>
                
                <form method="POST" enctype="application/x-www-form-urlencoded" action="edicion.php">
                    <fieldset>
                        <legend> Registro Nuevo Usuario</legend>
                        <div><label> Nombre y apellidos: <input type="text" name="nombreCompleto" required><label></div>
                        <div><label> Alias: <input type="text" name="alias" required><label></div>
                        <div><label> Email: <input type="email" name="email" required><label></div>
                        <div><label> Salario: <input type="number" min="0.00" max="99999.99" placeholder="3000.80" name="salario" ><label></div>
                        <div><label> Id Equipo: <input type="number" name="idequipo" min="1" placeholder=" 1 sin equipo "required><label></div>
                        <div class="button"><button type="submit"> Generar </button></div>
                    </fieldset>
                </form>
                
                <form method="POST" enctype="application/x-www-form-urlencoded" action="edicion.php">
                    <fieldset>
                        <legend> Editar Usuario</legend>
                        <div><label> Id Empleado: <input type="number" name="idEmpleadoX" required><label></div>
                        <div><label> Nombre y apellidos: <input type="text" name="nombreCompletoX" required><label></div>
                        <div><label> Alias: <input type="text" name="aliasX" required><label></div>
                        <div><label> Email: <input type="email" name="emailX" required><label></div>
                        <div><label> Salario: <input type="number" min="0.00" max="99999.99" placeholder="3000.80" name="salarioX" required><label></div>
                        <div><label> Id Equipo: <input type="number" name="idequipoX" min="1" placeholder=" 1 sin equipo "required><label></div>
                        <div class="button"><button type="submit"> Generar </button></div>
                    </fieldset>
                </form>

                <form method="POST" enctype="application/x-www-form-urlencoded" action="edicion.php">
                    <fieldset>
                        <legend> Activar o Desactivar Usuario </legend>
                        <div><label> Id Empleado: <input type="number" name="id" min="0" required><label></div>
                        <div><label> Activar <input type="radio" name="activar" value="1" required><label></div>
                        <div><label> Desactivar <input type="radio" name="activar" value="0" required><label></div>
                        <div class="button"><button type="submit"> Generar </button></div>
                    </fieldset>
                </form>

                <?php
                    include('conexionBd.php');
                    /**
                     * Generar Informes a fecha concreta introducida , mi formulario de 
                     */
                    if(isset($_POST['enviar'])){

                        $param1 = $_POST['fecha'];
                        $sentencia = $db->prepare(" SELECT i. `fecha`, i.`totalPuntos`, e.`nombreCompleto`
                        FROM `empleados` e INNER JOIN `informes` i ON e.`idEmpleado` = i.`idEmpleado` WHERE i.`fecha` = '$param1' ");
                        // $sentencia -> bind_param('s', $param1);
                        
                        // var_dump($param1);
                        $sentencia -> execute();

                        $fechaActual = date('Y-m-d');
                        // if($sentencia->num_rows > 0){ 
                            $sentencia ->bind_result($fecha, $totalPuntos, $nombreCompleto);
                            $fichero = fopen("informe_$fechaActual.txt","w");
                            fwrite($fichero, "fechaInforme    totalPuntos    Nombre \n\n");
                            while($sentencia->fetch()){
                                // echo "$fecha, $totalPuntos, $nombreCompleto";
                                fwrite($fichero, "$fecha        $totalPuntos         $nombreCompleto \n");
                            }
                            $sentencia -> close();
                            fclose($fichero);
                            echo "<div class=smsImportante> Su informe se generó en directorio /apli/informe_$fechaActual.txt <div>"; 
                        // }
                        // else{
                        //     echo "<div class=smsImportante> No existe registro para fecha $param1, vuelva a intentarlo <div>";
                        // }
                    }
                    /**
                     * Registro nuevo usuario
                     */
                    if(isset($_POST['nombreCompleto'])){
                        $sentencia = $db->prepare("INSERT INTO `empleados`(`idequipo`, `nombreCompleto`,`alias`,`email`,`salario`) VALUES (?,?,?,?,?)");
                        $sentencia ->bind_param('isssi', $param1, $param2, $param3, $param4, $param5);
                        $param1 = $_POST['idequipo'];
                        $param2 = $_POST['nombreCompleto'];
                        $param3 = $_POST['alias'];
                        $param4 = $_POST['email'];
                        $param5 = $_POST['salario'];
                        $sentencia -> execute();
                        if($sentencia->affected_rows > 0){
                            echo "<div class=smsImportante> Registro nuevo usuario Correcto <div>";
                        }
                        else{
                            echo "<div class=smsImportante> No se registró ningún Usuario, vuelva a intentarlo <div>";
                        }
                        $sentencia -> close();
                    }
                    /**
                     *  Edicion Usuario
                     */
                    if(isset($_POST['idEmpleadoX'])){
                        $sentencia = $db->prepare("UPDATE `empleados` SET `idequipo`=?, `nombreCompleto`=? ,`alias`=? ,`email`=? ,`salario`=? WHERE `idEmpleado` =? ");
                        $sentencia ->bind_param('isssii', $param1, $param2, $param3, $param4, $param5, $param6);
                        $param1 = $_POST['idequipoX'];
                        $param2 = $_POST['nombreCompletoX'];
                        $param3 = $_POST['aliasX'];
                        $param4 = $_POST['emailX'];
                        $param5 = $_POST['salarioX'];
                        $param6 = $_POST['idEmpleadoX'];
                        $sentencia -> execute();
                        if($sentencia->affected_rows > 0){
                            echo "<div class=smsImportante> Edicion Usuario Correcta <div>";
                        }
                        else{
                            echo "<div class=smsImportante> No se editó ningún Usuario, vuelva a intentarlo <div>";
                        }
                        $sentencia -> close();
                    }
                    /**
                     *  Baja usuario  Alta  : actualizamos campo activo de tabla`empleados` a 0 o 1 
                     */
                    if(isset($_POST['id'])){
                        $sentencia = $db->prepare("UPDATE `empleados` SET `activo` = ?  WHERE `idEmpleado` = ? ");
                        $sentencia -> bind_param('ii',$param1, $param2);
                        $param2 = $_POST['id'];
                        $param1 = $_POST['activar'];
                        $sentencia ->execute();
                        if($sentencia->affected_rows > 0){
                            echo "<div class=smsImportante> Actualización Correcta <div>";
                        }
                        else{
                            echo "<div class=smsImportante> No se modificó el estado, ingrese id válido <div>";
                        }
                        $sentencia -> close();
                    }
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