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
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `MaSV` char(10) NOT NULL,
  `Ten` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ho` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailPrivate` varchar(80) DEFAULT NULL,
  `CCCD` char(12) DEFAULT NULL,
  `Phone` char(20) DEFAULT NULL,
  `EmailEdu` varchar(80) DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TaiKhoan` char(20) DEFAULT NULL,
  `MaChuyenNganh` char(10) DEFAULT NULL,
  PRIMARY KEY (`MaSV`),
  KEY `FK__SinhVien__MaChuy__0C50D423` (`MaChuyenNganh`),
  KEY `FK__SinhVien__TaiKho__0D44F85C` (`TaiKhoan`),
  CONSTRAINT `FK__SinhVien__MaChuy__0C50D423` FOREIGN KEY (`MaChuyenNganh`) REFERENCES `chuyennganh` (`MaChuyenNganh`),
  CONSTRAINT `FK__SinhVien__TaiKho__0D44F85C` FOREIGN KEY (`TaiKhoan`) REFERENCES `accounts` (`TaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('0850080001','Văn A','Nguyễn','vana@gmail.com','0834343','0374638463','0850080001@sv.hcmunre.edu.vn',1,'Hà Nội','0850080001','cncnpm'),('0850080010','Xuân Diệu','Nguyễn','xuandieu123@gmail.com','3354436346','03734343343','0850080010@sv.hcmunre.edu.vn',1,'Quảng Bình','0850080010','cncnpm'),('0850080056','Thanh Ý','Nguyễn','thanhy123@gmail.com','343333333','0484234','0850080056@sv.hcmunre.edu.vn',1,'Bình ĐỊnh','0850080056','cncnpm');
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
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
