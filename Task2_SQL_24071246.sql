/*
SQLyog Community
MySQL - 10.4.32-MariaDB : Database - tracker
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `tracker`;

/*Table structure for table `airlines` */

CREATE TABLE `airlines` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `founded_year` int(11) NOT NULL,
  `fleet_size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `airlines` */

insert  into `airlines`(`id`,`name`,`country`,`founded_year`,`fleet_size`) values 
(1,'Air Nepal','Nepal',1990,20),
(2,'Air India','India',1932,150),
(3,'Etihad Airway','UAE',2003,120),
(4,'Malaysia Airlines','Malaysia',1947,80),
(5,'Qatar Airways','Qatar',1993,200);

/*Table structure for table `flight` */

CREATE TABLE `flight` (
  `id` varchar(10) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `aid` int(11) NOT NULL,
  `fare` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `airlines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `flight` */

insert  into `flight`(`id`,`source`,`destination`,`aid`,`fare`,`discount`,`capacity`) values 
('3L046','Kathmandu','Abu Dhabi',3,74284.56,NULL,300),
('AI215','Delhi','Kathmandu',2,63672.48,5000.00,300),
('H9891','Kuala Lumpur','Kathmandu',4,65000.00,3000.00,250),
('RA230','Kathmandu','Delhi',1,53060.40,NULL,200),
('RA416','Kathmandu','Kuala Lumpur',1,58366.44,2000.00,180);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
