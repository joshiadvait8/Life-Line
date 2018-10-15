CREATE DATABASE  IF NOT EXISTS `hnc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `hnc`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: hnc
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consult`
--

DROP TABLE IF EXISTS `consult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consult`
--

LOCK TABLES `consult` WRITE;
/*!40000 ALTER TABLE `consult` DISABLE KEYS */;
INSERT INTO `consult` VALUES (1,'Dr. Vinesh D Chandaramniya','02071171708'),(2,'Dr. Riddhish K. Maru','02239618273'),(3,'Dr. Shyam Mithiya','02239341702'),(4,'Dr. Paresh C. Trivedi','02239343891'),(5,'Dr. Mind\'s Center','02239616372'),(6,'Dr. Kiran Shandilya','02239616371');
/*!40000 ALTER TABLE `consult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'sss'),(2,'Suicide is rarely a spur of the moment decision. In the days and hours before people kill themselves, there are usually clues and warning signs. '),(3,'Suicide is rarely a spur of the moment decision. In the days and hours before people kill themselves, there are usually clues and warning signs. The strongest and most disturbing signs are verbal - \"I can\'t go on,\" \"Nothing matters any more\" or even \"I\'m thinking of ending it all.\" Such remarks should always be taken seriously.\r\n\r\nThe following list gives more examples, all of which can be signs that somebody is contemplating suicide. Of course, in most cases these situations do not lead to suicide. But, generally, the more signs a person displays, the higher the risk of suicide.');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpline`
--

DROP TABLE IF EXISTS `helpline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `helpline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(145) DEFAULT NULL,
  `helpline` varchar(30) NOT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `link` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orgName_UNIQUE` (`orgName`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpline`
--

LOCK TABLES `helpline` WRITE;
/*!40000 ALTER TABLE `helpline` DISABLE KEYS */;
INSERT INTO `helpline` VALUES (1,'Aasra','Navi Mumbai','104, Sunrise Arcade, Plot No. 100, Sector 16, Koparkhairane, Navi Mumbai','022-27546669','022-27546667','aasrahelpline@yahoo.com','http://www.aasra.info'),(2,'Samritans Mumbai','Mumbai','402, Jasmine, Opposite Kala Kendra, Dadasaheb Phalke Road, Dadar (E)','+91 84229 84528','+91 84229 84529','samaritans.helpline@gmail.com','http://samaritansmumbai.com'),(3,'Connecting NGO','Pune','Atur Chambers, 2nd floor, Above Coffee House, Opposite SGS Mall, Moledina Road, Camp, Pune','1800-843-4353 ','+91 9922001122',NULL,'http://connectingngo.org'),(4,'Cooj','Goa','H.No. F-1, Boa Vista, Bastora, Mapuca, Bardez – Goa 403507','+91 98225 62522','0832 2252525','coojtrust@yahoo.co.in','http://cooj.co.in'),(5,'Sumaitri','New Delhi','Aradhana Hostel Complex, Basement I, Bhagawandas Lane, Near Mandi House, New Delhi','011 23389090','011 23389090','sumaitringo@yahoo.in','http://sumaitri.net/'),(6,'Saath','Ahmedbad','B-12, I Floor, Nilambur Complex, H.L.Commerce College Road, Navrangpura, Ahmedabad ','079 26300222','079 26305544','saath12@yahoo.com','https://saath.org/'),(7,'Jeevan','Jamshedpur','25, Q Road, Bistapur, Jamshedpur','0657 6555555','0657 6453841','jeevanjamshedpur@gmail.com','jeevanhelplinesuicideprevention.blogspot.com'),(8,'Sneha India Foundation','Chennai','#11, Park View Road, R.A. Puram, Chennai-600028.','+91 44 2464 0050','+91 44 2464 0060',NULL,'http://snehaindia.org'),(9,'Roshni','Hyderabad','Door No.1-8-3-3/48/21, Kalavathi Niwas, Near Uma Towers, Sindhi Colony, Secunderabad, Hyderabad','040 66202000','040 66202001','roshni.counselling@gmail.com','https://www.roshnitrusthyd.org/'),(10,'Lifeline Foundation','Kolkata','28-B, Lake Avenue,Kalighat,Kolkata','033 24637401','0463 24637432','lifelinekolkotta@gmail.com','http://lifelinefoundation.co.in/'),(11,'Jethava','Mumbai','Vile parle','180000000','9892674024','jethava@gmailcom','www.hackerearth.com');
/*!40000 ALTER TABLE `helpline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagePath` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (8,'images\\1.jpg'),(9,'images\\2.png'),(10,'images\\3.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_tb`
--

DROP TABLE IF EXISTS `login_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_tb`
--

LOCK TABLES `login_tb` WRITE;
/*!40000 ALTER TABLE `login_tb` DISABLE KEYS */;
INSERT INTO `login_tb` VALUES (1,'AJ','advait');
/*!40000 ALTER TABLE `login_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-07 23:01:54
