CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `movies`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movies
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(45) NOT NULL,
  `movie_popularity` decimal(7,6) DEFAULT NULL,
  `movie_release_date` date DEFAULT NULL,
  `movie_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (273831,'CÃ³mo Filmar Una XXX',4.254580,'2017-11-29','2018-02-10 13:24:41'),(315064,'Animal Crackers',5.626802,'2017-09-01','2018-02-10 13:24:41'),(345287,'Soldiers Of The Damned',3.383608,'2017-12-07','2018-02-10 13:24:41'),(444510,'The Jetsons & WWE: Robo-WrestleMania!',4.576981,'2017-02-28','2018-02-10 13:24:41'),(450569,'Love & Saucers',2.033779,'2017-12-12','2018-02-10 13:24:41'),(457497,'Lahoriye',3.405214,'2017-05-12','2018-02-10 13:24:41');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewers`
--

DROP TABLE IF EXISTS `reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewers` (
  `reviewer_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewer_first_name` varchar(45) DEFAULT NULL,
  `reviewer_last_name` varchar(45) DEFAULT NULL,
  `reviewer_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewers`
--

LOCK TABLES `reviewers` WRITE;
/*!40000 ALTER TABLE `reviewers` DISABLE KEYS */;
INSERT INTO `reviewers` VALUES (1,'Purdham',' Timothy','2018-02-10 13:24:41'),(2,'Schear',' Leland','2018-02-10 13:24:41'),(3,'Welsh',' Ashton','2018-02-10 13:24:41'),(4,'Shoeboot',' Anthony','2018-02-10 13:24:41'),(5,'Macneilly',' Michael','2018-02-10 13:24:41'),(6,'Rosa-Sanchez',' Gustavo','2018-02-10 13:24:41'),(7,'Courtney',' Brea','2018-02-10 13:24:41'),(8,'Leaver',' Montsho','2018-02-10 13:24:41'),(9,'Sapakoff',' Melissa','2018-02-10 13:24:41'),(10,'Payan',' Ricky','2018-02-10 13:24:41');
/*!40000 ALTER TABLE `reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `fk_movie_idx` (`movie_id`,`reviewer_id`),
  KEY `fk_reviewers_idx` (`reviewer_id`),
  CONSTRAINT `fk_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reviewers` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewers` (`reviewer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1081,273831,1,5,'2018-02-10 13:24:42'),(1082,315064,1,4,'2018-02-10 13:24:42'),(1083,345287,1,3,'2018-02-10 13:24:42'),(1084,444510,1,2,'2018-02-10 13:24:42'),(1085,450569,1,3,'2018-02-10 13:24:42'),(1086,457497,1,3,'2018-02-10 13:24:42'),(1087,273831,2,4,'2018-02-10 13:24:42'),(1088,315064,2,3,'2018-02-10 13:24:42'),(1089,345287,2,3,'2018-02-10 13:24:42'),(1090,444510,2,3,'2018-02-10 13:24:42'),(1091,450569,2,1,'2018-02-10 13:24:42'),(1092,457497,2,1,'2018-02-10 13:24:42'),(1093,273831,3,4,'2018-02-10 13:24:42'),(1094,315064,3,4,'2018-02-10 13:24:42'),(1095,345287,3,3,'2018-02-10 13:24:42'),(1096,444510,3,1,'2018-02-10 13:24:42'),(1097,450569,3,5,'2018-02-10 13:24:42'),(1098,457497,3,4,'2018-02-10 13:24:42'),(1099,273831,4,2,'2018-02-10 13:24:42'),(1100,315064,4,3,'2018-02-10 13:24:42'),(1101,345287,4,3,'2018-02-10 13:24:42'),(1102,444510,4,3,'2018-02-10 13:24:42'),(1103,450569,4,5,'2018-02-10 13:24:42'),(1104,457497,4,3,'2018-02-10 13:24:42'),(1105,273831,5,4,'2018-02-10 13:24:42'),(1106,315064,5,4,'2018-02-10 13:24:42'),(1107,345287,5,5,'2018-02-10 13:24:42'),(1108,444510,5,3,'2018-02-10 13:24:42'),(1109,450569,5,1,'2018-02-10 13:24:42'),(1110,457497,5,3,'2018-02-10 13:24:42'),(1111,273831,6,4,'2018-02-10 13:24:42'),(1112,315064,6,3,'2018-02-10 13:24:42'),(1113,345287,6,5,'2018-02-10 13:24:42'),(1114,444510,6,5,'2018-02-10 13:24:42'),(1115,450569,6,3,'2018-02-10 13:24:42'),(1116,457497,6,5,'2018-02-10 13:24:42'),(1117,273831,7,3,'2018-02-10 13:24:42'),(1118,315064,7,1,'2018-02-10 13:24:42'),(1119,345287,7,3,'2018-02-10 13:24:42'),(1120,444510,7,4,'2018-02-10 13:24:42'),(1121,450569,7,3,'2018-02-10 13:24:42'),(1122,457497,7,5,'2018-02-10 13:24:42'),(1123,273831,8,1,'2018-02-10 13:24:42'),(1124,315064,8,3,'2018-02-10 13:24:42'),(1125,345287,8,1,'2018-02-10 13:24:42'),(1126,444510,8,1,'2018-02-10 13:24:42'),(1127,450569,8,4,'2018-02-10 13:24:42'),(1128,457497,8,5,'2018-02-10 13:24:42'),(1129,273831,9,1,'2018-02-10 13:24:42'),(1130,315064,9,3,'2018-02-10 13:24:42'),(1131,345287,9,2,'2018-02-10 13:24:42'),(1132,444510,9,3,'2018-02-10 13:24:42'),(1133,450569,9,4,'2018-02-10 13:24:42'),(1134,457497,9,3,'2018-02-10 13:24:42'),(1135,273831,10,2,'2018-02-10 13:24:42'),(1136,315064,10,5,'2018-02-10 13:24:42'),(1137,345287,10,1,'2018-02-10 13:24:42'),(1138,444510,10,3,'2018-02-10 13:24:42'),(1139,450569,10,1,'2018-02-10 13:24:42'),(1140,457497,10,3,'2018-02-10 13:24:42');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-10 13:27:34
