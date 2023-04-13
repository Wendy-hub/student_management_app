-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: studentms
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `student_management_app_student`
--

DROP TABLE IF EXISTS `student_management_app_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_student` (
  `S_id` int NOT NULL AUTO_INCREMENT,
  `S_number` varchar(11) NOT NULL,
  `S_name` varchar(100) NOT NULL,
  `S_sex` varchar(1) NOT NULL,
  `S_major` varchar(100) NOT NULL,
  `S_email` varchar(254) NOT NULL,
  `S_image` varchar(100) NOT NULL,
  `S_introduction` longtext NOT NULL,
  PRIMARY KEY (`S_id`),
  UNIQUE KEY `S_number` (`S_number`),
  UNIQUE KEY `S_email` (`S_email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_student`
--

LOCK TABLES `student_management_app_student` WRITE;
/*!40000 ALTER TABLE `student_management_app_student` DISABLE KEYS */;
INSERT INTO `student_management_app_student` VALUES (1,'20201105001','张明','M','大数据','zhang01@hbu.com','default.jpg',''),(2,'20201105002','马新','M','大数据','mamama@qq.com','default.jpg',''),(14,'20201105005','小伟','M','大数据','2945497290@qq.com','profile_pics/night.jpg','小伟'),(15,'20201105008','test','M','大数据','1098109462@qq.com','profile_pics/ashlad-palace.webp','hello 我是test！'),(17,'20201105009','小田','F','大数据','2744586841@qq.com','profile_pics/Doge_w703Fab.jpg',''),(18,'20201105010','阿亮','M','数学','liang@qq.com','default.jpg',''),(19,'20201105011','复仇者','M','英语','avenger@qq.com','default.jpg',''),(20,'20201105012','Dustin','M','魔法','stranger@example.com','default.jpg',''),(21,'20201105013','Django','F','ORM','django@gmail.com','default.jpg',''),(22,'20201105014','宙斯','M','大数据','zeus@university.com','default.jpg',''),(23,'20201105015','学生15','F','大数据','student15@qq.com','default.jpg',''),(24,'20201105020','2023','M','大数据','123456@example.com','default.jpg','');
/*!40000 ALTER TABLE `student_management_app_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27  0:05:31
