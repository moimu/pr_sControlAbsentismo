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

-- 15 informes por dia  datos de 10 días laborales

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-17');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-17');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-16');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-16');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-15');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-15');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-14');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-14');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-13');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-13');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-12');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-12');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-11');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-11');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-10');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-10');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-09');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-09');

INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('1','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('2','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('3','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('4','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('5','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('6','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('7','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('8','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('9','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('10','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('11','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('12','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('13','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('14','2021-03-08');
INSERT INTO `informes`(`idEmpleado`,`fecha`) VALUES ('15','2021-03-08');