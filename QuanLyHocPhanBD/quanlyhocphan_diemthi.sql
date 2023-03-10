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
-- Table structure for table `diemthi`
--

DROP TABLE IF EXISTS `diemthi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diemthi` (
  `MaSV` char(10) DEFAULT NULL,
  `DotHoc` date DEFAULT NULL,
  `NgayThi` date DEFAULT NULL,
  `LanHoc` int DEFAULT NULL,
  `Diem` double DEFAULT NULL,
  `MaHP` int DEFAULT NULL,
  `MaLop` int DEFAULT NULL,
  KEY `FK__DiemThi__DotHoc__44CA3770` (`DotHoc`),
  KEY `FK__DiemThi__MaSV__47A6A41B` (`MaSV`),
  KEY `MaHP` (`MaHP`),
  KEY `MaLop` (`MaLop`),
  CONSTRAINT `diemthi_ibfk_1` FOREIGN KEY (`MaHP`) REFERENCES `hocphan` (`MaHP`),
  CONSTRAINT `diemthi_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `lophocphan` (`MaLop`),
  CONSTRAINT `FK__DiemThi__DotHoc__44CA3770` FOREIGN KEY (`DotHoc`) REFERENCES `namhochocky` (`DotHoc`),
  CONSTRAINT `FK__DiemThi__MaSV__47A6A41B` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemthi`
--

LOCK TABLES `diemthi` WRITE;
/*!40000 ALTER TABLE `diemthi` DISABLE KEYS */;
INSERT INTO `diemthi` VALUES ('0850080001','2022-09-05','2022-11-21',1,6.2,3,1),('0850080056','2022-09-05','2022-11-25',1,9,4,2),('0850080010','2022-09-05','2022-11-19',2,8.9,5,3),('0850080056','2022-09-05',NULL,1,1,3,1);
/*!40000 ALTER TABLE `diemthi` ENABLE KEYS */;
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
