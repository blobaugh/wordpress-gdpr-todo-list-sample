# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: wds.sirgecko.com (MySQL 5.7.21)
# Database: wordpress
# Generation Time: 2018-06-05 13:56:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table todo_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `todo_list`;

CREATE TABLE `todo_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `todo` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `todo_list` WRITE;
/*!40000 ALTER TABLE `todo_list` DISABLE KEYS */;

INSERT INTO `todo_list` (`id`, `email`, `status`, `todo`, `created`)
VALUES
	(1,'ben@webdevstudios.com','pending','Pick up eggs at store.','2018-06-05 13:49:20'),
	(2,'ben@webdevstudios.com','complete','Wash the car','2018-06-05 13:49:48'),
	(3,'ben@webdevstudios.com','in progress','Write blog post about GDPR','2018-06-05 13:50:22'),
	(4,'ben@webdevstudios.com','pending','Pick out a new book to read','2018-06-05 13:51:03'),
	(5,'ben@webdevstudios.com','pending','Buy new speakers for wife\'s car','2018-06-05 13:51:23'),
	(6,'someoneelse@example.com','pending','Reserve table at restaurant for 6 people for Father\'s Day','2018-06-05 13:52:09'),
	(7,'someoneelse@example.com','pending','Wash the car','2018-06-05 13:52:20'),
	(8,'sally@example.com','in progress','Take continuing educaton class','2018-06-05 13:52:53'),
	(9,'ben@webdevstudios.com','pending','Renew boat tabs','2018-06-05 13:53:15'),
	(10,'someoneelse@example.com','pending','Renew boat tabs','2018-06-05 13:53:26'),
	(11,'someoneelse@example.com','complete','Review and update budget','2018-06-05 13:53:46'),
	(12,'ben@webdevstudios.com','pending','Fix all the gear we broke during the sailboat race :(','2018-06-05 13:55:43');

/*!40000 ALTER TABLE `todo_list` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
