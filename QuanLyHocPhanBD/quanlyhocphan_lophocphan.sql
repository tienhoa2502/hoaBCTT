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
-- Table structure for table `lophocphan`
--

DROP TABLE IF EXISTS `lophocphan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lophocphan` (
  `MaLop` int NOT NULL AUTO_INCREMENT,
  `TenLop` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MaxSV` int NOT NULL,
  `DotHoc` date DEFAULT NULL,
  `MaLichHoc` char(10) DEFAULT NULL,
  `MaGiaoVien` char(10) DEFAULT NULL,
  `MaPhong` char(10) DEFAULT NULL,
  `MaHP` int DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MaLop`),
  KEY `FK__LopHocPha__MaPho__01142BA1` (`MaPhong`),
  KEY `FK__LopHocPha__DotHo__03BB8E22` (`DotHoc`),
  KEY `FK__LopHocPha__MaGia__04AFB25B` (`MaGiaoVien`),
  KEY `FK__LopHocPha__MaLic__7C4F7684` (`MaLichHoc`),
  KEY `MaHP` (`MaHP`),
  CONSTRAINT `FK__LopHocPha__DotHo__03BB8E22` FOREIGN KEY (`DotHoc`) REFERENCES `namhochocky` (`DotHoc`),
  CONSTRAINT `FK__LopHocPha__MaGia__04AFB25B` FOREIGN KEY (`MaGiaoVien`) REFERENCES `giaovien` (`MaGV`),
  CONSTRAINT `FK__LopHocPha__MaLic__7C4F7684` FOREIGN KEY (`MaLichHoc`) REFERENCES `lichhoc` (`MaLichHoc`),
  CONSTRAINT `FK__LopHocPha__MaPho__01142BA1` FOREIGN KEY (`MaPhong`) REFERENCES `phonghoc` (`MaPhong`),
  CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`MaHP`) REFERENCES `hocphan` (`MaHP`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lophocphan`
--

LOCK TABLES `lophocphan` WRITE;
/*!40000 ALTER TABLE `lophocphan` DISABLE KEYS */;
INSERT INTO `lophocphan` VALUES (1,'Lớp lập trình cơ bản',33,'2022-09-05','LH01','GV01','B205',3,0),(2,'Lớp lập trình nâng cao',35,'2022-09-05','LH01','GV01','B307',4,1),(3,'Lậnh trình hướng đối tượng',33,'2022-02-18','LH02','GV01','B205',15,0),(5,'Cấu trúc dữ liệu và giải thuật 2',31,'2022-09-05','LH01','GV01','B307',5,0),(6,'Lớp công nghệ ',32,'2022-06-10','LH02','GV01','B205',8,0),(7,'Mô hình hoá môi trường',32,'2022-09-05','LH01','GV01','B205',14,1);
/*!40000 ALTER TABLE `lophocphan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 16:16:34
