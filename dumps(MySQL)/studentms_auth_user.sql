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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$JhiTUzXM3aXIsb60Q5qjSp$DUVF13Ng4GhifrS5KmFZsO2mQDAb5M1HxuYW/4pq3oQ=','2022-12-25 07:56:15.519840',1,'argon','','','wangjianan135@gmail.com',1,1,'2022-11-29 08:54:39.345287'),(4,'pbkdf2_sha256$390000$BntJSpOh6P3xXla0qeUqLm$6KJWvQ5FIDeznD70vUTmmLMrLvXpXxtG+HVxy2eH/yc=',NULL,0,'111','','','',0,1,'2022-11-29 18:12:09.811977'),(6,'pbkdf2_sha256$390000$bAHdxVdJnpuZX3F0y3HEv3$UWOTzwS+PeogjPKIvChn7bOpEHnuFjzra0vU1RDpNyk=','2022-12-01 14:32:58.783195',0,'张三','','','',0,1,'2022-12-01 13:47:07.439196'),(7,'pbkdf2_sha256$390000$EpmSruq2fRjyEnpF1m1OUy$S+UJVGdkQ148jO54c9Ns2IsPMO0G2tr8LWeoOPNCIaQ=','2022-12-26 11:43:09.037825',0,'20221105001','','','',0,1,'2022-12-01 14:34:42.242514'),(8,'pbkdf2_sha256$390000$MSlElkSK6h01A2G0alJZ1U$/Vg7SLZYZWGxgSiDdyQjioibHUpI9pGTCyPQNt1mRok=',NULL,0,'20201105005','','','2945497290@qq.com',0,1,'2022-12-04 16:54:05.243164'),(9,'pbkdf2_sha256$390000$5hOOIeRNaIgjnFw3EAR1qQ$4xNLZ+5qz97/GR+xMKx5slJTMhADd56Ri2UxY9rSe60=','2022-12-26 11:39:31.073623',0,'20201105008','','','1098109462@qq.com',0,1,'2022-12-04 17:02:24.749908'),(11,'pbkdf2_sha256$390000$ENP3LMquBMRKtqk7dULqc2$EKAsqP89s5II5vIYR1pU25vEySRy7ppcs3U1DZLSE5c=','2022-12-06 14:30:14.749950',0,'20201105009','','','2744586841@qq.com',0,1,'2022-12-06 14:17:27.283115'),(12,'pbkdf2_sha256$390000$aavqveUwb66XvgKLC8BmuE$uzFbb/PNLTDdV9T+jd6A6owx22qNk8Wal9rqfzkWbfg=',NULL,0,'20221105002','','','lisi@example.com',0,1,'2022-12-07 04:53:23.116886'),(13,'pbkdf2_sha256$390000$QfSBDUtn42cprcFWTDahKL$r0Jy70JDs2qC0aTe66+EDUerboECJR7cX2Mq9D9uCT4=',NULL,0,'20221105003','','','spiderman@example.com',0,1,'2022-12-08 13:23:43.392247'),(14,'pbkdf2_sha256$390000$C5c77nalF7s9WaT2PDd2WS$V6PNczl6Ok4A+6dq65DIAnPShgIPQzSRf3GpH9c9zhE=',NULL,0,'20201105010','','','liang@qq.com',0,1,'2022-12-08 13:28:44.747387'),(15,'pbkdf2_sha256$390000$cttnEWDmz9Y9bxQhd3bLJG$UAf2ZevkLpPY5+aL9q4bgSo1UDxd1O0XfvFypMiFWl8=',NULL,0,'20201105011','','','avenger@qq.com',0,1,'2022-12-08 13:29:31.069526'),(16,'pbkdf2_sha256$390000$qHQF9yObPvRJq1sETAq823$p6sP0WjMXhruJaJP4X9/Dht5LHyJsJpYg8Je0GSQbxg=',NULL,0,'20201105012','','','stranger@example.com',0,1,'2022-12-08 13:30:52.490812'),(17,'pbkdf2_sha256$390000$2QRKim45Ho4PArXpXw7iqk$pPSr83i082dUlOhOn3kxItenR/YZ0ptrMfYObbU+64M=',NULL,0,'20201105013','','','django@gmail.com',0,1,'2022-12-08 13:31:51.406609'),(18,'pbkdf2_sha256$390000$fQEEnkvRkvO15mVtDao73e$SVCemstqsQOfb9sYCCiLKEd3H77CHE0ai62+MzU+6nk=',NULL,0,'20201105014','','','zeus@university.com',0,1,'2022-12-08 13:36:23.404088'),(19,'pbkdf2_sha256$390000$54xiHgDzOLjGEfbpPr5L4H$tE1J5DIHtE69YiATBBaf9gc3YTWfNsLdifbZfPdTuUk=',NULL,0,'20201105015','','','student15@qq.com',0,1,'2022-12-08 13:36:56.925444'),(20,'pbkdf2_sha256$390000$VZdOOjt7Mxz0VNars3rIU1$cQ3eTW1t+iAOItJ5dr7Xc2H82D1JUZvj2r4HfIl1dEA=',NULL,0,'20201105020','','','123456@example.com',0,1,'2022-12-20 14:11:31.173448');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27  0:05:32
