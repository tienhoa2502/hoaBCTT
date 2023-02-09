-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlyhocphan
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `hocphanctdt`
--

DROP TABLE IF EXISTS `hocphanctdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocphanctdt` (
  `MaCTDT` char(10) DEFAULT NULL,
  `MaHP` int DEFAULT NULL,
  KEY `MaCTDT_idx` (`MaCTDT`),
  KEY `MaHP_idx` (`MaHP`),
  CONSTRAINT `MaCTDT` FOREIGN KEY (`MaCTDT`) REFERENCES `chuongtrinhdaotao` (`MaCTDT`),
  CONSTRAINT `MaHP` FOREIGN KEY (`MaHP`) REFERENCES `hocphan` (`MaHP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocphanctdt`
--

LOCK TABLES `hocphanctdt` WRITE;
/*!40000 ALTER TABLE `hocphanctdt` DISABLE KEYS */;
INSERT INTO `hocphanctdt` VALUES ('ctdt01',1),('ctdt01',2),('ctdt01',3),('CTDTCNPM08',1),('CTDTCNPM08',2),('CTDTCNPM08',3),('CTDTCNPM08',4),('CTDTCNPM08',5),('CTDTCNPM08',6),('fdsdfg',1),('fdsdfg',2),('fdsdfg',3),('fdsdfg',4),('fdsdfg',5),('fdsdfg',6),('Thạc sĩ',1),('Thạc sĩ',2),('Thạc sĩ',12),('Thạc sĩ',7),('Thạc sĩ',8),('Thạc sĩ',1);
/*!40000 ALTER TABLE `hocphanctdt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 16:16:35
