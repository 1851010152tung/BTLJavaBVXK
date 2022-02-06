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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Trương Ngọc Trúc','Lâm','truonglam9112000@gmail.com','0906844328','teeltruong','$2a$10$y1qb7hgvCwQtV7YeQsxRnuB4sYGmLDFYD0MlZU2gHoVuEx6m9tlWC','ROLE_SELLER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794761/aooadr7hgcqyqywh1wrd.jpg'),(3,'Trúc','Lâm','admin123@gmail.com','0906844328','admin','$2a$10$zqXCok4aGfPZBT2hjm8KNuerJ2rKt3ooFKvEgUle/GVtyuN6F0cTq','ROLE_ADMIN',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639911128/ubcxluzkuprnalkrhy0k.jpg'),(4,' Chế Quang','Tùng','quangtung123@gmail.com','0906844328','taixe','$2a$10$z5cIukSr2blbxl/ZIjH7Q.BIYYK2eWeM9WnMXOwK/FQjHyzBALumO','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1639911190/i1lesfsvryezsxnfduvd.jpg'),(5,'Tài','xế 2','taixe2@gmail.com','15814569522','taixe2','$2a$10$rZMVtuVxS2db7UhHC4Yut.vicC54trIZj44Xo/TVrvyeH6zbt9Ija','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794092/eaol9zcpcgyscxlyhwg7.jpg'),(6,'Nguyễn Văn','B','taixe3@gmail.com','0906800328','taixe3','$2a$10$m7OCUeNQeGbWBsveiBP6keIoDzdS.4JJ5apYK.yX/LWNaUKUqeMAC','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794761/aooadr7hgcqyqywh1wrd.jpg'),(7,'Nguyễn Văn','C','taixeC@gmail.com','0958443257','taixeC','$2a$10$DqufT.I0vUfc/4isVqZIjO1bLcpP55v2f92koCzM6LesZExEgaFkS','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794092/eaol9zcpcgyscxlyhwg7.jpg'),(8,'Nguyễn Văn','D','taixeD@gmail.com','0958443007','taixeD','$2a$10$ZzHE6JHkqfD7Q/kKvMESvuqkoBY/tBQiEjhFYikmkQMyC6PRzOaKC','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794092/eaol9zcpcgyscxlyhwg7.jpg'),(9,'Nguyễn Văn','E','taixeE@gmail.com','0958443557','taixeE','$2a$10$FQy3DfM60pvL2AOQdhJAwul7WGFJX/d0ZCF0oSsZ5CjN71vqRvSeq','ROLE_DRIVER',_binary '\0','https://res.cloudinary.com/dwj7pu4xy/image/upload/v1640794092/eaol9zcpcgyscxlyhwg7.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-06  7:18:36
