-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: ONEDAYCLASS_1
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
-- Table structure for table `CLASS_MEMBER`
--

DROP TABLE IF EXISTS `CLASS_MEMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLASS_MEMBER` (
  `memberId` varchar(50) NOT NULL,
  `memberPw` varchar(100) NOT NULL,
  `memberName` varchar(30) NOT NULL,
  `memberMail` varchar(100) NOT NULL,
  `memberAddr1` varchar(100) NOT NULL,
  `memberAddr2` varchar(100) NOT NULL,
  `memberAddr3` varchar(100) NOT NULL,
  `adminCk` int(11) NOT NULL,
  `regDate` date NOT NULL,
  `money` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLASS_MEMBER`
--

LOCK TABLES `CLASS_MEMBER` WRITE;
/*!40000 ALTER TABLE `CLASS_MEMBER` DISABLE KEYS */;
INSERT INTO `CLASS_MEMBER` VALUES ('','','','test','','','',0,'2021-12-02',100000,5000),('admin','$2a$10$k2ge4Iq0aaKzh.n0/oFWFuSSfwDdiTrj5rkYJjnn4SboQ7sypUEYO','관리자','krabat116@naver.com','17040','경기 용인시 처인구 영문로29번길 29-1 (유방동, 애플빌라)','108동 203호',1,'2021-12-05',100000,5000),('test','test','test','test','test','test','test',0,'2021-11-30',100000,5000),('test3','test3','test3','test3','test3','test3','test3',0,'2021-12-01',100000,5000),('test5','$2a$10$6OLLORFJgw892EN4NEz.FeTMq3wtqQ0VROFFVC3/L9H8Yb5tbAuba','test5','krabat116@naver.com','17040','경기 용인시 처인구 영문로29번길 29-3 (유방동, 애플빌라)','108동 203호',0,'2021-12-05',100000,5000),('ttt','1234','침펄풍','krabat116@naver.com','17020','경기 용인시 처인구 역북동 399-10 ','1-1',0,'2021-12-04',100000,5000);
/*!40000 ALTER TABLE `CLASS_MEMBER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 11:19:15
