-- 7 equipos

INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('Sin equipo','Para usuarios que no forman parte de un equipo');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('slash','Ventas');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('gurruñico','Programadores');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('pow','Atención cliente');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('#','Diseño y Marketing');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('@','Redes Sociales');
INSERT INTO `equipos`(`alias`,`descripcion`) VALUES ('wifi','Internacional');


-- 1 horario

INSERT INTO `horarios`(`lunes`,`martes`,`miercoles`,`jueves`,`viernes`) VALUES ('6','5','6','6','4');

-- 15 empleados

INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('2','Moisés Antonio Muñoz Aranda','moimu','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('2','Golem Operario Armas Pesadas','Heavy','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('3','Miguel Angel Felipe Antonio','Pipe','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('3','Juan David Jose Antonio','Deivid','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('3','Arach Vermejo nuevo','Ari','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('4','Linarejos Medina torrejon','Lini','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('4','Isabel rey alvarez','Ricis','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('5','Manuel toledano down','Down','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('5','Samuel cotrina up','Up','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('6','Alberto Ocete Aliaga','Patapalo','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('6','Ismael Aliaga Verdejo','Patanegra','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('7','Pablo Jose tolero hidalgo','60deRam','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('7','Alberto Ballesteros Delaventana','Largo','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('7','Jesús Jesús Jesús','Sibarita','@designgra.eu');
INSERT INTO `empleados`(`idEquipo`,`nombreCompleto`,`alias`,`email`) VALUES ('7','Rafa Kun fu','Kunfa','@designgra.eu');

-- 15 informes 

INSERT INTO `informes`(`idEmpleado`) VALUES ('1');
INSERT INTO `informes`(`idEmpleado`) VALUES ('2');
INSERT INTO `informes`(`idEmpleado`) VALUES ('3');
INSERT INTO `informes`(`idEmpleado`) VALUES ('4');
INSERT INTO `informes`(`idEmpleado`) VALUES ('5');
INSERT INTO `informes`(`idEmpleado`) VALUES ('6');
INSERT INTO `informes`(`idEmpleado`) VALUES ('7');
INSERT INTO `informes`(`idEmpleado`) VALUES ('8');
INSERT INTO `informes`(`idEmpleado`) VALUES ('9');
INSERT INTO `informes`(`idEmpleado`) VALUES ('10');
INSERT INTO `informes`(`idEmpleado`) VALUES ('11');
INSERT INTO `informes`(`idEmpleado`) VALUES ('12');
INSERT INTO `informes`(`idEmpleado`) VALUES ('13');
INSERT INTO `informes`(`idEmpleado`) VALUES ('14');
INSERT INTO `informes`(`idEmpleado`) VALUES ('15');