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
  `journey_time` varchar(45) DEFAULT NULL,
  `ticket_price` decimal(10,0) DEFAULT NULL,
  `image_departure` varchar(200) DEFAULT NULL,
  `image_destination` varchar(200) DEFAULT NULL,
  `pick_up_point` varchar(45) DEFAULT NULL,
  `drop_off_point` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_bus_idx` (`id_bus`),
  CONSTRAINT `fk_route_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (3,'Đà Nẵng','TP. Hồ Chí Minh',10,849,'23 giờ',750000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639724459/l38mxddwz3itlvyb3hkb.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623397/uoczpbwkhj1dqhgz9z8k.jpg','Bến xe Đức Long Đà Nẵng','Bến xe Miền Đông'),(6,'Hội An','Đà Nẵng',10,45,'1 giờ 15 phút',100000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639907528/ssle7lsh94wsqzxerpgv.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639724459/l38mxddwz3itlvyb3hkb.jpg','Nội thành TP Hội An','Nội thành TP Đà Nẵng'),(8,'Cần Thơ','TP. Hồ Chí Minh',10,166,'3 giờ 30 phút',150000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623394/tjustcfpfjjvnfapbmws.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623397/uoczpbwkhj1dqhgz9z8k.jpg','BX TT Cần Thơ','Bến xe Miền Tây'),(9,'Cần Thơ','Đà Lạt',6,459,'11 giờ',220000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623527/ggdmw0yn7oukihyanoq9.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623529/ilnisk4ih0emr3gzdnow.jpg','VP Bến xe Trung Tâm Cần Thơ ','VP Bảo Lộc'),(10,'Cần Thơ','Cà Mau',10,143,'4 giờ',140000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623696/ui7zjdnqd3zjij4vvyii.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623699/d7g3iyfwwfnq9m3gzs66.jpg','BX TT Cần Thơ','VP Sóc Trăng'),(11,'Đà Lạt','Nha Trang',10,137,'4 giờ',140000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623781/o0xnnwpepccfirdpgz5n.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623784/hhhk1zmj2hgt6mlio17c.jpg','VP Đà Lạt','VP Nha Trang'),(12,'Buôn Mê Thuột','TP. Hồ Chí Minh',6,435,'9 giờ',220000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623921/pdctdtksuwhk7vmdzpet.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640623924/yegz62eczg3p15hsvemr.jpg','TP. Buôn Mê Thuột','VP Tân Bình - TP.HCM'),(13,'Đà Lạt','Đà Nẵng',6,756,'17 giờ',300000,'https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640624115/bazpww4xsyqykb1ajtdx.jpg','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640624117/aftsjgsichhcgrrjedbu.jpg','Đà Lạt','Đà Nẵng');
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

-- Dump completed on 2022-02-06  7:18:35
