-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: moviedb
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `films`
--

--create DATABASE moviedb;
use moviedb;

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(45) NOT NULL,
  `director` varchar(45) NOT NULL,
  `release_year` int(4) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id_UNIQUE` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'X-Men','Bryan Singer',2000,'USA'),(2,'X2','Bryan Singer',2003,'USA'),(3,'X-Men: The Last Stand','Brett Ratner',2006,'USA'),(4,'X-Men Origins: Wolverine','Gavin Hood',2009,'USA'),(5,'X-Men: First Class','Matthew Vaughn',2011,'USA'),(6,'The Wolverine','James Mangold',2013,'USA'),(7,'X-Men: Days of Future Past','Bryan Singer',2014,'USA'),(8,'Deadpool','Tim Miller',2016,'USA'),(9,'X-Men: Apocalypse','Bryan Singer',2016,'USA'),(10,'Logan','James Mangold',2017,'USA'),(11,'Raees','Rahul Dholakia',2017,'India'),(12,'Ghajini','A.R. Murugadoss',2008,'India'),(13,'Apur Sansar','Satyajit Ray',1960,'India'),(14,'The King\'s Speech','Tom Hooper',2010,'UK'),(15,'Casino Royale','Martin Campbell',2006,'USA'),(16,'The Shawshank Redemption','Frank Darabont',1994,'USA'),(17,'The Lion King','Roger Allers',1994,'USA'),(19,'The Hurt Locker','Kathryn Bigelow',2008,'USA'),(20,'Neruda','Pablo Larraín',2016,'Chile');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `_title` varchar(45) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id_UNIQUE` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (0,'Musical'),(1,'Action'),(2,'Animation'),(3,'Adventure'),(4,'Biography'),(5,'Comedy'),(6,'Crime'),(7,'Documentary'),(8,'Drama'),(9,'Family'),(10,'Fantasy'),(11,'History'),(12,'Horror'),(13,'Romance'),(14,'Sci-Fi'),(15,'Sport'),(16,'Thriller'),(17,'War');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_film_relationship`
--

DROP TABLE IF EXISTS `genre_film_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_film_relationship` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `film_id_idx` (`film_id`),
  KEY `genre_id_idx` (`genre_id`),
  CONSTRAINT `film_id` FOREIGN KEY (`film_id`) REFERENCES `films` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_film_relationship`
--

LOCK TABLES `genre_film_relationship` WRITE;
/*!40000 ALTER TABLE `genre_film_relationship` DISABLE KEYS */;
INSERT INTO `genre_film_relationship` VALUES 
  (1,15,1),
  (2,1,14),
  (3,2,14),
  (4,3,14),
  (5,4,14),
  (6,5,14),
  (7,6,14),
  (8,7,14),
  (9,8,14),
  (10,9,14),
  (11,10,1),
  (12,1,1),
  (13,2,1),
  (14,3,1),
  (15,4,1),
  (16,5,1),
  (17,6,1),
  (18,7,1),
  (19,8,1),
  (20,9,1),
  (21,10,1),
  (22,10,10),
  (23,1,10),
  (24,2,10),
  (25,3,10),
  (26,4,10),
  (27,5,10),
  (28,6,10),
  (29,7,10),
  (30,8,10),
  (31,9,10),
  (32,10,10),
  (33,13,9),
  (34,13,4),
  (35,11,6),
  (36,11,1),
  (37,12,6),
  (38,16,6),
  (39,16,8),
  (40,17,3),
  (41,17,2),
  (42,17,8),
  (43,17,9),
  (44,17,0),
  (45,19,8),
  (46,19,11),
  (47,19,16),
  (48,19,17),
  (49,20,4),
  (50,20,6),
  (51,20,8),
  (52,20,11);
/*!40000 ALTER TABLE `genre_film_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23 20:15:48
