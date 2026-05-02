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
-- Table structure for table `vendor_medicine_price`
--

DROP TABLE IF EXISTS `vendor_medicine_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_medicine_price` (
  `price_id` int NOT NULL AUTO_INCREMENT,
  `mrp` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `selling_price` decimal(10,2) NOT NULL,
  `offer_percent` decimal(5,2) DEFAULT NULL,
  `bought` tinyint(1) DEFAULT '0',
  `cost_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `manufacturer_date` timestamp NULL DEFAULT NULL,
  `vendor_id` int NOT NULL,
  `vendor_medicine_id` int DEFAULT NULL,
  PRIMARY KEY (`price_id`),
  KEY `fk_vendor_price_id` (`vendor_id`),
  KEY `fk_vendor_medicine` (`vendor_medicine_id`),
  CONSTRAINT `fk_vendor_medicine` FOREIGN KEY (`vendor_medicine_id`) REFERENCES `vendor_medicine` (`vendor_medicine_id`),
  CONSTRAINT `fk_vendor_price_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_signup` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_medicine_price`
--

LOCK TABLES `vendor_medicine_price` WRITE;
/*!40000 ALTER TABLE `vendor_medicine_price` DISABLE KEYS */;
INSERT INTO `vendor_medicine_price` VALUES (42,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,49),(43,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,50),(44,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,51),(45,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,-1,NULL,9,52),(46,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,53),(47,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,54),(48,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,55),(49,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,56),(50,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,57),(51,0.00,0.00,0.00,0.00,0,0.00,'2026-04-28 17:54:27',NULL,0,NULL,9,58),(52,400.60,0.00,100.00,0.00,0,0.00,'2026-04-28 17:55:19',NULL,200,NULL,9,59),(53,400.60,0.00,100.00,0.00,0,0.00,'2026-04-28 17:56:16',NULL,0,NULL,9,60),(54,260.60,0.00,100.00,0.00,0,0.00,'2026-04-28 17:58:26',NULL,0,NULL,9,61),(55,400.60,0.00,182.00,0.00,0,180.00,'2026-04-28 18:00:08','2026-04-28',300,'2026-05-06 18:30:00',9,62);
/*!40000 ALTER TABLE `vendor_medicine_price` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-02 13:06:19
