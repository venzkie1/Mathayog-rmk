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
-- Table structure for table `course_skill_titles`
--

DROP TABLE IF EXISTS `course_skill_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_skill_titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_topic_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_skill_titles_sub_topic_id_foreign` (`sub_topic_id`),
  CONSTRAINT `course_skill_titles_sub_topic_id_foreign` FOREIGN KEY (`sub_topic_id`) REFERENCES `sub_topics` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_skill_titles`
--

LOCK TABLES `course_skill_titles` WRITE;
/*!40000 ALTER TABLE `course_skill_titles` DISABLE KEYS */;
INSERT INTO `course_skill_titles` VALUES (1,'Counting to 1,000 Using Blocks - WN-P2-A1','Determine numbers to 1000 illustrated by base 100 blocks, base 10 blocks, and single blocks ',1,NULL,NULL),(2,'Counting to 1,000 Using Place Values','Identify numbers to 1,000 using place values',1,NULL,NULL),(3,'Illustrating Numbers to 1,000 Using Blocks','Illustrate numbers to 1,000 using base 100 blocks, base 10 blocks, and single blocks',1,NULL,NULL),(4,'Comparing Numbers to 1,000 (Comparing Hundreds)','Identifying the greater or smaller number (numbers to 1,000) by comparing the hundreds digits',2,NULL,NULL),(5,'Ordering Numbers to 1,000 (Comparing Hundreds)','Ordering Numbers to 1,000 by comparing the hundreds digits',2,NULL,NULL),(6,'Comparing Numbers to 1,000 (Comparing Hundreds and Tens)','Identifying the greater or smaller number (numbers to 1,000) by comparing the hundreds and tens digits',2,NULL,NULL),(7,'Ordering Numbers to 1,000 (Comparing Hundreds and Tens)','Ordering Numbers to 1,000 by comparing the hundreds and tens digits',2,NULL,NULL),(8,'Comparing Numbers to 1,000 (Comparing Hundreds, Tens, and Ones)','Identifying the greater or smaller number (numbers to 1,000) by comparing the hundreds, tens, and ones digits',2,NULL,NULL),(9,'Ordering Numbers to 1,000 (Comparing Hundreds, Tens, and Ones)','Ordering Numbers to 1,000 by comparing the hundreds, tens, and ones digits',2,NULL,NULL),(10,'Number Sequences: Skip Counting','Finding the next number in a number sequence by skip counting',3,NULL,NULL),(11,'Number Sequence: Finding the Next Number','Finding the next number in a number sequence ',3,NULL,NULL),(12,'Number Sequence: Finding the Missing Number','Finding the missing number in a number sequence',3,NULL,NULL),(13,'Number Line: Finding the Missing Number ','Finding the missing number in a number line',3,NULL,NULL),(14,'1. Addition to 1,000 without Regrouping Using Blocks','Adding numbers to 1,000 without regrouping using blocks',4,NULL,NULL),(15,'2. Addition to 1,000 without Regrouping Using Place Values','Adding numbers to 1,000 without regrouping using place values',4,NULL,NULL),(16,'3. Addition to 1,000 without Regrouping Using Vertical Addition','Adding numbers to 1,000 without regrouping using vertical addition',4,NULL,NULL),(17,'4. Number Bonds to 1,000','Draw number bonds for numbers within 1,000',4,NULL,NULL),(18,'5. Number Sentences Involving Addition to 1,000','Identify correct number sentences that represent addition to 1,000',4,NULL,NULL),(19,'1. Word Problems Involving Addition to 1,000 without Regrouping Using Part-Whole Model','Solving word problems involving addition to 1,000 without regrouping using part-whole model',5,NULL,NULL),(20,'2. Word Problems Involving Addition to 1,000 without Regrouping Using Comparison Model','Solving word problems involving addition to 1,000 without regrouping using comparison model',5,NULL,NULL),(21,'1. Addition to 1,000 with Regrouping Using Blocks','Adding numbers to 1,000 with regrouping using blocks',6,NULL,NULL),(22,'2. Addition to 1,000 with Regrouping Using Place Values','Adding numbers to 1,000 with regrouping using place values',6,NULL,NULL),(23,'3. Addition to 1,000 with Regrouping Using Vertical Addition','Adding numbers to 1,000 with regrouping using vertical addition',6,NULL,NULL),(24,'1. Word Problems Involving Addition to 1,000 With Regrouping Using Part-Whole Model','Solving word problems involving addition to 1,000 without regrouping using part-whole model',7,NULL,NULL),(25,'2. Word Problems Involving Addition to 1,000 With Regrouping Using Comparison Model','Solving word problems involving addition to 1,000 without regrouping using comparison model',7,NULL,NULL),(26,'1. Subtraction Within 1,000 Without Regrouping Using Blocks','Subtract numbers within 1,000 without regrouping using base 100 and base 10 blocks',8,NULL,NULL),(27,'2. Subtraction Within 1,000 Without Regrouping Using Place Values','Subtract numbers within 1,000 without regrouping using place values',8,NULL,NULL),(28,'3. Subtraction Within 1,000 Without Regrouping Using Vertical Subtraction','Subtract numbers within 1,000 without regrouping using vertical subtraction',8,NULL,NULL),(29,'4. Number Bonds: Subtraction Within 1,000','Write numbers bonds involcing numbers within 1,000',8,NULL,NULL),(30,'5. Number Sentences Involving Subtraction Within 1,000','Write subtraction number sentences for numbers within 1,000',8,NULL,NULL),(31,'1. Subtraction Within 1,000 With Regrouping Using Blocks','Subtract numbers within 1,000 with regrouping using base 100 and base 10 blocks',9,NULL,NULL),(32,'2. Subtraction Within 1,000 With Regrouping Using Place Values','Subtract numbers within 1,000 with regrouping using place values',9,NULL,NULL),(33,'3. Subtraction Within 1,000 With Regrouping Using Vertical Subtraction','Subtract numbers within 1,000 with regrouping using the usual convention/algorithm',9,NULL,NULL),(34,'1. Word Problems Involving Addition to 1,000 without Regrouping Using Part-Whole Model','Solving word problems involving addition to 1,000 without regrouping using part-whole model',10,NULL,NULL),(35,'2. Word Problems Involving Addition to 1,000 without Regrouping Using Comparison Model','Solving word problems involving addition to 1,000 without regrouping using comparison model',10,NULL,NULL),(36,'1. Multiplication by 2: Skip Counting','Illustrate multiplication by 2 using skip counting',11,NULL,NULL),(37,'2. Multiplication by 2: Repeated Addition','Illustrate multiplication by 2 using repeated addition',11,NULL,NULL),(38,'3. Multiplication by 2:Dot-Paper Method','Illustrate multiplication by 2 using dot-paper method',11,NULL,NULL),(39,'4. Word Problems Involving Multiplication by 2','Solve word problems involving multiplication by 2',11,NULL,NULL),(40,'1. Division by 2: Sharing Equally','Illustrate division by 2 by grouping objects equally',12,NULL,NULL),(41,'2. Word Problems Involving Division by 2','Solve word problems involving division by 2',12,NULL,NULL),(42,'1. Multiplication by 5: Skip Counting','Illustrate multiplication by 5 using skip counting',13,NULL,NULL),(43,'2. Multiplication by 5: Repeated Addition','Illustrate multiplication by 5 using repeated addition',13,NULL,NULL),(44,'3. Multiplication by 5:Dot-Paper Method','Illustrate multiplication by 5 using dot-paper method',13,NULL,NULL),(45,'4. Word Problems Involving Multiplication by 5','Solve word problems involving multiplication by 5',13,NULL,NULL),(46,'1. Division by 5: Sharing Equally','Illustrate division by 5 by grouping objects equally',14,NULL,NULL),(47,'2. Word Problems Involving Division by 5','Solve word problems involving division by 5',14,NULL,NULL),(48,'1. Multiplication by 10: Skip Counting','Illustrate multiplication by 10 using skip counting',15,NULL,NULL),(49,'2. Multiplication by 10: Repeated Addition','Illustrate multiplication by 10 using repeated addition',15,NULL,NULL),(50,'3. Multiplication by 10:Dot-Paper Method','Illustrate multiplication by 10 using dot-paper method',15,NULL,NULL),(51,'4. Word Problems Involving Multiplication by 10','Solve word problems involving multiplication by 10',15,NULL,NULL),(52,'1. Division by 10: Sharing Equally','Illustrate division by 10 by grouping objects equally',16,NULL,NULL),(53,'2. Word Problems Involving Division by 10','Solve word problems involving division by 10',16,NULL,NULL),(54,'1. Multiplication by 3: Skip Counting','Illustrate multiplication by 3 using skip counting',17,NULL,NULL),(55,'2. Multiplication by 3: Repeated Addition','Illustrate multiplication by 3 using repeated addition',17,NULL,NULL),(56,'3. Multiplication by 3:Dot-Paper Method','Illustrate multiplication by 3 using dot-paper method',17,NULL,NULL),(57,'4. Word Problems Involving Multiplication by 3','Solve word problems involving multiplication by 3',17,NULL,NULL),(58,'1. Division by 3: Sharing Equally','Illustrate division by 3 by grouping objects equally',18,NULL,NULL),(59,'2. Word Problems Involving Division by 3','Solve word problems involving division by 3',18,NULL,NULL),(60,'1. Multiplication by 4: Skip Counting','Illustrate multiplication by 4 using skip counting',19,NULL,NULL),(61,'2. Multiplication by 4: Repeated Addition','Illustrate multiplication by 4 using repeated addition',19,NULL,NULL),(62,'3. Multiplication by 4:Dot-Paper Method','Illustrate multiplication by 4 using dot-paper method',19,NULL,NULL),(63,'4. Word Problems Involving Multiplication by 4','Solve word problems involving multiplication by 4',19,NULL,NULL),(64,'1. Division by 4: Sharing Equally','Illustrate division by 4 by grouping objects equally',20,NULL,NULL),(65,'2. Word Problems Involving Division by 4','Solve word problems involving division by 4',20,NULL,NULL),(66,'1. Two-Step Word Problems Involving Multiplication and/or Division by 2, 5, 10, 3, and 4','Solve two-step word problems involving multiplication and/or division',21,NULL,NULL),(67,'1. Counting to 10,000 Using Blocks','Determine numbers to 10,000 represented by thousands, hundreds, tens, and ones blocks ',22,NULL,NULL),(68,'2. Counting to 10,000 Using Place Values','Identify numbers to 10,000 using place values',22,NULL,NULL),(69,'3. Illustrating Numbers to 10,000 Using Blocks','Illustrate numbers to 10,000 using blocks\n',22,NULL,NULL),(70,'1. Identifying the Greater or Smaller Number Involving Numbers to 10,000','Identifying the greater or smaller number (numbers to 10,000) ',23,NULL,NULL),(71,'2. Comparing Numbers to 10,000 Using \"Greater\" or \"Smaller\"','Comparing numbers to 10,000 using the terms \"greater\" or smaller\"',23,NULL,NULL),(72,'3. Ordering Numbers to 10,000 from Greatest to Smallest or Vice-Versa','Arrange numbers to 10,000 from greatest to smallest and vice-versa',23,NULL,NULL),(73,'1. Identifying Odd and Even Numbers','Determine whether a number is odd or even',24,NULL,NULL),(74,'1. Number Sequence: Finding the Next Number','Find the next number in a number sequence ',25,NULL,NULL),(75,'2. Number Sequence: Finding the Missing Number','Find the missing number in a number sequence',25,NULL,NULL),(76,NULL,NULL,26,NULL,NULL),(77,NULL,NULL,26,NULL,NULL),(78,'1. Addition to 10,000 Without Regrouping Using Blocks','Adding numbers to 10,000 without regrouping using blocks',27,NULL,NULL),(79,'2. Addition to 10,000 Without Regrouping Using Place Values','Adding numbers to 10,000 without regrouping using place values',27,NULL,NULL),(80,'3. Addition to 10,000 without Regrouping Using Vertical Addition','Adding numbers to 10,000 without regrouping using vertical addition',27,NULL,NULL),(81,'4. Number Bonds to 10,000','Draw number bonds for numbers within 10,000',27,NULL,NULL),(82,'5. Number Sentences Involving Addition to 10,000','Identify correct number sentences that represent addition to 10,000',27,NULL,NULL),(83,'1. Addition to 10,000 With Regrouping Using Blocks','Adding numbers to 10,000 with regrouping using blocks',28,NULL,NULL),(84,'2. Addition to 10,000 With Regrouping Using Place Values','Adding numbers to 10,000 with regrouping using place values',28,NULL,NULL),(85,'3. Addition to 10,000 with Regrouping Using Vertical Addition	\r 	','Adding numbers to 10,000 with regrouping using vertical addition\r',28,NULL,NULL),(86,'1. Word Problems Involving Addition to 10,000 Without Regrouping Using Part-Whole Model','Solving word problems involving addition to 10,000 without regrouping using part-whole model',29,NULL,NULL),(87,'2. Word Problems Involving Addition to 10,000 With Regrouping Using Comparison Model','Solving word problems involving addition to 10,000 without regrouping using comparison model\r',29,NULL,NULL),(88,'1. Mental Addition','Solve addition problems mentally',30,NULL,NULL),(89,'1. Subtraction by Multiples of 10, 100, and 1,000 Using Blocks','Subtract numbers within 10,000 using blocks and counters',31,NULL,NULL),(90,'2. Subtraction by Multiples of 10, 100, and 1,000 Using Place Values','Subtract numbers within 10,000 using place values',31,NULL,NULL),(91,'1. Subtraction Within 10,000 Without Regrouping Using Blocks','Subtract numbers within 10,000 without regrouping using blocks',32,NULL,NULL),(92,'2. Subtraction Within 10,000 Without Regrouping Using Place Values\r','Subtract numbers within 10,000 without regrouping using place values\r',32,NULL,NULL),(93,'3. Subtraction Within 10,000 Without Regrouping Using Vertical Subtraction\r','Subtract numbers within 10,000 without regrouping using vertical subtraction\r \r \r ',32,NULL,NULL),(94,'1. Subtraction Within 10,000 With Regrouping Using Blocks','Subtract numbers within 10,000 with regrouping using blocks',33,NULL,NULL),(95,'2. Subtraction Within 10,000 With Regrouping Using Place Values','Subtract numbers within 10,000 with regrouping using place values\n\n',33,NULL,NULL),(96,'3. Subtraction Within 10,000 With Regrouping Using Vertical Subtraction','Subtract numbers within 10,000 with regrouping using vertical subtraction\n\n\n',33,NULL,NULL),(97,'1. Number Sentences Involving Subtraction Within 10,000','Write subtraction number sentences for numbers within 1,000',34,NULL,NULL),(98,'1. Word Problems Subtraction Within 10,000 With and Without Regrouping Using Part-Whole Model','Solving word problems involving subtraction within 10,000 with and without regrouping using part-whole model\r',35,NULL,NULL),(99,'2. Word Problems Involving Subtraction Within 10,000 With and Without Regrouping Using Comparison Model','Solving word problems involving subtraction within 10,000 with and without regrouping using comparison model\r',35,NULL,NULL),(100,'1. Word Problems Subtraction Within 10,000 With and Without Regrouping Using Part-Whole Model','Solving word problems involving subtraction within 10,000 with and without regrouping using part-whole model\r',36,NULL,NULL),(101,'2. Word Problems Involving Subtraction Within 10,000 With and Without Regrouping Using Comparison Model','Solving word problems involving subtraction within 10,000 with and without regrouping using comparison model\r ',36,NULL,NULL),(102,'Multiplication as Repeated Addition','Recall Multiplication as Repeated Addition (2, 3, 4, 5, and 10)',37,NULL,NULL),(103,'Multiplication Tables by 2, 3, 4, 5, and 10','Recall Multiplication Tables by 2, 3, 4, 5, and 10',38,NULL,NULL),(104,'Division by Sharing Equally and Grouping Equally','Division by Sharing Equally and Grouping Equally (by 2, 3, 4, 5, and 10)',39,NULL,NULL),(105,'Division Tables by 2, 3, 4, 5, and 10','Recall Division Tables by 2, 3, 4, 5, and 10\n',40,NULL,NULL),(106,'1. Multiplication by 6: Skip Counting','Illustrate multiplication by 6 using skip counting',41,NULL,NULL),(107,'2. Multiplication by 6: Repeated Addition','Illustrate multiplication by 6 using repeated addition',41,NULL,NULL),(108,'3. Multiplication by 6: Dot-Paper Method','Illustrate multiplication by 6 using dot-paper method',41,NULL,NULL),(109,'4. Word Problems Involving Multiplication by 6','Solve word problems involving multiplication by 6\n\n',41,NULL,NULL),(110,'1. Division by 6: Sharing Equally','Illustrate division by 6 by grouping objects equally',42,NULL,NULL),(111,'2. Word Problems Involving Division by 6','Solve word problems involving division by 6',42,NULL,NULL),(112,'1. Multiplication by 7: Skip Counting\n\n','Illustrate multiplication by 7 using skip counting',43,NULL,NULL),(113,'2. Multiplication by 7: Repeated Addition\n\n\n','Illustrate multiplication by 7 using repeated addition',43,NULL,NULL),(114,'3. Multiplication by 7: Dot-Paper Method\r ','Illustrate multiplication by 7 using dot-paper method',43,NULL,NULL),(115,'4. Word Problems Involving Multiplication by 7','Solve word problems involving multiplication by 7',43,NULL,NULL),(116,'1. Division by 7: Sharing Equally','Illustrate division by 7 by grouping objects equally',44,NULL,NULL),(117,'2. Word Problems Involving Division by 7','Solve word problems involving division by 7',44,NULL,NULL),(118,'1. Multiplication by 8: Skip Counting','Illustrate multiplication by 8 using skip counting',45,NULL,NULL),(119,'2. Multiplication by 8: Repeated Addition','Illustrate multiplication by 8 using repeated addition',45,NULL,NULL),(120,'3. Multiplication by 8: Dot-Paper Method','Illustrate multiplication by 8 using dot-paper method',45,NULL,NULL),(121,'4. Word Problems Involving Multiplication by 8','Solve word problems involving multiplication by 8',45,NULL,NULL),(122,'1. Division by 8: Sharing Equally','Illustrate division by 8 by grouping objects equally',46,NULL,NULL),(123,'2. Word Problems Involving Division by 8','Solve word problems involving division by 8',46,NULL,NULL),(124,'1. Multiplication by 9: Skip Counting','Illustrate multiplication by 9 using skip counting',47,NULL,NULL),(125,'2. Multiplication by 9: Repeated Addition','Illustrate multiplication by 9 using repeated addition',47,NULL,NULL),(126,'3. Multiplication by 9: Dot-Paper Method','Illustrate multiplication by 9 using dot-paper method',47,NULL,NULL),(127,'4. Word Problems Involving Multiplication by 9','Solve word problems involving multiplication by 9',47,NULL,NULL),(128,'1. Division by 9: Sharing Equally','Illustrate division by 9 by grouping objects equally',48,NULL,NULL),(129,'2. Word Problems Involving Division by 9','Illustrate division by 9 by grouping objects equally',48,NULL,NULL),(130,'Multiplying by 1-Digit Numbers Without Regrouping Without Remainder','Multiply Numbers by 1-Digit Numbers Without Regrouping Without Remainder',49,NULL,NULL),(131,'Multiplying by 1-Digit Numbers Without Regrouping With Remainder','Multiply Numbers by 1-Digit Numbers Without Regrouping With Remainder',49,NULL,NULL),(132,'Multiplying by 1-Digit Numbers With Regrouping Without Remainder','Multiplying Numbers by 1-Digit Numbers With Regrouping Without Remainder',50,NULL,NULL),(133,'Multiplying by 1-Digit Numbers With Regrouping With Remainder','Multiplying Numbers by 1-Digit Numbers With Regrouping With Remainder',50,NULL,NULL),(134,'Solving Word Problems Involving Multiplying by 1-Digit Numbers Without Regrouping',NULL,51,NULL,NULL),(135,'Solving Word Problems Involving Multiplying by 1-Digit Numbers With Regrouping',NULL,51,NULL,NULL),(136,NULL,NULL,52,NULL,NULL),(137,NULL,NULL,52,NULL,NULL),(138,NULL,NULL,53,NULL,NULL),(139,NULL,NULL,53,NULL,NULL),(140,NULL,NULL,54,NULL,NULL),(141,NULL,NULL,55,NULL,NULL),(142,NULL,NULL,55,NULL,NULL),(143,NULL,NULL,56,NULL,NULL);
/*!40000 ALTER TABLE `course_skill_titles` ENABLE KEYS */;
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