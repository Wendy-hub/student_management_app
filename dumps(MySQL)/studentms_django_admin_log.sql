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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-29 09:44:44.667587','2','20201105003',1,'[{\"added\": {}}]',4,1),(2,'2022-11-29 13:48:01.026270','4','test4: 202011050004',1,'[{\"added\": {}}]',8,1),(3,'2022-11-29 17:44:37.076481','9','test111: 111',1,'[{\"added\": {}}]',8,1),(4,'2022-11-29 17:51:14.237355','9','test111: 111',3,'',8,1),(5,'2022-11-29 17:51:14.239355','5','test: ',3,'',8,1),(6,'2022-11-29 18:12:10.007629','12','test111: 111',1,'[{\"added\": {}}]',8,1),(7,'2022-11-30 09:30:32.901210','13','鼠鼠: 20201105004',1,'[{\"added\": {}}]',8,1),(8,'2022-11-30 10:29:45.691316','5','20201105004',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(9,'2022-12-01 13:44:31.545278','1','张三: 20221105001',1,'[{\"added\": {}}]',9,1),(10,'2022-12-01 13:46:43.029291','1','张三: 20221105001',3,'',9,1),(11,'2022-12-01 13:47:07.649066','2','20221105001: 张三',1,'[{\"added\": {}}]',9,1),(12,'2022-12-01 14:34:13.292539','2','20221105001: 张三',3,'',9,1),(13,'2022-12-01 14:34:42.452749','3','张三: 20221105001',1,'[{\"added\": {}}]',9,1),(14,'2022-12-04 16:34:01.090019','3','test: 20201105003',2,'[{\"changed\": {\"fields\": [\"S email\"]}}]',8,1),(15,'2022-12-04 16:52:32.415611','13','鼠鼠: 20201105004',3,'',8,1),(16,'2022-12-04 16:53:03.251951','5','20201105004',3,'',4,1),(17,'2022-12-04 16:53:29.020355','3','test: 20201105003',2,'[{\"changed\": {\"fields\": [\"S email\", \"S image\"]}}]',8,1),(18,'2022-12-04 16:54:05.527040','14','小伟: 20201105005',1,'[{\"added\": {}}]',8,1),(19,'2022-12-04 16:54:37.647459','3','test: 20201105003',3,'',8,1),(20,'2022-12-04 17:01:26.768552','2','20201105003',3,'',4,1),(21,'2022-12-04 17:02:25.046326','15','test: 20201105008',1,'[{\"added\": {}}]',8,1),(22,'2022-12-04 17:03:06.234633','16','李四: 20201105003',1,'[{\"added\": {}}]',8,1),(23,'2022-12-04 17:03:23.649064','16','李四: 20201105003',3,'',8,1),(24,'2022-12-05 12:28:14.220852','9','20201105008',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(25,'2022-12-06 03:48:02.752829','5','test python: 95',1,'[{\"added\": {}}]',10,1),(26,'2022-12-06 03:49:32.573768','6','小伟 python: 80',1,'[{\"added\": {}}]',10,1),(27,'2022-12-06 03:50:32.727211','7','test4 python: None',1,'[{\"added\": {}}]',10,1),(28,'2022-12-06 14:17:27.513851','17','小田: 20201105009',1,'[{\"added\": {}}]',8,1),(29,'2022-12-06 14:17:42.132224','8','小田 python: None',1,'[{\"added\": {}}]',10,1),(30,'2022-12-07 04:53:23.345020','4','李四老师: 20221105002',1,'[{\"added\": {}}]',9,1),(31,'2022-12-07 04:54:12.481383','3','分布式: 0005',1,'[{\"added\": {}}]',7,1),(32,'2022-12-07 09:34:25.349363','4','test4: 202011050004',3,'',8,1),(33,'2022-12-08 13:23:43.620395','5','蜘蛛侠: 20221105003',1,'[{\"added\": {}}]',9,1),(34,'2022-12-08 13:24:52.821168','4','爬墙: 0004',1,'[{\"added\": {}}]',7,1),(35,'2022-12-08 13:26:16.234509','9','test 爬墙: 70',1,'[{\"added\": {}}]',10,1),(36,'2022-12-08 13:26:38.305965','10','test 数据库原理: 99',1,'[{\"added\": {}}]',10,1),(37,'2022-12-08 13:26:55.444752','11','马新 数据库原理: 80',1,'[{\"added\": {}}]',10,1),(38,'2022-12-08 13:28:44.948095','18','阿亮: 20201105010',1,'[{\"added\": {}}]',8,1),(39,'2022-12-08 13:29:31.272976','19','复仇者: 20201105011',1,'[{\"added\": {}}]',8,1),(40,'2022-12-08 13:30:52.690289','20','Dustin: 20201105012',1,'[{\"added\": {}}]',8,1),(41,'2022-12-08 13:31:51.611088','21','Django: 20201105013',1,'[{\"added\": {}}]',8,1),(42,'2022-12-08 13:32:07.131840','12','阿亮 python: 89',1,'[{\"added\": {}}]',10,1),(43,'2022-12-08 13:32:17.807270','13','Dustin python: 96',1,'[{\"added\": {}}]',10,1),(44,'2022-12-08 13:32:31.863740','14','复仇者 python: 92',1,'[{\"added\": {}}]',10,1),(45,'2022-12-08 13:32:41.978723','15','Django python: None',1,'[{\"added\": {}}]',10,1),(46,'2022-12-08 13:36:23.629189','22','宙斯: 20201105014',1,'[{\"added\": {}}]',8,1),(47,'2022-12-08 13:36:57.124445','23','学生15: 20201105015',1,'[{\"added\": {}}]',8,1),(48,'2022-12-08 13:37:05.320592','16','宙斯 python: 100',1,'[{\"added\": {}}]',10,1),(49,'2022-12-08 13:37:15.445586','17','学生15 python: 85',1,'[{\"added\": {}}]',10,1),(50,'2022-12-20 14:11:31.385611','24','2023: 20201105020',1,'[{\"added\": {}}]',8,1),(51,'2022-12-20 14:12:18.534581','18','2023 分布式: 50',1,'[{\"added\": {}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
