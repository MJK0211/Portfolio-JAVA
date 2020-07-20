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
-- Table structure for table `lockerticket`
--

DROP TABLE IF EXISTS `lockerticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lockerticket` (
  `lockerTicketNo` int NOT NULL AUTO_INCREMENT,
  `lockerNo` varchar(10) NOT NULL,
  `userId` varchar(45) NOT NULL,
  `lockerUseDays` int NOT NULL,
  `lockerUsePrice` int NOT NULL,
  `lockerStartDate` date NOT NULL,
  `lockerEndDate` date NOT NULL,
  PRIMARY KEY (`lockerTicketNo`),
  UNIQUE KEY `lockerNo_UNIQUE` (`lockerNo`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `lockerTicketNo_UNIQUE` (`lockerTicketNo`),
  KEY `fk_user_idx` (`userId`),
  KEY `fk_locker_idx` (`lockerNo`),
  CONSTRAINT `fk_locker` FOREIGN KEY (`lockerNo`) REFERENCES `locker` (`lockerNo`),
  CONSTRAINT `fk_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockerticket`
--

LOCK TABLES `lockerticket` WRITE;
/*!40000 ALTER TABLE `lockerticket` DISABLE KEYS */;
INSERT INTO `lockerticket` VALUES (2,'1B','jy2',30,3000,'2020-03-01','2020-04-01'),(3,'1C','jy3',30,3000,'2020-03-01','2020-04-01'),(7,'3B','jy1',50,70000,'2020-03-31','2020-04-01'),(8,'5C','jy4',60,70000,'2020-03-31','2020-05-30'),(10,'1A','jy5',90,9000,'2020-03-01','2020-05-30'),(11,'1D','jy6',90,9000,'2020-03-01','2020-05-30'),(12,'1F','jy7',90,9000,'2020-03-01','2020-05-30');
/*!40000 ALTER TABLE `lockerticket` ENABLE KEYS */;
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
