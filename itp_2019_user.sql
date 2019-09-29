-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: itp_2019
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `fName` varchar(250) DEFAULT NULL,
  `lname` varchar(250) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userImg` longtext,
  PRIMARY KEY (`userID`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'Suvin','sukka@gmail.com','123456789',NULL,NULL,NULL,NULL,'2019-09-27 09:47:00',NULL),(8,'Suvin','sukka@gmail.com','123',NULL,NULL,NULL,'2019-09-04 14:21:12','2019-09-04 15:15:39',NULL),(9,'lakindu','lakindu@gmail.com','098',NULL,NULL,NULL,'2019-09-04 21:21:58','2019-09-04 21:34:53',NULL),(10,'pp','pp@pp.nm','lol',NULL,NULL,NULL,'2019-09-04 22:05:26','2019-09-04 22:08:10',NULL),(11,'noma','noma@fmg.mlm','670',NULL,NULL,NULL,'2019-09-05 10:07:55','2019-09-05 10:08:23',NULL),(12,'babe','babe@mdmn.lk','12345',NULL,NULL,NULL,'2019-09-05 10:49:14',NULL,NULL),(13,'babe','babe@mdmn.lk','000',NULL,NULL,NULL,'2019-09-05 10:50:43',NULL,NULL),(14,'babe','babe@mdmn.lk','54',NULL,NULL,NULL,'2019-09-05 10:52:17',NULL,NULL),(15,'Miyuru','miyuru@gmail.com','555',NULL,NULL,NULL,'2019-09-05 14:57:01',NULL,NULL),(16,'chirath','chirath@gg.lk','234',NULL,NULL,NULL,'2019-09-05 15:05:38',NULL,NULL),(17,'chirath','chirath@gg.lk','0',NULL,NULL,NULL,'2019-09-05 15:08:33',NULL,NULL),(18,'Amasha','amasha@gmail.com','456',NULL,NULL,NULL,'2019-09-05 15:10:34','2019-09-06 02:16:01',NULL),(19,'Savindu','savibashnon11@gmail.com','12345',NULL,NULL,NULL,'2019-09-05 15:24:39','2019-09-06 09:06:27',NULL),(20,'Nuwanga','nuwanga@gmail.com','234',NULL,NULL,NULL,'2019-09-06 01:21:40','2019-09-06 01:25:36',NULL),(21,'Savindu','Savindu','12345',NULL,NULL,NULL,'2019-09-06 09:04:59',NULL,NULL),(22,'kalhara','kalharapk@gmail.com','456',NULL,NULL,NULL,'2019-09-26 07:36:35',NULL,NULL),(23,'Amasha','sachini@gmail.com','12345',NULL,NULL,NULL,'2019-09-26 08:24:47','2019-09-27 09:44:40',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-29  9:34:28
