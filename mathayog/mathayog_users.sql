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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','content_creator','user','curriculum_lead') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Admin','Admin 1','admin@admin.com',NULL,NULL,NULL,'admin','active','$2y$10$Azq4f3vKcyUxlGJnXNBFp.t0X/ay4F0a3QZ3InUldqdRo9vmIUF2S',NULL,NULL,NULL),(2,'Content','Creator','Content Creator 1','mathayog172@gmail.com',NULL,NULL,NULL,'content_creator','active','$2y$10$DhYbgtiOGLGdGoIAeQ/NTOjeydi/3Q39TC0.Bu9P2o8oQY4Gx21AO',NULL,NULL,NULL),(3,'Curriculum','Lead','Curriculum Lead 1','curriculumlead@curriculumlead.com',NULL,NULL,NULL,'curriculum_lead','active','$2y$10$Xg/d6w0AUWwISsdOlEufOewKMMZRlCPligi7DCzFdB4WUmoyXH5rS',NULL,NULL,NULL),(4,'User','User','User 1','user@user.com',NULL,NULL,NULL,'user','active','$2y$10$Kv1VxEekKWP4aCnLZgBmB.jWR1HRkFNKs5bErA6/TyPNgu5z14/Ey',NULL,NULL,NULL),(5,'Suzanne Bergstrom DDS','Aric Kris',NULL,'zkrajcik@example.com','2023-10-09 05:50:22','+15076943024','https://via.placeholder.com/60x60.png/00ffee?text=vitae','user','active','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Gr6qNCayeZ','2023-10-09 05:50:22','2023-10-09 05:50:22'),(6,'Prof. Xzavier Torphy','Mac Waelchi',NULL,'bernier.francesco@example.org','2023-10-09 05:50:22','629-320-1359','https://via.placeholder.com/60x60.png/005522?text=ullam','curriculum_lead','inactive','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Es50bjrcCx','2023-10-09 05:50:22','2023-10-09 05:50:22'),(7,'Alverta Purdy II','Miss Estell Kuhn',NULL,'stehr.jarred@example.com','2023-10-09 05:50:22','1-904-849-9098','https://via.placeholder.com/60x60.png/00bbff?text=dolor','content_creator','active','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ncu7AGvZPA','2023-10-09 05:50:22','2023-10-09 05:50:22'),(8,'Prof. Bulah Goyette V','Vita Buckridge Jr.',NULL,'susan.toy@example.net','2023-10-09 05:50:22','1-520-308-9368','https://via.placeholder.com/60x60.png/00bb55?text=nihil','admin','active','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Z1ipVMvYqG','2023-10-09 05:50:22','2023-10-09 05:50:22'),(9,'Tanner Dach Jr.','Marguerite Bechtelar',NULL,'abbott.sherwood@example.net','2023-10-09 05:50:22','703.961.4197','https://via.placeholder.com/60x60.png/004433?text=non','admin','inactive','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qUhqOCSQu1','2023-10-09 05:50:22','2023-10-09 05:50:22'),(10,'Mckenzie Walter','Mary Kris',NULL,'amara.pouros@example.org','2023-10-09 05:50:22','+1-845-986-0534','https://via.placeholder.com/60x60.png/001166?text=iure','curriculum_lead','active','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JYiXIHdMrQ','2023-10-09 05:50:22','2023-10-09 05:50:22'),(11,'Miss Destiny Wolff','Frida Swift',NULL,'qernser@example.com','2023-10-09 05:50:22','256.255.8757','https://via.placeholder.com/60x60.png/00aaaa?text=eaque','admin','inactive','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MM2aJcZXmg','2023-10-09 05:50:22','2023-10-09 05:50:22'),(12,'Ebony Bruen','Alanis Schoen',NULL,'fkrajcik@example.net','2023-10-09 05:50:22','1-502-507-4103','https://via.placeholder.com/60x60.png/00bbbb?text=iste','content_creator','active','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xBE0e6RS8h','2023-10-09 05:50:22','2023-10-09 05:50:22'),(13,'Prof. Damaris Emmerich','Madge Homenick',NULL,'legros.lula@example.net','2023-10-09 05:50:22','1-305-441-4583','https://via.placeholder.com/60x60.png/007733?text=rerum','content_creator','inactive','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1bCmawYKgz','2023-10-09 05:50:22','2023-10-09 05:50:22'),(14,'Ms. Itzel Greenfelder MD','Dr. Bettie Gerhold',NULL,'ike31@example.net','2023-10-09 05:50:22','1-815-369-2120','https://via.placeholder.com/60x60.png/0088dd?text=tenetur','user','inactive','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1cEHDpLy65','2023-10-09 05:50:22','2023-10-09 05:50:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 17:43:29
