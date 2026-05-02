-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `bucket_medicine_map`
--

DROP TABLE IF EXISTS `bucket_medicine_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bucket_medicine_map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bucket_id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `medicine_source` enum('master','vendor') NOT NULL,
  `medicine_owner` enum('super_admin','vendor') NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `vendor_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `packaging` varchar(100) DEFAULT NULL,
  `is_bucket` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_bucket_medicine_vendor` (`bucket_id`,`medicine_id`,`medicine_source`,`vendor_user_id`),
  KEY `fk_bmm_vendor` (`vendor_user_id`),
  CONSTRAINT `fk_bmm_bucket` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_bmm_vendor` FOREIGN KEY (`vendor_user_id`) REFERENCES `vendor_signup` (`vendor_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bucket_medicine_map`
--

LOCK TABLES `bucket_medicine_map` WRITE;
/*!40000 ALTER TABLE `bucket_medicine_map` DISABLE KEYS */;
INSERT INTO `bucket_medicine_map` VALUES (1,4,43,'vendor','super_admin','',1,'2026-02-01 10:58:58',NULL,1),(2,4,44,'vendor','super_admin','',9,'2026-02-01 10:59:02',NULL,1),(3,4,45,'vendor','super_admin','',9,'2026-02-01 10:59:06',NULL,1),(4,4,46,'vendor','super_admin','',1,'2026-02-01 10:59:22',NULL,1),(5,4,47,'vendor','super_admin','',1,'2026-02-01 10:59:25',NULL,1),(6,4,48,'vendor','super_admin','',1,'2026-02-02 12:36:39',NULL,1),(7,4,1,'master','super_admin','',1,'2026-02-02 12:48:41',NULL,1),(8,4,24,'master','super_admin','',1,'2026-02-02 12:48:46',NULL,1),(9,4,34,'master','super_admin','',1,'2026-02-02 12:48:51',NULL,1),(14,4,30,'master','super_admin','',1,'2026-02-08 11:04:48',NULL,1),(15,1,1,'master','super_admin','',1,'2026-02-23 16:09:32',NULL,1),(16,5,35,'master','super_admin','',1,'2026-02-24 18:15:38',NULL,1),(17,5,34,'master','super_admin','',1,'2026-02-24 18:15:43',NULL,1),(18,5,99,'master','super_admin','',1,'2026-02-24 18:15:47',NULL,1),(19,5,1,'master','super_admin','',1,'2026-02-24 18:18:29',NULL,1),(20,5,21,'master','super_admin','',1,'2026-02-24 18:18:33',NULL,1),(23,5,26,'master','super_admin','',1,'2026-02-24 20:04:44',NULL,1),(24,5,40,'master','super_admin','',1,'2026-02-24 20:04:52',NULL,1),(36,4,15,'master','super_admin','',1,'2026-03-21 13:14:15',NULL,1),(37,4,17,'master','super_admin','',1,'2026-03-21 13:14:15',NULL,1),(38,4,16,'master','super_admin','',1,'2026-03-21 13:14:15',NULL,1),(39,4,19,'master','super_admin','',1,'2026-03-21 13:14:15',NULL,1),(46,5,17,'master','super_admin','',1,'2026-03-21 13:15:08',NULL,1),(48,5,19,'master','super_admin','',1,'2026-03-21 13:15:08',NULL,1),(50,5,22,'master','super_admin','',1,'2026-03-22 05:49:49',NULL,1),(51,5,15,'master','super_admin','',1,'2026-03-22 05:49:58',NULL,1),(60,6,319,'master','super_admin','',1,'2026-03-22 11:19:01',NULL,1),(61,6,321,'master','super_admin','',1,'2026-03-22 11:19:01',NULL,1),(62,6,334,'master','super_admin','',1,'2026-03-22 12:37:39',NULL,1),(63,6,333,'master','super_admin','',1,'2026-03-22 12:37:39',NULL,1),(64,6,336,'master','super_admin','',1,'2026-03-22 12:37:39',NULL,1),(65,6,338,'master','super_admin','',1,'2026-03-22 12:37:39',NULL,1),(66,6,337,'master','super_admin','',1,'2026-03-22 12:37:39',NULL,1),(67,5,320,'master','super_admin','',1,'2026-03-22 13:32:22',NULL,1),(68,4,341,'master','super_admin','',1,'2026-03-22 13:32:33',NULL,1),(69,4,342,'master','super_admin','',1,'2026-03-22 13:32:33',NULL,1),(78,1,44,'master','super_admin','',1,'2026-03-23 18:24:09',NULL,1),(79,1,48,'master','super_admin','',1,'2026-03-23 18:24:09',NULL,1),(80,1,47,'master','super_admin','',1,'2026-03-23 18:24:09',NULL,1),(83,6,51,'master','super_admin','',1,'2026-03-23 18:45:38',NULL,1),(86,1,321,'master','super_admin','',1,'2026-03-25 17:30:57',NULL,1),(87,1,319,'master','super_admin','',1,'2026-04-17 12:29:05',NULL,1),(88,1,332,'master','super_admin','',1,'2026-04-19 18:02:15',NULL,1),(89,1,333,'master','super_admin','',1,'2026-04-19 18:02:15',NULL,1),(99,9,319,'master','super_admin','',1,'2026-04-21 17:43:06',NULL,1),(100,9,320,'master','super_admin','',1,'2026-04-21 17:43:43',NULL,1),(101,9,326,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(102,9,321,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(103,9,322,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(104,9,324,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(105,9,323,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(106,9,325,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(107,9,327,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(108,9,328,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(109,9,329,'master','super_admin','',1,'2026-04-21 17:43:44',NULL,1),(110,6,329,'master','super_admin','',1,'2026-04-22 16:12:34',NULL,1),(111,4,346,'master','super_admin','',1,'2026-04-22 16:13:54',NULL,1),(112,6,328,'master','super_admin','',1,'2026-04-22 17:42:15',NULL,1),(113,6,348,'master','super_admin','',1,'2026-04-22 17:42:55',NULL,1),(114,1,430,'master','super_admin','',1,'2026-04-22 18:30:29',NULL,1),(115,1,431,'master','super_admin','',1,'2026-04-22 18:31:48',NULL,1),(116,1,432,'master','super_admin','',1,'2026-04-22 18:33:20',NULL,1),(117,1,331,'master','super_admin','',1,'2026-04-22 19:01:31',NULL,1),(118,1,337,'master','super_admin','',1,'2026-04-22 19:03:18',NULL,1),(119,1,320,'master','super_admin','',1,'2026-04-23 10:34:39',NULL,1),(120,1,323,'master','super_admin','',1,'2026-04-25 07:17:49',NULL,1),(121,1,338,'master','super_admin','',1,'2026-04-25 07:19:11',NULL,1),(123,1,322,'master','super_admin','',1,'2026-04-25 07:32:17',NULL,1),(124,10,327,'master','super_admin','',1,'2026-04-25 11:00:13',NULL,1),(125,10,329,'master','super_admin','',1,'2026-04-25 11:00:13',NULL,1),(126,10,326,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(127,10,334,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(128,10,335,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(129,10,337,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(130,10,330,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(131,10,331,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(132,10,332,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(133,10,338,'master','super_admin','',1,'2026-04-25 11:00:56',NULL,1),(134,10,319,'master','super_admin','',1,'2026-04-25 11:09:25',NULL,1),(135,10,433,'master','super_admin','',1,'2026-04-25 11:29:08',NULL,1),(136,5,432,'master','super_admin','',1,'2026-04-25 11:31:32',NULL,1),(137,5,433,'master','super_admin','',1,'2026-04-25 11:31:32',NULL,1),(140,10,432,'master','super_admin','',1,'2026-04-25 11:32:40',NULL,1),(143,10,434,'master','super_admin','',1,'2026-04-25 11:53:22',NULL,1);
/*!40000 ALTER TABLE `bucket_medicine_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-02 13:06:16
