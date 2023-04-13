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
-- Table structure for table `student_management_app_course`
--

DROP TABLE IF EXISTS `student_management_app_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_course` (
  `C_id` int NOT NULL AUTO_INCREMENT,
  `C_number` varchar(50) NOT NULL,
  `C_name` varchar(120) NOT NULL,
  `T_id_id` varchar(11) NOT NULL,
  `C_site` varchar(50) NOT NULL,
  `C_time` date NOT NULL,
  PRIMARY KEY (`C_id`),
  UNIQUE KEY `C_number` (`C_number`),
  KEY `student_management_app_course_T_id_id_8609297c` (`T_id_id`),
  CONSTRAINT `student_management_app_course_T_id_id_8609297c_fk` FOREIGN KEY (`T_id_id`) REFERENCES `student_management_app_teacher` (`T_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_course`
--

LOCK TABLES `student_management_app_course` WRITE;
/*!40000 ALTER TABLE `student_management_app_course` DISABLE KEYS */;
INSERT INTO `student_management_app_course` VALUES (1,'0001','python','20221105001','综合教学楼','2022-11-29'),(2,'0002','数据库原理','20221105001','综合教学楼','2022-11-30'),(3,'0005','分布式','20221105002','七教','2022-11-04'),(4,'0004','爬墙','20221105003','花园','2022-11-30');
/*!40000 ALTER TABLE `student_management_app_course` ENABLE KEYS */;
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
