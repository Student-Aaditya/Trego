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
-- Table structure for table `vendor_medicine`
--

DROP TABLE IF EXISTS `vendor_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_medicine` (
  `vendor_medicine_id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `salt_composition` varchar(50) DEFAULT NULL,
  `medicine_type` varchar(50) DEFAULT NULL,
  `packing_type` varchar(50) DEFAULT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL,
  `prescription_required` varchar(50) DEFAULT NULL,
  `storage` text,
  `manufacture` varchar(50) DEFAULT NULL,
  `batchNumber` varchar(50) DEFAULT NULL,
  `bucket_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `vendor_id` int NOT NULL,
  `batch_id` varchar(25) DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  `medicine_owner` enum('super_admin','vendor') DEFAULT NULL,
  PRIMARY KEY (`vendor_medicine_id`),
  KEY `fk_bucket_id` (`bucket_id`),
  KEY `fk_vendor_id` (`vendor_id`),
  KEY `fk_priceId` (`price_id`),
  CONSTRAINT `fk_bucket_id` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`),
  CONSTRAINT `fk_priceId` FOREIGN KEY (`price_id`) REFERENCES `vendor_medicine_price` (`price_id`),
  CONSTRAINT `fk_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_signup` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_medicine`
--

LOCK TABLES `vendor_medicine` WRITE;
/*!40000 ALTER TABLE `vendor_medicine` DISABLE KEYS */;
INSERT INTO `vendor_medicine` VALUES (49,'Pragna Bilva Leaf Powder',NULL,NULL,NULL,'India','NO',NULL,'Pragna Herbal & Naturals Pvt Ltd','PR2026',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'PR01',42,'super_admin'),(50,'Jeevan Organics Diabetic Care Kit',NULL,NULL,NULL,'India','NO',NULL,'Jeevan Organics','AA106',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'JE01',43,'super_admin'),(51,'Vaidyaratnam Oushadha Soap',NULL,NULL,NULL,'India','NO',NULL,'Ashtavaidyan Thaikkattu Mooss Vaidyaratnam Pvt Ltd','VA2027',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'VA01',44,'super_admin'),(52,'Jain Methi (Trigonella Foenum-Gaecum) Powder',NULL,NULL,NULL,'India','NO','instructions: - Store the formulation in cool and dry place Safety information: - Read the label carefully before use - Do not exceed the recommended dose - Keep out of the reach and sight of children','Sri Jain Ayurvedic Pharmacy','JA2027',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'JA01',45,'super_admin'),(53,'Himalaya Personal Care Fresh Start Oil Clear Lemon Face Wash',NULL,NULL,NULL,'India','NO',NULL,'Himalaya Drug Company','HI2027',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'HI01',46,'super_admin'),(54,'SBL Spigelia 0/14 LM',NULL,NULL,NULL,'India','NO',NULL,'SBL Pvt Ltd','SB2026',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'SB01',47,'super_admin'),(55,'Safe-O-Kid Unique High Density L-Shaped 2mtr Long Guard Strip Black 4 Edge',NULL,NULL,NULL,'India','NO',NULL,'Baby Safety Inc','SA2026',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'SA01',48,'super_admin'),(56,'Safe-O-Kid Adjustable Multi-Purpose Child Safety Lock Grey',NULL,NULL,NULL,'United states','NO',NULL,'Baby Safety Inc','AA101',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'SA02',49,'super_admin'),(57,'Safe-O-Kid High Density L-Shaped Nbr Corner Cushions Small Yellow',NULL,NULL,NULL,'United states','NO',NULL,'Baby Safety Inc','AA101',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'SA03',50,'super_admin'),(58,'Hahnemann Labs Calcintone Tonic',NULL,NULL,NULL,'India','NO',NULL,'Hahnemann Laboratories, Inc','AA101',10,'2026-04-28 17:54:27','2026-04-28 17:54:27',9,'HA01',51,'super_admin'),(59,'Gasofast6','raprozole+demaprime','Tablet','strip','India','Yes','Store below 25C','Arysus','GA01',10,'2026-04-28 17:55:19','2026-04-28 17:55:19',9,'GA01',52,'super_admin'),(60,'Gasofast5','raprozole+demaprime','Tablet','strip','India','Yes','Store below 25C','Arysus','GA-AR-2026',10,'2026-04-28 17:56:16','2026-04-28 17:56:16',9,'GA02',53,'super_admin'),(61,'Gasofast3','raprozole+demaprime','Tablet','strip','India','Yes','Store below 25C','Arysus','GA-AR-2026',10,'2026-04-28 17:58:26','2026-04-28 17:58:26',9,'GA03',54,'super_admin'),(62,'Gasofast6','raprozole+demaprime','Tablet','strip','India','0','Store below 25C','Arysus','SD456S',10,'2026-04-28 18:00:08','2026-04-28 18:00:08',9,'GA01',55,NULL);
/*!40000 ALTER TABLE `vendor_medicine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-02 13:06:21
