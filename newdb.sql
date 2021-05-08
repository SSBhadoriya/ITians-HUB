/*
SQLyog Community v13.1.3  (64 bit)
MySQL - 5.0.82-community-nt : Database - newdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`newdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `newdb`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL auto_increment,
  `ename` varchar(225) NOT NULL,
  `salary` int(11) default NULL,
  `password` varchar(225) default NULL,
  `address` varchar(225) default NULL,
  `creationdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `email` varchar(225) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uid` varchar(225) NOT NULL,
  `password` varchar(225) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `user_record` */

DROP TABLE IF EXISTS `user_record`;

CREATE TABLE `user_record` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(255) NOT NULL,
  `emailid` varchar(225) default NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(225) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `emailid` (`emailid`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
