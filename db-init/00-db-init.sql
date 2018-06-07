-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `beers`
--

DROP TABLE IF EXISTS `beers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturerid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `abv` double NOT NULL,
  `ibu` int(11) NOT NULL,
  `calories` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_manufacturerid` (`manufacturerid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beers`
--

LOCK TABLES `beers` WRITE;
/*!40000 ALTER TABLE `beers` DISABLE KEYS */;
INSERT INTO `beers` VALUES (1,0,'Pacifico',5.4,6,146,'Pilsner'),(2,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(3,2,'VooDoo Ranger',7,50,160,'IPA'),(4,3,'Citradelic',6,50,170,'Tangerine IPA'),(5,4,'Juice Haze IPA',7.2,42,230,'IPA'),(6,5,'Coors Light',4.2,10,102,'Lager'),(7,6,'Guiness',4.2,45,125,'Stout'),(8,7,'Kiwanda',5.4,25,125,'Cream Ale'),(9,8,'Umbrella',7.4,60,160,'Pale Ale'),(10,9,'Tsunami',7,45,170,'stout'),(11,0,'Pacifico',5.4,6,146,'Pilsner'),(12,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(13,2,'VooDoo Ranger',7,50,160,'IPA'),(14,3,'Citradelic',6,50,170,'Tangerine IPA'),(15,4,'Juice Haze IPA',7.2,42,230,'IPA'),(16,5,'Coors Light',4.2,10,102,'Lager'),(17,6,'Guiness',4.2,45,125,'Stout'),(18,7,'Kiwanda',5.4,25,125,'Cream Ale'),(19,8,'Umbrella',7.4,60,160,'Pale Ale'),(20,9,'Tsunami',7,45,170,'stout'),(21,0,'Pacifico',5.4,6,146,'Pilsner'),(22,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(23,2,'VooDoo Ranger',7,50,160,'IPA'),(24,3,'Citradelic',6,50,170,'Tangerine IPA'),(25,4,'Juice Haze IPA',7.2,42,230,'IPA'),(26,5,'Coors Light',4.2,10,102,'Lager'),(27,6,'Guiness',4.2,45,125,'Stout'),(28,7,'Kiwanda',5.4,25,125,'Cream Ale'),(29,8,'Umbrella',7.4,60,160,'Pale Ale'),(30,9,'Tsunami',7,45,170,'stout'),(31,0,'Pacifico',5.4,6,146,'Pilsner'),(32,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(33,2,'VooDoo Ranger',7,50,160,'IPA'),(34,3,'Citradelic',6,50,170,'Tangerine IPA'),(35,4,'Juice Haze IPA',7.2,42,230,'IPA'),(36,5,'Coors Light',4.2,10,102,'Lager'),(37,6,'Guiness',4.2,45,125,'Stout'),(38,7,'Kiwanda',5.4,25,125,'Cream Ale'),(39,8,'Umbrella',7.4,60,160,'Pale Ale'),(40,9,'Tsunami',7,45,170,'stout'),(41,0,'Pacifico',5.4,6,146,'Pilsner'),(42,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(43,2,'VooDoo Ranger',7,50,160,'IPA'),(44,3,'Citradelic',6,50,170,'Tangerine IPA'),(45,4,'Juice Haze IPA',7.2,42,230,'IPA'),(46,5,'Coors Light',4.2,10,102,'Lager'),(47,6,'Guiness',4.2,45,125,'Stout'),(48,7,'Kiwanda',5.4,25,125,'Cream Ale'),(49,8,'Umbrella',7.4,60,160,'Pale Ale'),(50,9,'Tsunami',7,45,170,'stout'),(51,0,'Pacifico',5.4,6,146,'Pilsner'),(52,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(53,2,'VooDoo Ranger',7,50,160,'IPA'),(54,3,'Citradelic',6,50,170,'Tangerine IPA'),(55,4,'Juice Haze IPA',7.2,42,230,'IPA'),(56,5,'Coors Light',4.2,10,102,'Lager'),(57,6,'Guiness',4.2,45,125,'Stout'),(58,7,'Kiwanda',5.4,25,125,'Cream Ale'),(59,8,'Umbrella',7.4,60,160,'Pale Ale'),(60,9,'Tsunami',7,45,170,'stout'),(61,0,'Pacifico',5.4,6,146,'Pilsner'),(62,1,'Fat Tire',5.2,22,160,'Belgian Style Ale'),(63,2,'VooDoo Ranger',7,50,160,'IPA'),(64,3,'Citradelic',6,50,170,'Tangerine IPA'),(65,4,'Juice Haze IPA',7.2,42,230,'IPA'),(66,5,'Coors Light',4.2,10,102,'Lager'),(67,6,'Guiness',4.2,45,125,'Stout'),(68,7,'Kiwanda',5.4,25,125,'Cream Ale'),(69,8,'Umbrella',7.4,60,160,'Pale Ale'),(70,9,'Tsunami',7,45,170,'stout');
/*!40000 ALTER TABLE `beers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beerid` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` int(11) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,10,'Portland','Oregon',97220,'5031234567'),(2,2,'Bend','Oregon',97001,'5033214567'),(3,3,'Corvallis','Oregon',97330,'5034444567'),(4,4,'Eugene','Oregon',97401,'5035554567'),(5,5,'Tigad','Oregon',97224,'5036664567'),(6,6,'Salem','Oregon',97301,'5037774567'),(7,7,'Tualatin','Oregon',97305,'5038884567'),(8,8,'West Linn','Oregon',97036,'5039994567'),(9,9,'Vancouver','Washington',98607,'5039999999');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dollars` int(11) NOT NULL,
  `stars` double NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `beerid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_beerid` (`beerid`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`beerid`) REFERENCES `beers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,4.5,'Cheap, delicious beer.',1,10),(2,2,3.5,'',2,1),(3,1,3.5,'Try the IPA.',3,2),(4,3,4.5,'Try the Pale Ale.',4,3),(5,3,5,'BEST BEER',5,4),(6,2,3,'Beer was okay',6,5),(7,2,3.5,'',7,6),(8,3,4.5,'',8,7),(9,1,2.5,'Bad Beer',9,8),(10,2,3.5,'',10,9);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07  0:55:04