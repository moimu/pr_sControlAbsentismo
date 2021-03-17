CREATE DATABASE `controlabsentismo`;

CREATE TABLE `equipos`(
    `idEquipo` MEDIUMINT UNSIGNED AUTO_INCREMENT,
    `alias` VARCHAR(50) NOT NULL,
    `descripcion` VARCHAR(50) ,
    PRIMARY KEY (idEquipo)
);

CREATE TABLE `horarios`(
    `idHorario` TINYINT UNSIGNED AUTO_INCREMENT,
    `lunes` TINYINT,
    `martes` TINYINT,
    `miercoles` TINYINT,
    `jueves` TINYINT,
    `viernes` TINYINT,
    PRIMARY KEY (idHorario)
);

CREATE TABLE `empleados`(
    `idEmpleado` MEDIUMINT UNSIGNED AUTO_INCREMENT,
    `idEquipo` MEDIUMINT UNSIGNED DEFAULT 1,
    `nombreCompleto` VARCHAR(50) NOT NULL,
    `alias` VARCHAR(50) ,
    `email` VARCHAR(50) ,
    `totalPuntos` SMALLINT NOT NULL DEFAULT 100 ,
    `porcentajeIncentivo` DECIMAL(4,2) DEFAULT 66.67 ,
    `salario` DECIMAL(7,2) DEFAULT 1100.00 ,
    `activo` TINYINT DEFAULT 1 ,
    `idHorario` TINYINT UNSIGNED DEFAULT 1,
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo),
    FOREIGN KEY (idHorario) REFERENCES horarios(idHorario)
);

CREATE TABLE `informes`(
    `idInforme` MEDIUMINT UNSIGNED AUTO_INCREMENT,
    `idEmpleado` MEDIUMINT UNSIGNED,
    `fecha` DATE,
    `totalPuntos` SMALLINT NOT NULL DEFAULT 100,
    PRIMARY KEY (idInforme),
    FOREIGN KEY (idEmpleado) REFERENCES empleados(idEmpleado)
);