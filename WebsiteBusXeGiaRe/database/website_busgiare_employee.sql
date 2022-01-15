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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_employee`),
  KEY `fk_employee_user_idx` (`id_user`),
  CONSTRAINT `fk_employee_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Trương Ngọc Trúc','Lâm','0906844328','teeltruong',NULL,'truonglam9112000@gmail.com','Nữ','2011-01-01','Nhân viên bán vé','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639718248/wmskogl683ndzypfjcm8.jpg',NULL),(2,'Chế Quang','Tùng','0906844258','quangtung',NULL,'quangtung123@gmail.com','Nam',NULL,'Tài xế','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639718726/mpplykh8howzldey487n.jpg',NULL),(3,'Trương ','Lâm','0906844328','truonglam',NULL,'truonglam9112000@gmail.com','Nữ','2000-11-09','Nhân viên bán vé','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639725278/okvuvaue1dzizhyfrztm.jpg',NULL),(4,'Trường','Lam','0906844328','truclam',NULL,'truonglam9112000@gmail.com','Nữ','2000-11-09','Tài xế','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639813302/qub2mmk2bolob5ofyh2x.jpg',NULL),(5,'Trương Ngọc','Lâm','0906844328','teeltruong',NULL,'truonglam9112000@gmail.com','Nữ',NULL,'Nhân viên bán vé','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639910706/zmafjm4v7wckw0a83pgb.jpg',NULL),(6,'Trương Ngọc','Lâm','0906844328','teeltruong',NULL,'truonglam9112000@gmail.com','Nữ','2021-12-01','Nhân viên bán vé','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639911128/ubcxluzkuprnalkrhy0k.jpg',NULL),(7,'Nguyễn Văn','Tùng','0906844328','vantung',NULL,'vantung@gmail.com','Male','2021-12-07','Tài xế','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639911190/i1lesfsvryezsxnfduvd.jpg',NULL),(8,'Chế','Tùng A','0906844328','taixe',NULL,'taixe@gmail.com','Nam','2003-01-21','Tài xế','',NULL),(9,'Tai xe','A','0906844328','taixe',NULL,'taixe@gmail.com','Nam','2000-10-11','Tài xế','',NULL),(10,'Tai xe','2','15814569522','taixe2',NULL,'taixe2@gmail.com','Nam','2005-01-03','Tài xế','',NULL),(18,'Tai xe','Tùng2','0906844328','taixe2',NULL,'taixe2@gmail.com','Nam','2003-02-06','Tài xế','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794092/eaol9zcpcgyscxlyhwg7.jpg',NULL),(19,'Trương Ngọc Trúc','Lâm','15814569522','taixe2',NULL,'taixe2@gmail.com','Nữ','2000-12-15','Nhân viên bán vé','',NULL),(20,'Trương Ngọc Trúc','Lam','15814569522','taixe',NULL,'taixe@gmail.com','Nữ','1985-12-17','Nhân viên bán vé','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794761/aooadr7hgcqyqywh1wrd.jpg',NULL),(22,'Nguyễn Văn','B','0906800328','taixe3',NULL,'taixe3@gmail.com','Nam','2001-02-08','Tài xế','',NULL),(23,'Nguyễn Văn','C','0906857328','taixeC',NULL,'taixeC@gmail.com','Nam','2001-02-17','Tài xế','',NULL),(24,'Nguyễn Văn','D','0956857328','taixeD',NULL,'taixeD@gmail.com','Nam','2001-03-11','Tài xế','',NULL),(25,'Nguyễn Văn','E','0950057328','taixeE',NULL,'taixeE@gmail.com','Nam','2000-11-16','Tài xế','',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-15  7:03:43
