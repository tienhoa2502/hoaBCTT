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
-- Table structure for table `lichhoc`
--

DROP TABLE IF EXISTS `lichhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichhoc` (
  `MaLichHoc` char(10) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `MaCaHoc` char(10) DEFAULT NULL,
  `Thu` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaLichHoc`),
  KEY `FK__LichHoc__MaCaHoc__5535A963` (`MaCaHoc`),
  CONSTRAINT `FK__LichHoc__MaCaHoc__5535A963` FOREIGN KEY (`MaCaHoc`) REFERENCES `cahoc` (`MaCaHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichhoc`
--

LOCK TABLES `lichhoc` WRITE;
/*!40000 ALTER TABLE `lichhoc` DISABLE KEYS */;
INSERT INTO `lichhoc` VALUES ('LH01','2022-09-05','2022-11-13','C01','thứ 2'),('LH02','2022-02-18','2022-04-15','C02','thứ 3'),('LH03','2022-02-18','2022-02-18','C02','thứ 3'),('LH04','2022-09-05','2022-11-13','C01','thứ 3'),('LH05','2022-09-05','2022-11-13','C01','thứ 4'),('LH06','2022-09-05','2022-11-13','C01','thứ 5'),('LH07','2022-09-05','2022-11-13','C01','thứ 6'),('LH08','2022-09-05','2022-11-13','C01','thứ 7');
/*!40000 ALTER TABLE `lichhoc` ENABLE KEYS */;
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
