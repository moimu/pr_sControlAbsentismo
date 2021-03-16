<!DOCTYPE html>
<html lang="es">

<head>
    <title> Sistema Control Absentismo </title>
    <meta charset=" UTF-8 ">
    <meta name="viewport" content=" width=device-width, initial-scale=1 ">
    <meta name="description" content=" Herramienta control de absentimo y recompensas ">
    <link rel="stylesheet" href="../styles/stylesprivado.css">
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
        <div class="containermain">
            <?php
                include('conexionBd.php');
                
                $sentencia = $db->prepare("SELECT em.`idEmpleado`, em.`nombreCompleto`, em.`alias`, em.`email`, em.`totalPuntos`, em.`porcentajeIncentivo`, em.`salario`,
                em.`activo`, eq.`alias` FROM `empleados` em INNER JOIN `equipos` eq ON em.`idEquipo`= eq.`idEquipo` ");     
                $sentencia -> execute();
                $sentencia -> bind_result($idEmpleado, $nombreCompleto ,$aliasEmpleado, $email , $totalPuntos ,$prIncentivo,  $salario, $activo,  $aliasEquipo);

                echo "<table class=tabla1>";
                echo "<form method=POST enctype=application/x-www-form-urlencoded action=privado.php >";
                
                echo  "<tbody><tr> <th>idEmpleado</th><th>Nombre</th><th>Alias</th> <th>Email</th><th>% Incentivo</th><th>Salario</th><th>Puntos de Mérito</th><th>Equipo</th>
                <th>Nº horas ausente</th><th>Nª horas retraso</th> </tr> ";
                /**
                 * Para todos los empeados activos!
                 * Creo variable con cantidad ids , array con todos los ids y array con todos los puntos 
                 * 
                 * $totalids contiene suma total ids emitidos, es utilizada para name="" de cada input emitido del form, posteriormete valdrá para su tratamiento
                 * $idSeleccion array contiene ids emitidos , pudiendo no ser estos consecutivos al permitir borrado lógico, asi trataremos el id exacto.
                 * $totalPuntosSeleccion array contiene puntos emitidos, para cada id recogido en $idSeleccion
                 */
                $idSeleccion = [];
                $totalPuntosSeleccion = [];
                $totalids = 0;
                while($sentencia->fetch()){
                    if($activo == 1){
                        echo  "<tr><td>$idEmpleado</td><td>$nombreCompleto</td><td>$aliasEmpleado</td><td>$email</td><td>$prIncentivo</td><td>$salario</td><td>$totalPuntos</td><td>$aliasEquipo</td> 
                        <td> <input type=number min=0 name=ausente$totalids required> </td> <td> <input type=number min=0 name=retraso$totalids required> </td>  </tr> ";
                        $idSeleccion[$totalids] = $idEmpleado;
                        $totalPuntosSeleccion[$totalids] = $totalPuntos;
                        $totalids++;
                    }
                }
                echo "</tbody>";
                echo "</tfoot>";
                echo "<tr class=trbutton> <td> Dia de la semana <input type=text name=dia_semana required> </td> <td><button type=submit> Actualizar </button></td> </tr>";
                echo "</tfood>";
                echo "</form>";
                echo "</table>";
                $sentencia->close();    
                

                if(isset($_POST['dia_semana'])){
                    /**
                     *  $ausente[]
                     *  $retraso[]
                     *  $totalHausenteRetraso[] coniene la suma de las horas con ausencia y retraso del empleado
                     */
                    for($i=0; $i<$totalids; $i++){
                        $ausente[$i] = intval($_POST['ausente'.$i]);
                        $retraso[$i] = intval($_POST['retraso'.$i]);
                        $totalHausenteRetraso [$i] = $_POST['ausente'.$i] + $_POST['retraso'.$i];
                    }
                    /**
                     * Calculo de puntos a restar
                     * $multiplicadorHausente  valor por el que multiplicar horas ausente y finalmente restar al total de puntos del empleado
                     * $multiplicadorHretraso valor por el que multiplicar horas retraso y finalmente restar al total de puntos del empleado
                     * $puntosRestar[]
                     */
                    $multiplicadorHausente = 10;
                    $multiplicadorHretraso = 5;
                    for($i=0; $i<$totalids; $i++){
                        $puntosRestar[$i] = $ausente[$i] * $multiplicadorHausente + $retraso[$i] * $multiplicadorHretraso;             
                    }
                    /**
                     * Verificación de que $totalHausenteRetraso[], no contiene más de las horas laborares en el dia en que se registran.
                     * si las contiene mostraré error y no actualizaré datos
                     * 
                     * Consulto horas para cada dia semana seleccion idEmpleado = 1 ya que todos los empleados de momento tienen horario en común.
                     * 
                     * Calculo puntos a sumar 
                     * $puntosSumar[] para clave 0 correspondiendo a idempleado 1  contendrá total de puntos a sumar por las horas eficazmente trabajadas
                     * de igualmanera y consecutivamente para todas claves y valores de array
                     */
                    $sentencia = $db->prepare("SELECT h.`lunes`, h.`martes`, h.`miercoles`, h.`jueves`, h.`viernes` 
                    FROM `empleados` e INNER JOIN `horarios` h ON e.`idHorario` = h.`idHorario` WHERE `idEmpleado` = 1; ");
                    $sentencia->execute();
                    $sentencia -> bind_result($lun, $mar, $mie, $jue, $vie);
                    while($sentencia->fetch()){
                        $horasDiaSemana = ["lunes" => $lun, "martes" =>  $mar, "miercoles" =>  $mie, "jueves" =>  $jue, "viernes" =>  $vie];
                    }
                    $sentencia->close();

                    $diaSemana = $_POST['dia_semana'];
                    $trigger = 1;
                    foreach ($horasDiaSemana as $clave => $valor){
                        if(strcasecmp($diaSemana,$clave) == 0){
                            for($i=0;$i<$totalids;$i++){
                                $puntosSumar[$i] = $valor - $totalHausenteRetraso[$i];
                                if($totalHausenteRetraso[$i] > $valor){
                                    echo "<div class=smsImportante>NO SE ACTUALIZÓ Total horas introducidas en formulario para el $clave no son correctas </br>
                                        Vuelva a introducirlas considerando las horas laborales contratadas para cada Empleado <div>";
                                    $trigger = 0;
                                }
                            }
                        }
                    }
                    /**
                     * Actualizo totalPuntos para empleados
                     * Si el total de puntos para el empleado es <50 ejecuto $updatePuntosEquipoIncentivo donde ademas de puntos se asigna 1 a equipo valor para SIN EQUIPO
                     * y 0 al porcentajeIncentivo, no recibe incentivo ese mes.
                     * Si no actualizo puntos
                     * 
                     * Inserto nuevo registro en informes para cada idEmpleado con su nuevo valor totalPuntos y fecha actual automático en base datos
                     */
                    if($trigger == 1){
                        $updatePuntosEmpleados = $db -> prepare("UPDATE `empleados` SET `totalPuntos` =  ? WHERE `idEmpleado` = ?");
                        $updatePuntosEmpleados -> bind_param('ii', $param1, $idEmpleado);

                        $updatePuntosEquipoIncentivo = $db -> prepare("UPDATE `empleados` SET `totalPuntos` =?, `idEquipo` =?, `porcentajeIncentivo` =? WHERE `idEmpleado` = ?");
                        $updatePuntosEquipoIncentivo -> bind_param('iiii', $param1, $param2, $param3 ,$idEmpleado);

                        $insertPuntosInformes = $db -> prepare("INSERT INTO `informes`(`idEmpleado`,`totalPuntos`) VALUES(?,?)");
                        $insertPuntosInformes -> bind_param('ii', $idEmpleado , $param1);

                        for($i=0; $i<$totalids; $i++){
                            $idEmpleado = $idSeleccion[$i];
                            $param1 = $totalPuntosSeleccion[$i] - $puntosRestar[$i] + $puntosSumar[$i];
                            $param2 = 1;
                            $param3 = 0; 
                            if($param1 < 50){
                                $updatePuntosEquipoIncentivo -> execute();
                            }
                            else{
                                $updatePuntosEmpleados -> execute();
                            }
                            $insertPuntosInformes -> execute();
                        }
                        $updatePuntosEquipoIncentivo -> close();
                        $updatePuntosEmpleados->close();
                        $insertPuntosInformes -> execute();
                        echo "<div class=smsImportante> Puntos de Mérito de los usuarios actualizados </br>
                        Podrá generar un informe de este dia <div>";
                    }
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