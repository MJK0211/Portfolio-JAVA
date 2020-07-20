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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` varchar(45) NOT NULL,
  `userPw` varchar(100) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `userTel` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('jjj1','$2a$10$1ajSAv.cvmKeBPXFhNax8.r9hJpz3T/.VKse6I.KdtREe1qeFE0JO','1234','01077555958'),('jung123','$2a$10$2PZcHDsXFCGn6qu40M0KMuFNXacgNheh1wcrKA.UByRcO/1WIZ91.','정민종',''),('jy1','jy1','jy1','010-7755'),('jy2','jy2','jy2','010-7755'),('jy3','jy3','jy3','010-7755'),('jy4','jy4','jy4','010-7755'),('jy5','jy5','jy5','010-7755'),('jy6','jy6','jy6','010-7755'),('jy7','jy7','jy7','010-7755'),('lee123','$2a$10$JaxBn6.IrIGiCXO2YAxEDuQaPX8kiBJBAdMByB6h2trLbx0ThzFUq','이민종',''),('member3','$2a$10$APHg5oIpu3bpR5LrcFYrRejoPMY8/cFvSbnMhdbCQ/sV2jF8Wa0xe','정나다3','01012341233'),('member4','$2a$10$ie2DJh6d6SeeBP0691BQu.HwGnbltLfhlhBFzrB/9ZaqGGNf45p7S','정나다4','01012341234'),('member5','$2a$10$x2/.fNnHxHJ/zM3Taw2EVOcCml1xTZ8XovCOY6aZqUib83SOWXGGO','정나다5','01012341235'),('member6','$2a$10$aN6GgIUDYVa8GarbM93jneNB7.4h3hjdA9Aphhp4ISFeVady9mc6O','정나다6','01012341236'),('member7','$2a$10$6Fjg8syiXCozNaShwubLDuEpX2LvY3WsZ9hAZDQkiiHmBbR8A2GAu','정나다7','01012341237'),('member8','$2a$10$0R6V82gGu94flH6Qe29etusCYLMwgpEZKzsTmedeQHdTxca3Yib.2','정나다8','01012341238'),('member9','$2a$10$KLWqVga58wiVQcIwwRgzgeR7VtHDmpgzswhh1fDZTXD/8Nl66uLAy','정나다9','01012341239');
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

-- Dump completed on 2020-04-10 18:17:06
