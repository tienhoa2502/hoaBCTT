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
-- Table structure for table `hocphan`
--

DROP TABLE IF EXISTS `hocphan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocphan` (
  `MaHP` int NOT NULL AUTO_INCREMENT,
  `TenHocPhan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SoTinChi` int DEFAULT NULL,
  `MaKhoa` char(10) DEFAULT NULL,
  PRIMARY KEY (`MaHP`),
  KEY `FK__HocPhan__MaKhoa__19AACF41` (`MaKhoa`),
  CONSTRAINT `FK__HocPhan__MaKhoa__19AACF41` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocphan`
--

LOCK TABLES `hocphan` WRITE;
/*!40000 ALTER TABLE `hocphan` DISABLE KEYS */;
INSERT INTO `hocphan` VALUES (1,'Toán cao cấp 3',3,'DaiCuong'),(2,'Toán cao cấp 1',2,'DaiCuong'),(3,'Lập trình cơ bản',3,'KhoaHTTT'),(4,'Lập trình nâng cao',3,'KhoaHTTT'),(5,'Cấu trúc dữ liệu và giải thuật',3,'KhoaHTTT'),(6,'Xử lý tín hiệu và lọc số',2,'KhoaHTTT'),(7,'Quản trị kinh doanh',3,'KTTNMT'),(8,'Nguyên lý thống kê',2,'LvLLCT'),(9,'Tài nguyên đất',2,'MoiTruong'),(10,'Tài nguyên hải đảo',3,'QLTNBvHD'),(11,'Kinh tế luật',3,'LvLLCT'),(12,'Nguyên lý thống kê',3,'LvLLCT'),(13,'Trắc địa bản đồ cơ bản',3,'Gis'),(14,'Mô hình hoá môi trường',3,'KhoaHTTT'),(15,'Lập trình hướng đối tượng',3,'KhoaHTTT'),(16,'Trí tuệ nhân tạo',3,'KhoaHTTT'),(17,'Mô hình hoá môi trường',4,'KhoaHTTT'),(18,'Toán cao cấp 2',2,'DaiCuong'),(19,'Xác xuất ',2,'DaiCuong'),(20,'Lịch sử đảng',2,'DaiCuong');
/*!40000 ALTER TABLE `hocphan` ENABLE KEYS */;
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
