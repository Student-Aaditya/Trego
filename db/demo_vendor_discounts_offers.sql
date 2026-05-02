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
-- Table structure for table `vendor_discounts_offers`
--

DROP TABLE IF EXISTS `vendor_discounts_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_discounts_offers` (
  `discount_offers_id` int NOT NULL AUTO_INCREMENT,
  `discount_to_consumer` decimal(10,2) DEFAULT '0.00',
  `discount_to_company` decimal(10,2) DEFAULT '0.00',
  `company_discount` decimal(10,2) DEFAULT '0.00',
  `vendor_discount` decimal(10,2) DEFAULT '0.00',
  `company_offer` varchar(255) DEFAULT NULL,
  `vendor_offer` varchar(255) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vendor_medicine_id` int NOT NULL,
  `price_id` int NOT NULL,
  `batch_id` int NOT NULL,
  PRIMARY KEY (`discount_offers_id`),
  KEY `fk_medicineId` (`vendor_medicine_id`),
  KEY `fk_batchId` (`batch_id`),
  KEY `fk_price_id` (`price_id`),
  CONSTRAINT `fk_medicineId` FOREIGN KEY (`vendor_medicine_id`) REFERENCES `vendor_medicine` (`vendor_medicine_id`),
  CONSTRAINT `fk_price_id` FOREIGN KEY (`price_id`) REFERENCES `vendor_medicine_price` (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_discounts_offers`
--

LOCK TABLES `vendor_discounts_offers` WRITE;
/*!40000 ALTER TABLE `vendor_discounts_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_discounts_offers` ENABLE KEYS */;
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
