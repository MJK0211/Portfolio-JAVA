-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pikka
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `seatticket`
--

DROP TABLE IF EXISTS `seatticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seatticket` (
  `seatTicketNo` int NOT NULL AUTO_INCREMENT,
  `seatNo` varchar(45) NOT NULL,
  `userId` varchar(45) NOT NULL,
  `seatType` int DEFAULT NULL,
  `seatPrice` int DEFAULT NULL,
  `seatStartTime` time DEFAULT NULL,
  `seatEndTime` time DEFAULT NULL,
  `seatAvailableTime` time DEFAULT NULL,
  PRIMARY KEY (`seatTicketNo`),
  UNIQUE KEY `seatNo_UNIQUE` (`seatNo`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  KEY `fk_seatTicket_user1_idx` (`seatTicketNo`),
  KEY `fk_01_idx` (`seatNo`),
  KEY `fk_02_idx` (`userId`),
  CONSTRAINT `fk_01` FOREIGN KEY (`seatNo`) REFERENCES `seat` (`seatNo`),
  CONSTRAINT `fk_02` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seatticket`
--

LOCK TABLES `seatticket` WRITE;
/*!40000 ALTER TABLE `seatticket` DISABLE KEYS */;
INSERT INTO `seatticket` VALUES (40,'1','jung123',1,3000,'12:58:03','19:42:23','06:44:20'),(41,'5','jjj1',1,3000,'12:58:03','21:00:00','08:01:57'),(42,'7','jy1',1,3000,'12:58:03','20:34:55','07:36:52');
/*!40000 ALTER TABLE `seatticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10 18:17:06
