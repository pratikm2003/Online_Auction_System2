-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_beading
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `add_item`
--

DROP TABLE IF EXISTS `add_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prboduct_name` varchar(100) DEFAULT NULL,
  `made_in` varchar(100) DEFAULT NULL,
  `reserve_price` bigint(20) DEFAULT NULL,
  `bid_increse` bigint(20) DEFAULT NULL,
  `history` varchar(2000) DEFAULT NULL,
  `add_image` varchar(200) DEFAULT NULL,
  `added_by` varchar(45) DEFAULT NULL,
  `added_by_id` varchar(45) DEFAULT NULL,
  `product_status` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_item`
--

LOCK TABLES `add_item` WRITE;
/*!40000 ALTER TABLE `add_item` DISABLE KEYS */;
INSERT INTO `add_item` VALUES (5,'car','india',150000,3000,'dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewr  dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwh dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwh dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwh dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwh dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhywhrwhc ru cuhwhwh','admin.jpg','User','null','Accepted','18/05/2023'),(6,'wet','india',150000,3000,'Basse Yutz Flagons    Date of Creation: Approximately 5th Century BCE Origin: Eastern France Date of Discovery: 1927 Where Displayed: British Museum Much about the ancient origins of the Basse Yutz Flagons remains buried in the past. These ceremonial drinking vessels are certainly of Celtic origin, but little is known about where they were found.  Dating from the Iron Age, Celts expertly fashioned them into a single piece from copper alloy.   They have intricate sculptures and semi-precious stones. The flagons are coated with resin to make them watertight, both functionalÂ andÂ beautiful.','back1.jpg','User','2','Accepted','18/05/2023'),(7,'saafaf','india',220000,1000,'dsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhvdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhvdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er hewrywhrwhc ru cuhwhwhvvdsskjjfsbfiusfisifhudfweialshdksyufishfiewyfewhfgheri  er he','back.avif','Admin','2','Accepted','18/05/2023'),(8,'Abhi','asfsf',150000,3000,'Basse Yutz Flagons    Date of Creation: Approximately 5th Century BCE Origin: Eastern France Date of Discovery: 1927 Where Displayed: British Museum Much about the ancient origins of the Basse Yutz Flagons remains buried in the past. These ceremonial drinking vessels are certainly of Celtic origin, but little is known about where they were found.  Dating from the Iron Age, Celts expertly fashioned them into a single piece from copper alloy.   They have intricate sculptures and semi-precious stones. The flagons are coated with resin to make them watertight, both functionalÂ andÂ beautiful.','submit bid1.jpg','User','2','Accepted','18/05/2023');
/*!40000 ALTER TABLE `add_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `contact_no` bigint(15) DEFAULT NULL,
  `pin_code` bigint(10) DEFAULT NULL,
  `house_bulding` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `town_city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Mane Pratik Rajaram ',9359462624,416113,'nilewadi','nilewadi','nilewadi','nilewadi','Maharashtra','home'),(2,'Pranali Sudam Katkar',7841821112,416113,'ghunki','ghunki','ghunki','ghunki','Maharashtra','home'),(3,'Mane Pratik Rajaram ',9876543210,416113,'nilewadi','nilewadi','nilewadi','nilewadi','Maharashtra','home'),(4,'Mane Pratik Rajaram ',9876543210,416113,'nilewadi','nilewadi','nilewadi','dd','Maharashtra','office'),(5,'Mane Pratik Rajaram ',9876543210,416113,'nilewadi','nilewadi','nilewadi','ghunki','Maharashtra','office'),(6,'Mane Pratik Rajaram ',9359462624,416113,'nilewadi','nilewadi','nilewadi','ghunki','Zarkhand','home'),(7,'Mane Pratik Rajaram ',9359462624,2321,'nilewadi','nilewadi','ghunki','nilewadi','Maharashtra','office'),(8,'Mane Pratik Rajaram ',9876543210,416113,'nilewadi','nilewadi','nilewadi','ghunki','West_Bengal','office'),(9,'Yogesh Shelake',9359462624,416113,'nilewadi','ghunki','ghunki','nilewadi','Maharashtra','office');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup` (
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` bigint(12) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `confirmpassword` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES ('Rajbala Mohan Jadhav','Bala','rajbalajadhav@gmail.com',7841821112,'2222','2222','Ghunaki','2002-07-17'),('Rajbala Mohan Jadhav','Bala','rajbalajadhav@gmail.com',7841821112,'123456','123456','Ghunaki','2002-07-17'),('Rajbala Mohan Jadhav','Rajbala','rajbalajadhav@gmail.com',7841821112,'456321','456321','Ghunaki','2002-07-17'),('Rajbala Mohan Jadhav','Rajbala','rajbalajadhav@gmail.com',7841821112,'753951','753951','Ghunaki','2002-07-17'),('Mane Pratik Rajaram ','Pratik','pratikmane00@gmail.com',9359462624,'2020','2020','Nilewadi','2003-01-23');
/*!40000 ALTER TABLE `admin_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES (1,'Rajbala Jadhav','rajbalajadhav@gmail.com','Very nice protuct quality ð'),(2,'Pranali Sudam Katkar','pranalikatkar000@gmail.com','Very nice protuct quality ð'),(3,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(4,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(5,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(6,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(7,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(8,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(9,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality '),(10,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality ð'),(11,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality ð'),(12,'Mane Pratik Rajaram ','pratikmane060@gmail.com','Very nice protuct quality ð');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot_password` (
  `mail` varchar(200) DEFAULT NULL,
  `otp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password`
--

LOCK TABLES `forgot_password` WRITE;
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_user`
--

DROP TABLE IF EXISTS `new_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` bigint(12) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `confirmpassword` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `profilepic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_user`
--

LOCK TABLES `new_user` WRITE;
/*!40000 ALTER TABLE `new_user` DISABLE KEYS */;
INSERT INTO `new_user` VALUES (1,'Pranali Sudam Katkar','Pranali','pranalikatkar000@gmail.com',7972357448,'2003-05-29','145236','145236','female','profile1.png'),(2,'Mane Pratik Rajaram ','Pratik','pratikmane060@gmail.com',9359462624,'2003-01-23','1707','1707','male','profile1.jpg');
/*!40000 ALTER TABLE `new_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `name` varchar(150) DEFAULT NULL,
  `cardno` bigint(20) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `cvv` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('Mane Pratik Rajaram ',1234567897412,'september',2024,452),('Pranali Sudam Katkar',1236547897418,'september',2024,452),('Mane Pratik Rajaram ',225552255,'june',2025,352),('Mane Pratik Rajaram ',2312312313,'oo',1231,123),('Pruthviraj Bhosale',1115455,'may',2025,555);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_bid`
--

DROP TABLE IF EXISTS `place_bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place_bid` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `f_bid` bigint(100) DEFAULT NULL,
  `s_bid` bigint(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_bid`
--

LOCK TABLES `place_bid` WRITE;
/*!40000 ALTER TABLE `place_bid` DISABLE KEYS */;
INSERT INTO `place_bid` VALUES (2,2,1,'car',153000,156000,'WIN'),(3,1,4,'car',165000,180000,NULL),(4,1,5,'car',153000,156000,NULL),(5,2,4,'car',180000,195000,'WIN'),(6,2,7,'saafaf',221000,222000,'WIN');
/*!40000 ALTER TABLE `place_bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_product`
--

DROP TABLE IF EXISTS `save_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `save_product` (
  `id` int(11) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `prboduct_name` varchar(100) DEFAULT NULL,
  `made_in` varchar(100) DEFAULT NULL,
  `reserve_price` bigint(20) DEFAULT NULL,
  `bid_increse` bigint(20) DEFAULT NULL,
  `history` varchar(2000) DEFAULT NULL,
  `add_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_product`
--

LOCK TABLES `save_product` WRITE;
/*!40000 ALTER TABLE `save_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `save_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 15:54:49
