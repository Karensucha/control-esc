/*
SQLyog Ultimate v8.61 
MySQL - 5.5.16 : Database - school
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`school` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `school`;

/*Table structure for table `alumno_grupo` */

DROP TABLE IF EXISTS `alumno_grupo`;

CREATE TABLE `alumno_grupo` (
  `id_alumno` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `alumno_grupo` */

insert  into `alumno_grupo`(`id_alumno`,`id_grupo`) values (9,2),(1,1);

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(20) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`id`,`grupo`,`estatus`,`avatar`,`orden`) values (1,'101',1,'q',7),(2,'201',1,'w',8),(3,'102',1,'q',6),(4,'202',1,'i',8),(5,'301',1,'r',1);

/*Table structure for table `maestro_grupo` */

DROP TABLE IF EXISTS `maestro_grupo`;

CREATE TABLE `maestro_grupo` (
  `id_maestro` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maestro_grupo` */

/*Table structure for table `maestro_materia` */

DROP TABLE IF EXISTS `maestro_materia`;

CREATE TABLE `maestro_materia` (
  `id_maestro` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maestro_materia` */

insert  into `maestro_materia`(`id_maestro`,`id_materia`) values (1,5),(1,3),(2,2),(2,4),(7,4),(7,5),(3,6);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`id`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'Programación de Aplicaciones','program.jpg',5,1),(2,'Matemáticas para TI','mate.jpg',7,1),(3,'Optativa I','android.jpg',2,1),(4,'Inglés','ingles.jpg',6,1),(5,'Administración del Tiempo','admintime.jpg',9,1),(6,'Ingenieria Econímica','economia.jpg',53,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `app` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `apm` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `calle` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numext` int(11) DEFAULT NULL,
  `numint` int(11) DEFAULT NULL,
  `col` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mun` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `usuario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `pass` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`nombre`,`app`,`apm`,`tel`,`calle`,`numext`,`numint`,`col`,`mun`,`estado`,`cp`,`correo`,`usuario`,`pass`,`nivel`,`estatus`) values (1,'vanessa','quiroz','castro',22222222,'la colonia',0,0,'centro','Otzolotepec','México',52080,'vanne@hotmail.com','vanne','vanne1',3,1),(2,'sahira','cid','campa',222222222,'2 caminos',9,1,'centro','Toluca','México',49282,'sahi@hotmail.com','sahiii1','sahira54',2,2),(3,'Enrrique','Huerta','Torres',32322132,'xonacatlan',333,89,'Centro','xonacatlan','México',53921,'enrrique@hotmail.com','enrique32','en555',2,1),(4,'Juan','Hernandez','Valdez',222222,'Arboleda',2,54,'Centro','Toluca','México',47282,'juanher@hotmail.com.mx','junito','juanito94',2,1),(5,'daniela','avalos','garcia',332332,'santin',3,0,'santin','toluca','México',89724,'dania@hotmail.com','dani111','dani88',3,1),(10,'Ana Karen','Castro','Garcia',722111111,'vicente guerrero',93,0,'Centro','Otzolotepec','México',52080,'nanis94karen@hotmail.com','karen','karen',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
