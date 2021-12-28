-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: onedayclass_1
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `class_category`
--

DROP TABLE IF EXISTS `class_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_category` (
  `tier` int(11) DEFAULT NULL,
  `cate_code` varchar(45) NOT NULL,
  `cate_name` varchar(45) DEFAULT NULL,
  `cate_parent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cate_code`),
  KEY `cate_parent` (`cate_parent`),
  CONSTRAINT `class_category_ibfk_1` FOREIGN KEY (`cate_parent`) REFERENCES `class_category` (`cate_code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_category`
--

LOCK TABLES `class_category` WRITE;
/*!40000 ALTER TABLE `class_category` DISABLE KEYS */;
INSERT INTO `class_category` VALUES (1,'1000','크리에이티브',NULL),(2,'1100','드로잉','1000'),(3,'1101','펜/연필','1100'),(3,'1102','마카','1100'),(3,'1103','색연필','1100'),(2,'1200','음악','1000'),(3,'1201','악기','1200'),(3,'1202','보컬','1200'),(3,'1203','작곡','1200'),(2,'1300','베이킹','1000'),(3,'1301','케이크','1300'),(3,'1302','제과','1300'),(3,'1303','제빵','1300'),(1,'2000','커리어',NULL),(2,'2100','개발','2000'),(3,'2101','Web/프론트엔드','2100'),(3,'2102','서버/백엔드','2100');
/*!40000 ALTER TABLE `class_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-27 14:01:45
