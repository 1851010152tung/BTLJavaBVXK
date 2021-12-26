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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id_bus` int NOT NULL AUTO_INCREMENT,
  `number_plate` varchar(45) DEFAULT NULL,
  `bus_name` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `seat_number` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `id_bus_type` int DEFAULT NULL,
  PRIMARY KEY (`id_bus`),
  KEY `FK_BUS_CATEGORYBUS_idx` (`id_bus_type`),
  CONSTRAINT `fk_bus_category_1` FOREIGN KEY (`id_bus_type`) REFERENCES `category_bus` (`id_bus_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Quan ly cac chuyen xe\\\\  number_plate: bien so xe\\\\   seat_number: so ghe\\\\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (5,'30Z-0779','Phong Phú','Huyndai',45,'Xe giường nằm Phong Phú hơn 2 phòng','Xe giường nằm Phong Phú hơn 2 phòng','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640194787/azagaug7gzsa1jfqwvdf.jpg',NULL,_binary '\0',NULL),(6,'50X-0580','Phương Trang','Thaco',22,'Phương Trang - \"Chất lượng là danh dự\"','Công ty Phương Trang được thành lập năm 2001. Trải qua 20 năm phát triển đặt khách hàng làm trọng tâm, chúng tôi tự hào trở thành doanh nghiệp vận tải nòng cốt đóng góp tích cực vào sự phát triển chung của ngành vận tải nói riêng và nền kinh tế đất nước nói chung. Luôn cải tiến mang đến chất lượng dịch vụ tối ưu nhất dành cho khách hàng, Công ty Phương Trang được ghi nhận qua nhiều danh hiệu danh giá như “Top 5 Công ty Uy tín ngành Vận Tải và Logistics”, “Top 50 Nhãn hiệu nổi tiếng Việt Nam”, “Sản phẩm và Dịch vụ Chất lượng Châu Á”, “Top 10 Thương hiệu chất lượng Châu Á”,…','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639982833/m2d20gcvq1m9yvvdkwzv.jpg',NULL,_binary '\0',2),(7,'44X-5080','Phương Trang','Thaco',47,'Phương Trang - \"Chất lượng là danh dự\"','Công ty Phương Trang được thành lập năm 2001. Trải qua 20 năm phát triển đặt khách hàng làm trọng tâm, chúng tôi tự hào trở thành doanh nghiệp vận tải nòng cốt đóng góp tích cực vào sự phát triển chung của ngành vận tải nói riêng và nền kinh tế đất nước nói chung. Luôn cải tiến mang đến chất lượng dịch vụ tối ưu nhất dành cho khách hàng, Công ty Phương Trang được ghi nhận qua nhiều danh hiệu danh giá như “Top 5 Công ty Uy tín ngành Vận Tải và Logistics”, “Top 50 Nhãn hiệu nổi tiếng Việt Nam”, “Sản phẩm và Dịch vụ Chất lượng Châu Á”, “Top 10 Thương hiệu chất lượng Châu Á”,…','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639983047/htpmbcsxna0vyqm2gqvu.jpg',NULL,_binary '\0',1);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
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
