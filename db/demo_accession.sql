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
-- Table structure for table `accession`
--

DROP TABLE IF EXISTS `accession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accession` (
  `accession_id` int NOT NULL AUTO_INCREMENT,
  `accession_number` varchar(25) DEFAULT NULL,
  `report_status` varchar(25) DEFAULT NULL,
  `patient_id` int NOT NULL,
  `remark` text,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`accession_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `accession_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accession`
--

LOCK TABLES `accession` WRITE;
/*!40000 ALTER TABLE `accession` DISABLE KEYS */;
INSERT INTO `accession` VALUES (1,'A50KL5','Pending',14,'NOT ','2026-04-02 18:14:05'),(3,'Ak502D','Pending',14,NULL,'2026-04-02 18:14:05'),(4,'AK50KL','Pending',14,NULL,'2026-04-02 18:14:05'),(5,'Akl200','Pending',10,NULL,'2026-04-02 18:14:05'),(6,'AK505','Pending',14,'','2026-04-02 18:14:05'),(7,'AK50D5','Sample Dispatched',15,'','2026-04-02 18:14:05'),(8,'AKL202','Pending',15,'','2026-04-02 18:14:05'),(9,'AKMLN','Sample Dispatched',12,'','2026-04-03 06:34:40'),(10,'AKLMN','Pending',15,'','2026-04-03 10:49:37'),(11,'AKL202','Pending',14,'','2026-04-03 10:50:36'),(12,'KMN202','Pending',14,'','2026-04-03 10:50:36'),(13,'TIOL20','Pending',14,'','2026-04-03 10:50:36'),(14,'IO25D6','Pending',14,'','2026-04-03 10:50:36'),(15,'AITO20','Pending',14,'','2026-04-03 10:54:28'),(16,'RTO090','Pending',14,'','2026-04-03 10:54:28'),(17,'EKT56T','Pending',14,'','2026-04-03 10:54:28'),(18,'AITO20','Pending',14,'','2026-04-03 10:57:40'),(19,'RTO090','Pending',14,'','2026-04-03 10:57:40'),(20,'EKT56T','Pending',14,'','2026-04-03 10:57:40'),(21,'AITO20','Pending',14,'','2026-04-03 10:58:03'),(22,'RTO090','Pending',14,'','2026-04-03 10:58:03'),(23,'EKT56T','Pending',14,'','2026-04-03 10:58:03'),(24,'AITO20','Pending',14,'','2026-04-03 10:58:19'),(25,'RTO090','Pending',14,'','2026-04-03 10:58:19'),(26,'EKT56T','Pending',14,'','2026-04-03 10:58:19'),(27,'AITO20','Pending',14,'','2026-04-03 10:58:43'),(28,'RTO090','Pending',14,'','2026-04-03 10:58:43'),(29,'EKT56T','Pending',14,'','2026-04-03 10:58:43'),(30,'AITO20','Pending',14,'','2026-04-03 10:59:01'),(31,'RTO090','Pending',14,'','2026-04-03 10:59:01'),(32,'EKT56T','Pending',14,'','2026-04-03 10:59:01'),(33,'AITO20','Pending',14,'','2026-04-03 11:00:15'),(34,'RTO090','Pending',14,'','2026-04-03 11:00:15'),(35,'EKT56T','Pending',14,'','2026-04-03 11:00:15'),(36,'AITO20','Pending',14,'','2026-04-03 11:01:04'),(37,'RTO090','Pending',14,'','2026-04-03 11:01:04'),(38,'EKT56T','Pending',14,'','2026-04-03 11:01:04'),(39,'AL230M','Pending',13,'','2026-04-03 11:05:48'),(40,'AKO505','Pending',13,'','2026-04-03 11:05:48'),(41,'ADOP46','Pending',13,'','2026-04-03 11:05:48'),(42,'CGK0O0','Pending',13,'','2026-04-03 11:05:48'),(43,'AL230M','Pending',13,'','2026-04-03 11:06:04'),(44,'AKO505','Pending',13,'','2026-04-03 11:06:04'),(45,'ADOP46','Pending',13,'','2026-04-03 11:06:04'),(46,'CGK0O0','Pending',13,'','2026-04-03 11:06:04'),(47,'AL230M','Pending',13,'','2026-04-03 11:06:27'),(48,'AKO505','Pending',13,'','2026-04-03 11:06:27'),(49,'ADOP46','Pending',13,'','2026-04-03 11:06:27'),(50,'CGK0O0','Pending',13,'','2026-04-03 11:06:27'),(70,'AD45EW','Pending',16,'','2026-04-03 18:12:58'),(76,'AKL504','Pending',16,'','2026-04-03 18:15:07'),(77,'AJJ540','Pending',16,'','2026-04-03 18:15:07'),(92,'AA001A','Pending',17,'','2026-04-04 05:47:53'),(93,'BB001B','Sample Dispatched',17,'','2026-04-04 05:47:53'),(94,'CC001C','Sample Dispatched',17,'','2026-04-04 05:47:53'),(95,'DD001D','Sample Dispatched',17,'','2026-04-04 05:47:53'),(96,'FF001F','Sample Dispatched',18,'','2026-04-04 06:41:43'),(97,'GG001G','Sample Dispatched',18,'','2026-04-04 06:41:43'),(98,'KK001K','Sample Dispatched',18,'','2026-04-04 06:41:43'),(99,'LA12AD','Sample Dispatched',19,'','2026-04-04 09:15:28'),(100,'LB12BD','Sample Dispatched',19,'','2026-04-04 09:15:28'),(101,'DA12DA','Sample Dispatched',19,'','2026-04-04 09:15:29'),(102,'CSDCS12','Sample Dispatched',16,'','2026-04-04 10:00:01'),(103,'AD45AD','Sample Dispatched',20,'','2026-04-04 10:16:22'),(104,'BD46BD','Sample Dispatched',20,'','2026-04-04 10:16:22'),(105,'CD46CD','Pending',20,'','2026-04-04 10:16:22'),(106,'KL56DA','Pending',19,'','2026-04-06 06:26:15'),(107,'ADKL56','Sample Dispatched',16,'','2026-04-06 08:43:14'),(109,'KL78DS','Pending',16,NULL,'2026-04-07 04:33:44'),(110,'UI89WD','Pending',16,NULL,'2026-04-07 04:33:44'),(111,'AKL78Q','Pending',21,NULL,'2026-04-07 05:41:15'),(113,'EW56EW','Pending',21,NULL,'2026-04-07 05:41:15'),(115,'AS45AS','Sample Dispatched',23,'','2026-04-09 18:35:38');
/*!40000 ALTER TABLE `accession` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-02 13:06:18
