-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: website_busgiare
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departure` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `destination` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `id_bus` int DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `journey_time` time DEFAULT NULL,
  `ticket_price` decimal(10,0) DEFAULT NULL,
  `image_departure` varchar(200) DEFAULT NULL,
  `image_destination` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_bus_idx` (`id_bus`),
  CONSTRAINT `fk_route_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Hội An','TP. Hồ Chí Minh',NULL,150,NULL,750000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639723077/ihnyln5fvgur8slr4luk.jpg',NULL),(2,'Hội An','TP. Hồ Chí Minh',NULL,150,NULL,750000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639723743/buuwmomi6oxmaza9muxh.jpg',NULL),(3,'Đà Nẵng','TP. Hồ Chí Minh',NULL,150,NULL,750000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639724459/l38mxddwz3itlvyb3hkb.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639724463/aemqrd4azmnnd1rimkxk.jpg'),(6,'Hội An','Đà Nẵng',5,42,NULL,150000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639907528/ssle7lsh94wsqzxerpgv.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639907531/o0wxmkw0vautcuw503fl.jpg');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 21:14:44
