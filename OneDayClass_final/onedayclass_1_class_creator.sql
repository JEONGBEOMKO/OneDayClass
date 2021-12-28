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
-- Table structure for table `class_creator`
--

DROP TABLE IF EXISTS `class_creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_creator` (
  `creator_id` int(11) NOT NULL AUTO_INCREMENT,
  `memberId` varchar(50) NOT NULL,
  `creator_name2` varchar(100) NOT NULL,
  `creator_intro` varchar(200) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`creator_id`),
  KEY `memberId_idx` (`memberId`),
  CONSTRAINT `memberId` FOREIGN KEY (`memberId`) REFERENCES `class_member` (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_creator`
--

LOCK TABLES `class_creator` WRITE;
/*!40000 ALTER TABLE `class_creator` DISABLE KEYS */;
INSERT INTO `class_creator` VALUES (1,'test','케이크러버','크리에이터 소개','2021-12-08 05:57:36','2021-12-08 05:57:36'),(2,'test3','건반마스터','크리에이터 소개','2021-12-08 05:57:36','2021-12-08 05:57:36'),(3,'test','파워금손','크리에이터 소개','2021-12-08 15:19:22','2021-12-08 15:19:22'),(4,'test','프론트가 최고야','크리에이터 소개','2021-12-09 01:35:32','2021-12-09 01:35:32'),(5,'qwerty','blanc','크리에이터 소개','2021-12-09 06:10:10','2021-12-09 06:10:10'),(6,'ttt','pencilholic','크리에이터 소개','2021-12-09 06:18:41','2021-12-09 06:18:41'),(7,'test','MK','크리에이터 소개','2021-12-09 13:07:54','2021-12-09 13:07:54'),(8,'test','보컬마스터','크리에이터 소개','2021-12-09 13:07:54','2021-12-09 13:07:54'),(9,'ttt','musicholic','크리에이터 소개','2021-12-09 13:07:58','2021-12-09 13:07:56'),(10,'ttt','코딩러버','크리에이터 소개','2021-12-23 17:41:28','2021-12-23 17:41:28'),(11,'test3','estrella','크리에이터 소개','2021-12-23 17:41:28','2021-12-23 17:41:28'),(12,'test3','금손제빵사','크리에이터 소개','2021-12-23 17:41:28','2021-12-23 17:41:28'),(13,'ttt','colorstory','크리에이터 소개','2021-12-24 02:21:56','2021-12-24 02:21:56'),(14,'qwerty','kalimno1','크리에이터 소개','2021-12-25 08:41:12','2021-12-25 08:41:12'),(15,'qwerty','creator_ft','크리에이터 소개','2021-12-25 08:41:12','2021-12-25 08:41:12');
/*!40000 ALTER TABLE `class_creator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-27 14:01:44
