-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: kyselackov
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `venues_places`
--

DROP TABLE IF EXISTS `venues_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues_places` (
  `VenueID` int NOT NULL AUTO_INCREMENT,
  `VenueType` int NOT NULL,
  `VenueName` varchar(255) NOT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `BeerFridge` tinyint(1) DEFAULT NULL,
  `BottledDraft` tinyint(1) DEFAULT NULL,
  `LastUpdated` datetime NOT NULL,
  PRIMARY KEY (`VenueID`),
  UNIQUE KEY `VenueID` (`VenueID`,`VenueName`,`Website`,`Coordinates`),
  KEY `FK_VenueType` (`VenueType`),
  CONSTRAINT `FK_VenueType` FOREIGN KEY (`VenueType`) REFERENCES `venues_types` (`VenuesTypesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues_places`
--

LOCK TABLES `venues_places` WRITE;
/*!40000 ALTER TABLE `venues_places` DISABLE KEYS */;
INSERT INTO `venues_places` VALUES (1,1,'Pivovar Dva kohouti','https://www.dvakohouti.cz/','Sokolovská 81/55, Praha','50.0934675N, 14.4468814E',1,1,'2023-12-23 18:33:10'),(2,1,'sedm°','https://www.sedmstupnu.cz/','Sokolovská 73/63, Praha','50.0933733N, 14.4478833E',0,1,'2023-12-23 18:33:14'),(3,1,'Pivovarský Klub Benedict','https://pivo-klub.cz/','Křižíkova 272/17, Praha','50.0905211N, 14.4415222E',NULL,NULL,'2023-12-23 18:33:16'),(4,1,'Pivní bar Vrátnice','https://vratnice.cz/','Thámova 221/7, Praha','50.0914358N, 14.4526533E',1,1,'2023-12-23 18:33:19'),(5,2,'Pivotéka BeerGeek Karlín','https://pivoteka.beergeek.cz/','Křižíkova 703/97, Praha','50.0933864N, 14.4542789E',1,NULL,'2023-12-23 18:33:21');
/*!40000 ALTER TABLE `venues_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues_types`
--

DROP TABLE IF EXISTS `venues_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues_types` (
  `VenuesTypesID` int NOT NULL AUTO_INCREMENT,
  `VenueType` varchar(255) NOT NULL,
  PRIMARY KEY (`VenuesTypesID`),
  UNIQUE KEY `VenueType` (`VenueType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues_types`
--

LOCK TABLES `venues_types` WRITE;
/*!40000 ALTER TABLE `venues_types` DISABLE KEYS */;
INSERT INTO `venues_types` VALUES (1,'hospoda'),(2,'pivotéka');
/*!40000 ALTER TABLE `venues_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 18:34:08
