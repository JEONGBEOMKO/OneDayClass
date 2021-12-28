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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_code` varchar(45) DEFAULT NULL,
  `creator_id` int(11) DEFAULT '5',
  `class_name` varchar(100) NOT NULL,
  `class_price` int(11) NOT NULL,
  `class_brief` varchar(200) DEFAULT NULL,
  `class_tag` varchar(100) DEFAULT NULL,
  `class_discount` int(11) DEFAULT NULL,
  `class_register_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `class_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `class_level` varchar(20) DEFAULT NULL,
  `class_thumb_uploadpath` varchar(200) DEFAULT NULL,
  `class_thumb_uuid` varchar(200) DEFAULT NULL,
  `class_thumb_filename` varchar(200) DEFAULT NULL,
  `class_img1_uploadpath` varchar(200) DEFAULT NULL,
  `class_img1_uuid` varchar(200) DEFAULT NULL,
  `class_img1_filename` varchar(200) DEFAULT NULL,
  `class_info1` varchar(400) DEFAULT NULL,
  `class_img2_uploadpath` varchar(200) DEFAULT NULL,
  `class_img2_uuid` varchar(200) DEFAULT NULL,
  `class_img2_filename` varchar(200) DEFAULT NULL,
  `class_info2` varchar(400) DEFAULT NULL,
  `class_img3_uploadpath` varchar(200) DEFAULT NULL,
  `class_img3_uuid` varchar(200) DEFAULT NULL,
  `class_img3_filename` varchar(200) DEFAULT NULL,
  `class_info3` varchar(400) DEFAULT NULL,
  `class_curriculum1` varchar(200) DEFAULT NULL,
  `class_curriculum2` varchar(200) DEFAULT NULL,
  `class_curriculum3` varchar(200) DEFAULT NULL,
  `class_curriculum4` varchar(200) DEFAULT NULL,
  `creator_profile_uploadpath` varchar(200) DEFAULT NULL,
  `creator_profile_filename` varchar(200) DEFAULT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `creator_phone` varchar(50) DEFAULT NULL,
  `creator_sns1` varchar(100) DEFAULT NULL,
  `creator_sns2` varchar(100) DEFAULT NULL,
  `creator_sns3` varchar(100) DEFAULT NULL,
  `creator_info` varchar(400) DEFAULT NULL,
  `hit` int(11) DEFAULT '0',
  `tool_filename` varchar(200) DEFAULT 'tools.png',
  PRIMARY KEY (`class_id`),
  KEY `cate_code` (`cate_code`),
  KEY `class_ibfk_1` (`creator_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `class_creator` (`creator_id`),
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`cate_code`) REFERENCES `class_category` (`cate_code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'1301',1,'유니크한 케이크 만들기',40000,'인스타 감성의 케이크 만들기','HOT',20,'2021-12-22 03:50:38','2021-12-22 03:50:38','중급자',NULL,NULL,'cake9.png',NULL,NULL,'cake7.png','시트 만들기부터 시작해서 크림 만들기까지 기본적인 케이크를 만들어봅니다.',NULL,NULL,'cake13.png','레터링을 기본으로 한 생일케이크 만들기 샘플을 여러개 만들어봅니다.<br>이를 응용해서 나만의 생일 케이크를 만들어 볼 수 있어요.',NULL,NULL,'cake10.png','공휴일이나 기념일에 알맞는 케이크를 3종류 만들어보면서 케이크 데코를 마스터할 수 있습니다.<br>커스텀해서 행복한 기념일에 사랑하는 사람들과 좋은 시간을 가져보세요.','시트와 크림 만들기','기본 케이크 만들기','레터링으로 꾸미는 케이크 만들기','케이크 데코 마스터',NULL,'cake3.png','케이크러버','010-3333-4444','cake_lover','cake_lover','cake_lover','케이크의 매력을 널리 알리고자 유튜브 채널을 개설하고 스토어를 운영하였습니다.<br>그 동안 단골손님을 비롯한 많은 구독자분들과 손님들께서 클래스 문의를 많이 주셨었는데, 매장운영 하기에도 벅차 오프라인 클래스는 준비할 여력이 안됐습니다.<br>이번에 최초로! 많은 시행착오를 통해 얻은 노하우와 많은 분들이 사랑해주신 레시피를 여기에 오픈하려고 합니다.<br>집에서 취미로 베이킹하시는 분들에게 유익한 수업이 될 거라고 확신합니다.',301,'tools1.png'),(2,'1201',2,'피아노 반주의 모든 것',30000,'피아노 반주 마스터','HOT',10,'2021-12-22 05:12:38','2021-12-22 05:12:38','초급자',NULL,NULL,'inst4.png',NULL,NULL,'inst1.png','코드 읽기부터 시작해서 스케일까지 알아본 후 다양한 곡으로 연습해봅니다.\r <br>기본화음부터 7화음까지 학습합니다.',NULL,NULL,'compose1.png','어려운 화성학을 배우며 보다 이해하기 쉽게 알려드립니다.',NULL,NULL,'inst6.png','코드를 다양하게 해석하여 즉흥연주까지 가능하게 연습합니다.','기본 코드 익히기','스케일 연주해보기','화성 학습','즉흥연주까지 가능한 피아노 마스터',NULL,'inst5.png','건반마스터','010-1111-2222','master_yt','master_insta','master_twitt','취미로 피아노를 배워보고싶으신 분들 중에 코드만 있는 악보로 연습할 때 어떻게 시작하고, 연습해야 하는지 모르는 경우가 많습니다.<br>제 경험을 토대로 마음을 사로잡는 연주, 편곡을 위한 다양한 팁을 알려드리겠습니다.<br>과정을 다 이수하시면 즉흥 연주까지 마스터하여 어디서든 장기를 뽐낼 수 있게 되실 거예요.<br>취미 생활로 피아노 어떠세요?',312,'tools3.png'),(3,'1103',3,'색연필로 초상화 그리기',50000,'색연필 기초 드로잉','NEW',30,'2021-12-22 06:10:10','2021-12-22 06:10:10','입문자',NULL,NULL,'pencil5.png',NULL,NULL,'pen9.png','객체를 기본적인 형태로 파악하고 스케치하는 방법을 배워봅니다.',NULL,NULL,'pencil2.png','색상 선택하는 법과 컬러믹싱을 통해 채색법을 학습합니다.< br>디테일한 부분을 정확하게 묘사하는 방법을 학습해봅니다.',NULL,NULL,'pencil13.png','학습했던 내용들을 바탕으로 자신의 얼굴을 관찰하고 초상화를 그립니다.','선 그리기 연습','물체를 디테일하게 묘사하기','컬러 믹싱을 이용한 채색하기','자기 초상화 그리기',NULL,'pencil8.png','파워금손','010-5555-6666','power_yt','power_insta','power_twitt','미대를 졸업하고 미술교육 분야에서 취미 미술부터 입시 미술까지 다양하게 수업을 진행했어요.<br>연필 소묘, 색연필, 수채화 등 다양한 기법으로 그림을 표현하고 작업하는 것을 좋아해서 늘 그림과 함께 시간을 보냈답니다.<br>그동안 쌓인 저의 노하우로 초보자도 쉽게 그림을 그릴 수 있도록 처음부터 끝까지 자세하게 알려드릴게요.',132,'tools2.png'),(4,'2101',4,'웹사이트 만들기',45000,'기초부터 시작해서 사이트 제작까지','NEW',10,'2021-12-22 06:32:35','2021-12-22 06:32:35','초급자',NULL,NULL,'Front8.png',NULL,NULL,'Front11.png','html, css 기초부터 시작해서 프론트 엔드 개념을 익혀나갑니다.',NULL,NULL,'Front10.png','자바스크립트를 활용하여 다양한 효과를 넣고 동적페이지를 만들어줍니다.',NULL,NULL,'Front3.png','여러 개의 샘플을 통해 웹사이트 제작하는 법까지 학습합니다.','html, css 개념 익히기','javascript 개념 익히고 적용하기','기본적인 웹사이트 틀 만들기','4개 정도의 웹사이트 만들어보기',NULL,'person.png','프론트가 최고야','010-1234-5678','Front_best','Front_best','Front_best','프론트 엔드에서 6년째 근무중인 프론트엔드 개발자입니다.<br>직접 페이지를 만들어보고 싶으신 분들을 위해 초급자용 강좌를 만들어봤습니다.<br>이 강의를 들으시는 분들께 많은 도움이 되었으면 좋겠습니다.',130,'tools4.png'),(5,'1302',5,'홈베이킹 마카롱 만들기',35000,'집에서 캐릭터 마카롱 만들기','HOT',10,'2021-12-22 06:53:03','2021-12-22 06:53:03','중급자',NULL,NULL,'pastry18.png',NULL,NULL,'pastry16.png','꼬끄 만들기부터 다양한 종류의 필링 만들기도 배울 수 있습니다.',NULL,NULL,'pastry15.png','필링으로 문양을 만들거나 꼬끄를 변화시켜서 조금더 예쁜 마카롱을 만들어봅니다.\r<br>뚱카롱부터 시작해서 이색적인 마카롱을 만들어볼 수 있습니다.',NULL,NULL,'pastry12.png','3가지 종류의 캐릭터 마카롱을 만들어봅니다.\r<br>이를 이용하여 나만의 캐릭터 마카롱을 만들어 볼 수 있습니다.','꼬끄 만들기','다양한 종류의 필링 만들기','뚱카롱 만들기','나만의 캐릭터 마카롱 만들기',NULL,'pastry13.png','blanc','010-9876-5432','blanc_creator','blanc_creator','blanc_creator','달달하면서도 모양이 귀여운 마카롱을 좋아했고, 마카롱의 매력을 널리 알리고자 유튜브 채널을 개설하여 운영했습니다.<br>100만 구독자의 요청으로 팝업 스토어도 열어본 적 있었고 그 경험을 토대로 저만의 스토어를 개설하게 되었습니다.<br>많은 분들의 응원덕에 현재까지도 많은 분들이 대기줄까지 서시면서 찾아주시는 디저트가게를 운영하고 있습니다.<br>그 동안 단골손님을 비롯한 많은 구독자분들과 손님들께서 클래스 문의를 많이 주셨었는데, 매장운영 하기에도 벅차 오프라인 클래스는 준비할 여력이 안됐습니다.<br>이번에 최초로! 많은 시행착오를 통해 얻은 노하우와 많은 분들이 사랑해주신 레시피를 여기에 오픈하려고 합니다.<br>집에서 취미로 베이킹하시는 분들에게 유익한 수업이 될 거라고 확신합니다.',386,'tools1.png'),(6,'1101',6,'Only 연필 인물드로잉',42000,'연필 인물 드로잉','HOT',20,'2021-12-22 09:26:32','2021-12-22 09:26:32','전문가',NULL,NULL,'pen6.png',NULL,NULL,'pen5.png','이목구비를 각도에 따라 그리는 법을 배웁니다.',NULL,NULL,'pen2.png','다양한 포즈의 사진 자료를 참고하여 그려보면서 인물 자세와 비율을 연구합니다. ',NULL,NULL,'pen1.png','이목구비 비율에 맞게 인물 드로잉을 한 후, 틀 없이도 이목구비를 그려봅니다.<br>자세도 비율에 맞추어 드로잉합니다.','각도에 따라 이목구비 그리기','다양한 포즈 연구하여 그리기','이목구비 비율에 맞게 인물 드로잉','인물 전체 드로잉',NULL,'pen7.png','pencilholic','010-1212-4545','pencilholic_1','pencilholic_1','pencilholic_1','연필 하나만으로 그림 그리는 작가 pencilholic입니다. 미대 졸업 후 지금은 일러스트 작가로 활동하고 있습니다.<br>처음 인물 그릴 때 비율 맞게 그리는게 어려웠어서 여러분에게 그 비법을 공유하려고 합니다.<br>노트, 연필만 가지고 있다면 어디서든 수강하실 수 있으니 그림 그리는 취미를 가지고 계신 분들이 비용이나 재료 부담 없이 즐기셨으면 좋겠습니다.',149,'tools2.png'),(7,'1102',7,'마카 드로잉 입문 강좌',20000,'마카 드로잉의 매력 알리기','HOT',NULL,'2021-12-23 01:12:31','2021-12-23 01:12:31','입문자',NULL,NULL,'marker7.png',NULL,NULL,'marker8.png','드로잉에 맞는 마카의 사용법과 명암넣기 등 마카를 이용한 표현기법 등을 학습합니다. <br>이후 강좌를 위해 가장 중요한 기초를 다질 수 있는 강좌입니다. ',NULL,NULL,'calli.png','마카를 이용해서 간단한 캘리그라피 서체들을 배워봅니다.',NULL,NULL,'marker4.png','디저트와 음료를 함께 그려보며 더 세밀한 표현을 해봅니다. <br>간단한 캘리그라피도 곁들여서 보다 완성도를 더해줍니다.','선 그리기와 명암 넣기 연습','간단 도형 그려보기','간단 캘리그라피 3종','카페와 디저트로 메뉴 만들어보기',NULL,'marker13.png','MK','010-5656-2323','MK_best','MK_best','MK_best','인스타그램에 마카드로잉을 업로드하면서 입소문을 타기 시작해 오프라인 원데이 클래스를 운영해보았습니다.<br>오프라인으로 알려드리는 것도 물론 너무 행복하고 보람되었지만 공간 특성상 제한된 인원만 수강할 수 있다는 점이 아쉬워 이렇게 온라인 강좌로도 오픈해 보았습니다.<br>많은 분들이 마카 드로잉의 매력에 입문하셨으면 좋겠습니다.<br>행복한 드로잉 생활되세요 :)',186,'tools2.png'),(8,'1202',8,'보컬 노하우 방출',30000,'보컬 트레이너에게 배우는 보컬 수업','NEW',30,'2021-12-23 07:40:12','2021-12-23 07:40:12','초급자',NULL,NULL,'vocal4.png',NULL,NULL,'vocal6.png','발성기관의 이해를 시작으로 공명과 발음, 워밍업 기술을 알려드립니다.',NULL,NULL,'vocal4.png','음색에 대해 이해하고 나만의 음색을 찾아봅니다.<br>노래에 스토리텔링을 더하여 보다 더 깊이를 더해줍니다.',NULL,NULL,'vocal2.png','고음/저음 부분에 자신감이 떨어지시는 분들을 위해 고음/저음 특강을 통해 이유를 알아보고, 해당 부분을 정복해봅니다.','발성에 대한 이해','음색에 대한 이해','곡 형식에 따른 스토리 텔링','고음/저음 특강 강좌',NULL,'vocal5.png','보컬마스터','010-7777-8888','vc_master','vc_master','vc_master','유명 보컬학원에서 8년째 학생들을 가르치며 인기 경연 프로그램 ㅁㅁ에서 지원자들을 티칭했던 보컬마스터입니다.<br>주변의 많은 분들께서 노래를 잘 부르는 방법에 대해 관심이 있으시지만 어떻게 시작해야할지 잘 모르겠다는 이야기를 듣고 온라인 강좌를 열어보았습니다.<br>많은 분들을 지도했던 경험을 살려서 여러분들의 궁금증을 속시원히 해결해 드리겠습니다.<br>이제 어디서든 자신의 기량을 뽐내보세요.',100,'tools3.png'),(9,'1203',9,'음악감독의 작곡 노하우',45000,'기초부터 시작해서 영상 음악 제작해보기','NEW',10,'2021-12-23 07:52:33','2021-12-23 07:52:33','중급자',NULL,NULL,'compose5.png',NULL,NULL,'compose2.png','코드 진행에 쓰이는 3화음, 7화음을 먼저 배웁니다.<br>많이 쓰이는 코드의 진행 패턴도 익혀봅니다.',NULL,NULL,'inst5.png','단순한 코드를 예쁘고 감각적으로 만들어본 후 곡의 분위기를 살리는 주법을 찾아서 연주합니다.',NULL,NULL,'compose6.png','영상의 분위기에 맞게 음악을 작곡한 후 믹싱 작업을 통해 곡을 하나 완성해봅니다.','화성학 학습','실용음악에서 인기있는 진행들 학습','영상음악을 직접 만들어보기','믹싱 작업을 통해 완성도 높이기',NULL,'compose5.png','musicholic','010-1929-7372','music_holic','music_holic','music_holic','음악을 사랑하는 음악감독 musicholic입니다. 영화음악, 대중음악 및 미디어와 관련된 다양한 창작 작업을 하고 있습니다.<br>저도 아무것도 모르던 시절이 있었고 주변 후배 음악 감독들이 창작에 대한 어려움을 겪는 걸 보고 도움을 드리고자 강좌를 열어보게 되었습니다.<br>음악을 통해 아름다운 예술과 같은 일상을 만들어드리고 싶습니다.',94,'tools3.png'),(10,'1303',5,'홈베이킹 빵 만들기',30000,'집에서도 만드는 빵 만들기','NEW',20,'2021-12-23 08:01:02','2021-12-23 08:01:02','입문자',NULL,NULL,'bakery12.png',NULL,NULL,'bakery15.png','기본적인 반죽법, 발효 방법을 배우면서 제빵 기초 이론을 학습합니다.',NULL,NULL,'bakery16.png','바게트와 식빵을 만들어봅니다.<br>다양한 속재료를 추가하여 변화를 줍니다.',NULL,NULL,'bakery13.png','홈파티에 알맞는 3가지 종류의 간단한 빵을 만들어봅니다.','제빵 기초 이론','바케트와 식빵 만들기','다양한 속 재료를 이용하여 변화 주기','홈파티에 사용할 수 있는 제빵',NULL,'pastry13.png','blanc','010-9876-5432','blanc_creator','blanc_creator','blanc_creator','마카롱 클래스를 운영하고 있는 크리에이터 blanc입니다.<br>여러분의 성원에 힘입어 제빵 클래스까지 개설하게 되었습니다. 고소한 빵 냄새를 맡으며 힐링하는 시간이 되어보세요.<br>취미로 시작해서 직업으로 제과, 제빵 일을 하고 있지만 많은 분들에게 제과제빵의 매력을 알릴 수 있게 되어 더욱 행복합니다.<br>고소한 빵의 세계로 들어오세요 :)',114,'tools1.png'),(11,'2102',10,'파이썬 파헤치기',50000,'파이썬 기본부터 장고까지 학습하기','NEW',20,'2021-12-23 17:12:22','2021-12-23 17:12:22','중급자',NULL,NULL,'Back2.png',NULL,NULL,'Back2.png','파이썬 문법의 기본부터 심화까지 학습합니다.<br>파이썬을 처음 학습하시는 분이라면 어려울 수 있습니다.',NULL,NULL,'Back3.png','파이썬을 이용한 프로젝트를 진행합니다.<br>간단한 화면 구현도 함께 진행합니다.',NULL,NULL,'Back8.png','파이썬 기반 웹 프레임워크인 장고를 이용하여 웹사이트를 제작해봅니다.<br>여러가지 기능들을 조합하여 자신만의 웹사이트를 만들 수 있습니다.','파이썬 문법 익히기','실전 프로젝트 1','실전 프로젝트 2','장고로 웹사이트 만들기',NULL,'compose5.png','코딩러버','010-7575-3123','cd_lover','cd_lover','cd_lover','프론트 개발자로 3년, 백엔드 개발자로 10년째 일하고 있는 개발자 코딩러버입니다.<br>많은 분들이 코딩에 관심을 가지고 배우지만 공부하는 방법에 대해 어려움을 겪는다는 이야기를 들었습니다. 효과적인 공부 방법과 저의 노하우를 전수하여 많은 분들이 코딩의 매력을 알아가셨으면 좋겠습니다.<br>파이썬 강좌를 통해 일상적으로 많이 보던 웹 사이트를 직접 만들어보는 시간을 가져보세요.',99,'tools4.png'),(12,'1301',11,'달달 케이크 basic',45000,'기본적인 케이크를 맛있게 만들기','NEW',10,'2021-12-23 17:24:05','2021-12-23 17:24:05','초급자',NULL,NULL,'cake7.png',NULL,NULL,'cake4.png','실패없이 굽는 부드러운 케이크 시트를 자세한 팁과 함께 만들어봅니다.',NULL,NULL,'cake5.png','크림을 균일하게 아이싱 하는 법을 배워봅니다.<br>도구 사용법부터 차근차근 자세히 같이 해요.',NULL,NULL,'cake2.png','생크림과 초코 케이크를 각각 2종씩 만들어봅니다.<br>창의력을 이용하여 데코를 더해 완성도를 높일 수 있습니다.','실패하지 않는 케이크 시트 굽기','크림과 아이싱','생크림 케이크 만들기 2종','초코 케이크 만들기 2종',NULL,'cake11.png',' estrella','010-3333-7777','estrella_ck','estrella_ck','estrella_ck','유명호텔 디저트 파트에서 7년 일한 후 지금은 케이크 전문점 estrella를 운영하고 있습니다.<br>처음 케이크를 만들었을 때 레시피대로 만들어도 실패하는 경우가 많았는데 그 이유를 알지 못해서 더 막막했던 심정을 잘 알고 있습니다.<br>그동안 쌓아온 경험을 토대로 차근차근 실속있게 알려드릴게요 :)',81,'tools1.png'),(13,'1303',12,'행복한 빵 생활',50000,'제빵','NEW',20,'2021-12-23 17:32:06','2021-12-23 17:32:06','전문가',NULL,NULL,'bakery11.png',NULL,NULL,'bakery8.png','빵의 기본이 되는 믹싱법을 손반죽과 기계반죽 두가지 모두 배워봅니다.<br> 이후 스콘, 바게트를 만들어봅니다.',NULL,NULL,'bakery10.png','브리오슈, 크루아상, 몽블랑 등을 만들어봅니다.<br>간단한 응용을 통해 홈파티에 이용해보세요.',NULL,NULL,'bakery4.png','기본적인 글레이즈드 도넛부터 시작해서 데코를 곁들인 도넛까지 만들어봅니다.','믹싱법 학습','빵 만들기 3종','빵 만들기 3종','도넛 만들기',NULL,'bakery11.png','금손제빵사','010-8480-3725','gs_bakery','gs_bakery','gs_bakery','베이킹을 잘 몰랐던 저도 여러번의 실패 과정을 거쳐 이제는 많은 사람들이 찾아주는 빵집인 gs_bakery를 운영하고 있습니다.<br>다양한 종류의 제빵 기술을 학습하고 싶지만 올인원 클래스가 없어서 고민하셨던 분들, 자신만의 베이커리 가게를 내고 싶으신 분들을 위해 온라인 강좌를 열게 되었습니다.<br>고소한 빵냄새로 힐링하시면서 다양한 제빵의 매력을 느껴보세요.',7,'tools1.png'),(14,'1103',13,'색연필로 사진처럼',38000,'동물 색연필 드로잉','NEW',10,'2021-12-23 20:28:41','2021-12-23 20:28:41','초급자',NULL,NULL,'pencil8.png',NULL,NULL,'pen9.png','기본적인 선 연습과 그림의 구도를 잡는 연습을 합니다.<br>연필 소묘도 과정에 약간 포함됩니다.',NULL,NULL,'pencil14.png','색연필의 특징과 장점을 살려서 그림을 입체적으로 그리는 법을 학습합니다.',NULL,NULL,'pencil7.png','색연필의 표현으로 부드럽고 자연스러운 질감을 표현해봅니다.<br>수채화 색연필을 사용할 경우 수채화로 활용하는 법도 알려드립니다.','기본 선 연습 및 색연필 사용법','질감 표현 연습','과일을 사진처럼 그려보기','동물을 사진처럼 그려보기',NULL,'pencil10.png','colorstory','010-5923-1583','colorstory_1','colorstory_1','colorstory_1','안녕하세요 저는 크리에이터 colorstory라고 합니다. 디자인전공자이지만 그림 그리는 것을 좋아해서 계속 공부를 하면서 그림을 그리고 있습니다<br>강렬한 그림을 좋아하다보니 채도와 명도를 디테일하게 조절하며 그림을 많이 그리게 되었습니다. 이번에 강의를 오픈하면서 많은 분들에게 생기 있는 그림을 그리는 팁을 알려드리고자 합니다.<br>어디서든 종이와 색연필만 있으면 함께하실 수 있어요!',21,'tools2.png'),(15,'1201',14,'작은 피아노 칼림바',40000,'작은 엄지 피아노 칼림바 배우기','NEW',20,'2021-12-25 07:55:26','2021-12-25 07:55:26','입문자',NULL,NULL,'inst17.png',NULL,NULL,'inst18.png','칼림바 연주 준비부터 다양한 연습법으로 위치, 박자, 리듬을 익혀봅니다.',NULL,NULL,'inst20.png','연주를 더 돋보이게 하는 손 모양과 편안하게 연주할 수 있는 고급 스킬까지 알려드립니다.',NULL,NULL,'inst22.png','기본 주법 이외에도 칼림바만의 다양한 주법들을 공부하고 실습한 후 연주 동영상을 촬영해 업로드 해봅니다.','칼림바의 기초 음악 개론','기본 주법을 이용한 단계별 연습','칼림바 연주할 때 손 모양 특강','다양한 주법을 이용하여 연주 영상 만들기',NULL,'inst17.png','kalimno1','010-5821-3463','kalimno1','kalimno1','kalimno1','칼림바의 맑은 소리로 사람들에게 힐링을 선사하는 칼림바니스트 kalimno1입니다.<br>어디서나 쉽게 접할 수 있는 좋은 악기이지만 아직까지 정식적으로 국내에 소개된 지 얼마 되지 않아, 더욱 많은 사람들에게 칼림바의 매력을 알리고 싶다는 욕심이 생겼습니다.<br>칼림바의 매력에 함께 풍덩 빠져보실래요?',9,'tools3.png'),(16,'2101',15,'프론트엔드 속성 강좌',45000,'웹 개발 기초 (HTML, CSS, JS)','NEW',35,'2021-12-25 08:31:06','2021-12-25 08:31:06','초급자',NULL,NULL,'Front7.png',NULL,NULL,'Front9.png','웹과 서버에 대한 기본적인 개념들을 알려드립니다.<br>이후 HTML, CSS로 간단한 웹 화면을 만들어봅니다.',NULL,NULL,'Front10.png','JavaScript를 배워보면서 다양한 효과를 넣어 보다 더 임팩트 있는 화면을 구상합니다.',NULL,NULL,'Front5.png','자신만의 웹사이트를 구상해본 후 만들어 봅니다.<br>다른 수강생들의 아이디어도 구경할 수 있습니다.','웹과 서버에 대해 이해하기','HTML, CSS 이해하기','JavaScript 이해하기','나만의 웹사이트 만들어보기',NULL,'Front7.png','creator_ft','01082549156','creator_ft','creator_ft','creator_ft','프리랜서 프론트엔드 개발자로 9년째 일하고 있는 creator_ft입니다.<br>코딩에 대한 관심이 많아지면서 개발을 하겠다는 후배들과 지인들이 많이 생겼지만 어떻게 시작해야할지 막막해하거나 잘못된 방향으로 공부를 하는 분들이 많은 것을 보고 도움을 드리고자 온라인 클래스를 열게 되었습니다.<br>비전공자분들도 이해하기 쉽게 차근차근 알려드리겠습니다. 코딩의 매력에 발을 들여보세요!<br>클래스에서 뵙겠습니다 :)',15,'tools4.png');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
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
