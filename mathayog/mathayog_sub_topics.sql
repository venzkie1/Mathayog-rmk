CREATE DATABASE  IF NOT EXISTS `mathayog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mathayog`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mathayog
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `sub_topics`
--

DROP TABLE IF EXISTS `sub_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sub_topic_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_topics_topic_id_foreign` (`topic_id`),
  CONSTRAINT `sub_topics_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_topics`
--

LOCK TABLES `sub_topics` WRITE;
/*!40000 ALTER TABLE `sub_topics` DISABLE KEYS */;
INSERT INTO `sub_topics` VALUES (1,'Counting Numbers to 1,000',1,NULL,NULL),(2,'Comparing and Ordering Numbers to 1,000',1,NULL,NULL),(3,'Number Patterns',1,NULL,NULL),(4,'Addition to 1,000 without Regrouping',2,NULL,NULL),(5,'Word Problems Involving Addition to 1,000 without Regrouping',2,NULL,NULL),(6,'Addition to 1,000 with Regrouping',2,NULL,NULL),(7,'Word Problems Involving Addition to 1,000 with Regrouping',2,NULL,NULL),(8,'Subtraction Within 1,000 Without Regrouping',3,NULL,NULL),(9,'Subtraction Within 1,000 With Regrouping',3,NULL,NULL),(10,'Solving Word Problems Involving Subtraction with Regrouping',3,NULL,NULL),(11,'Multiplication by 2',4,NULL,NULL),(12,'Division by 2',4,NULL,NULL),(13,'Multiplication by 5',4,NULL,NULL),(14,'Division by 5',4,NULL,NULL),(15,'Multiplication by 10',4,NULL,NULL),(16,'Division by 5',4,NULL,NULL),(17,'Multiplication by 3',4,NULL,NULL),(18,'Division by 3',4,NULL,NULL),(19,'Multiplication by 4',4,NULL,NULL),(20,'Division by 4',4,NULL,NULL),(21,'Two-Step Word Problems',4,NULL,NULL),(22,'Counting to 10,000',5,NULL,NULL),(23,'Comparing and Ordering Numbers to 10,000',5,NULL,NULL),(24,'Odd and Even Numbers',5,NULL,NULL),(25,'Number Patterns',5,NULL,NULL),(26,'Rounding Numbers',5,NULL,NULL),(27,'A. Addition to 10,000 Without Regrouping',6,NULL,NULL),(28,'B. Addition Within 10,000 With Regrouping   ',6,NULL,NULL),(29,'C. Word Problems Involving Addition to 10,000',6,NULL,NULL),(30,'D. Mental Addition',6,NULL,NULL),(31,'A. Subtraction by Multiples of 10, 100, 1000',7,NULL,NULL),(32,'B. Subtraction Within 10,000 Without Regrouping',7,NULL,NULL),(33,'C. Subtraction Within 10,000 With Regrouping',7,NULL,NULL),(34,'D. Number Bonds Involving Subtraction Within 10,000',7,NULL,NULL),(35,'E. Number Sentences Involving Subtraction Within 10,000',7,NULL,NULL),(36,'F. Word Problems Involving Subtraction Within 10,000',7,NULL,NULL),(37,'A. Recall Multiplication as Repeated Addition',8,NULL,NULL),(38,'B. Recall Multiplication Tables: 2, 3, 4, 5, 10',8,NULL,NULL),(39,'C. Recall Division by Sharing Equally and Grouping Equally',8,NULL,NULL),(40,'D. Recall Division Tables: 2, 3, 4, 5, 10',8,NULL,NULL),(41,'E. Multiplying by 6',8,NULL,NULL),(42,'F. Division by 6',8,NULL,NULL),(43,'G. Multiplication by 7',8,NULL,NULL),(44,'H. Division by 7',8,NULL,NULL),(45,'G. Multiplication by 8',8,NULL,NULL),(46,'H. Division by 8',8,NULL,NULL),(47,'I. Multiplication by 9',8,NULL,NULL),(48,'J. Division by 9',8,NULL,NULL),(49,'A. Multiplying by 1-Digit Numbers Without Regrouping',9,NULL,NULL),(50,'B. Multiplying by 1-Digit Numbers With Regrouping',9,NULL,NULL),(51,'C. Word Problems Involving Multiplication by 1-Digit Numbers',9,NULL,NULL),(52,'A. Division by a 1-Digit Number Without Remainder',10,NULL,NULL),(53,'B. Division by a 1-Digit Number With Remainder',10,NULL,NULL),(54,'A. Word Problems Involving Division by a 1-Digit Number',11,NULL,NULL),(55,'B. Two-Step Word Problems (Mixed Operations)',11,NULL,NULL),(56,'8. Mixed Operations',12,NULL,NULL);
/*!40000 ALTER TABLE `sub_topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 17:43:30
