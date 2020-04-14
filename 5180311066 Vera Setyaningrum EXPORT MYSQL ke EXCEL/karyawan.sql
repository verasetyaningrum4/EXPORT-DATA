/*
SQLyog Ultimate v8.4 
MySQL - 5.5.5-10.4.11-MariaDB-log : Database - karyawan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`karyawan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `karyawan`;

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `jabatan` enum('System Analyst','Programmer','Website Designer','Bussiness Analyst','Documentator') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `karyawan` */

insert  into `karyawan`(`id`,`nama`,`alamat`,`telepon`,`email`,`jk`,`jabatan`) values (11,'Vera Setyaningrum','Jogja','085709865243','vera@gmail.com','Perempuan','Bussiness Analyst'),(12,'Renny Amellia A','Bojonegoro','087654837652','rennya@gmail.com','Perempuan','Documentator'),(13,'Ahmad Zhuhrish','Jombang','081276487365','ahmadzhuhrishs@gmail.com','Laki-Laki','Programmer'),(14,'Shofiana','Jombang','081287659876','shofii@gmail.com','Perempuan','Website Designer'),(15,'Ramadhan','Jogja','081287638765','rama@gmail.com','Laki-Laki','System Analyst'),(16,'Abimanyu','Temanggung','085765435243','abi@gmail.com','Laki-Laki','Documentator'),(17,'Arziki','Jogja','081276544432','arzikii@gmail.com','Laki-Laki','Bussiness Analyst'),(18,'Riswoko','Jogja','088227654122','riswoko0@gmail.com','Laki-Laki','Programmer');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
