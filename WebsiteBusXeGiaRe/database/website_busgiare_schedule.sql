-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: website_busgiare
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id_schedule` int NOT NULL AUTO_INCREMENT,
  `id_route` int DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `destination_date` date DEFAULT NULL,
  `departure_time` varchar(45) DEFAULT NULL,
  `destination_time` varchar(45) DEFAULT NULL,
  `id_bus` int DEFAULT NULL,
  PRIMARY KEY (`id_schedule`),
  KEY `fk_schedule_route_idx` (`id_route`),
  KEY `fk_schedule_bus_idx` (`id_bus`),
  CONSTRAINT `fk_schedule_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`),
  CONSTRAINT `fk_schedule_route` FOREIGN KEY (`id_route`) REFERENCES `route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (3,6,'2021-12-22','2021-12-23','07:00','08:15',11),(6,6,'2021-12-28','2021-12-30','13:00','14:15',11),(7,11,'2022-01-01','2022-01-03','01:00','05:00',6),(8,6,'2022-01-01','2022-01-02','05:00','06:15',14),(9,3,'2022-01-01','2022-01-04','05:00','4:00',12),(11,6,'2022-01-01','2022-01-04','13:00','14:15',13),(12,8,'2022-01-04','2022-01-07','15:00','18:30',6),(13,12,'2022-01-04','2022-01-07','17:00','02:00',15),(14,10,'2022-01-07','2022-01-09','11:00','03:00',6);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-13 16:10:22
