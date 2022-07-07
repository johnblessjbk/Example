/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.8-log : Database - e-mart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`e-mart` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `e-mart`;

/*Table structure for table `addproduct` */

DROP TABLE IF EXISTS `addproduct`;

CREATE TABLE `addproduct` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT NULL,
  `mallid` varchar(200) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addproduct` */

insert  into `addproduct`(`pid`,`sname`,`pname`,`price`,`qty`,`mallid`,`photo`) values (1,'Square Rock','Notes','2000','20','3','stu.jpg'),(2,'Square Rck','Books','23000','10','3','replay.jpg');

/*Table structure for table `addrentshop` */

DROP TABLE IF EXISTS `addrentshop`;

CREATE TABLE `addrentshop` (
  `rentid` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` varchar(200) DEFAULT NULL,
  `rname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `square` varchar(200) DEFAULT NULL,
  `lattitude` varchar(200) DEFAULT NULL,
  `longittude` varchar(200) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`rentid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `addrentshop` */

insert  into `addrentshop`(`rentid`,`shopid`,`rname`,`phone`,`price`,`square`,`lattitude`,`longittude`,`photo`) values (1,'1','RentKovil','6565656565','20000','3','9.924179','76.269999','pay2.jpg');

/*Table structure for table `addshop` */

DROP TABLE IF EXISTS `addshop`;

CREATE TABLE `addshop` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `mallid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addshop` */

insert  into `addshop`(`sid`,`name`,`email`,`addr`,`mallid`) values (1,'Square Rock','sqare@gmail.com','kochin','3'),(2,'World HEY','hey@gmail.com','Kerla','3');

/*Table structure for table `cusregister` */

DROP TABLE IF EXISTS `cusregister`;

CREATE TABLE `cusregister` (
  `crid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `cusregister` */

insert  into `cusregister`(`crid`,`name`,`email`,`phone`,`addr`,`pass`) values (1,'blessed','bless@gmail.com','6665655','kochin','123'),(2,'darshan','darshan@gmail.com','8988877878','TamilNadu','123');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`logid`,`name`,`pass`,`status`,`type`,`uid`) values (1,'bless@gmail.com','123','user','1','1'),(2,'jorent@gmail.com','123','rent','1','1'),(3,'admin@gmail.com','123','admin','0','0'),(4,'way@gmail.com','7666676767','shop','1','3');

/*Table structure for table `mall` */

DROP TABLE IF EXISTS `mall`;

CREATE TABLE `mall` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT NULL,
  `lattitude` varchar(200) DEFAULT NULL,
  `longittude` varchar(200) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `mall` */

insert  into `mall`(`mid`,`mname`,`sname`,`price`,`phone`,`pname`,`qty`,`lattitude`,`longittude`,`photo`) values (1,'MALLSKY','mall@gmail.com','sunday','7667676776','12:26','06:56','9.924179','76.269999','offer.png'),(3,'WAY Mall','way@gmail.com','sunday','7666676767','09:24','09:22','9.924179','76.269999','add.jpg');

/*Table structure for table `orderpds` */

DROP TABLE IF EXISTS `orderpds`;

CREATE TABLE `orderpds` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `stuid` varchar(200) DEFAULT NULL,
  `cardno` varchar(200) DEFAULT NULL,
  `day` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `own` varchar(200) DEFAULT NULL,
  `amt` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `orderpds` */

insert  into `orderpds`(`bookid`,`stuid`,`cardno`,`day`,`year`,`cvv`,`own`,`amt`,`pid`) values (3,'1','4332322333333333','January','2021','567','Bless John','20','1');

/*Table structure for table `rentshop` */

DROP TABLE IF EXISTS `rentshop`;

CREATE TABLE `rentshop` (
  `rsid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rentshop` */

insert  into `rentshop`(`rsid`,`name`,`email`,`phone`,`addr`,`pass`) values (1,'JoRent','jorent@gmail.com','77787788','kochin','123'),(2,'RentHelop','rentsh@gkmail.com','67667666556','Tamil Nadu-5523','123');

/*Table structure for table `replay` */

DROP TABLE IF EXISTS `replay`;

CREATE TABLE `replay` (
  `repid` int(11) NOT NULL AUTO_INCREMENT,
  `reqid` varchar(200) DEFAULT NULL,
  `rentid` varchar(200) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`repid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `replay` */

insert  into `replay`(`repid`,`reqid`,`rentid`,`des`) values (1,'2','1','Download this replay icon in solid style from the Sound & music category. Available in PNG and SVG formats. No signup required.Download this replay icon in solid style from the Sound & music category. Available in PNG and SVG formats. No signup required.');

/*Table structure for table `requesttorent` */

DROP TABLE IF EXISTS `requesttorent`;

CREATE TABLE `requesttorent` (
  `rentqid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(200) DEFAULT NULL,
  `rentid` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rentqid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `requesttorent` */

insert  into `requesttorent`(`rentqid`,`userid`,`rentid`,`dates`,`des`) values (2,'1','1','2022-03-24','Request To Rent Shop Shop\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
