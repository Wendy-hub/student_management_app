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
-- Table structure for table `student_management_app_sc`
--

DROP TABLE IF EXISTS `student_management_app_sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_sc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int DEFAULT NULL,
  `C_id_id` varchar(50) NOT NULL,
  `S_id_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_C_id_id_cae31a31_fk_student_m` (`C_id_id`),
  KEY `student_management_app_sc_S_id_id_37f669e1_fk` (`S_id_id`),
  CONSTRAINT `student_management_a_C_id_id_cae31a31_fk_student_m` FOREIGN KEY (`C_id_id`) REFERENCES `student_management_app_course` (`C_number`),
  CONSTRAINT `student_management_app_sc_S_id_id_37f669e1_fk` FOREIGN KEY (`S_id_id`) REFERENCES `student_management_app_student` (`S_number`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_sc`
--

LOCK TABLES `student_management_app_sc` WRITE;
/*!40000 ALTER TABLE `student_management_app_sc` DISABLE KEYS */;
INSERT INTO `student_management_app_sc` VALUES (1,86,'0001','20201105001'),(5,95,'0001','20201105008'),(6,82,'0001','20201105005'),(8,NULL,'0001','20201105009'),(9,70,'0004','20201105008'),(10,99,'0002','20201105008'),(11,80,'0002','20201105002'),(12,89,'0001','20201105010'),(13,96,'0001','20201105012'),(14,92,'0001','20201105011'),(15,NULL,'0001','20201105013'),(16,99,'0001','20201105014'),(17,85,'0001','20201105015'),(18,50,'0005','20201105020');
/*!40000 ALTER TABLE `student_management_app_sc` ENABLE KEYS */;
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
