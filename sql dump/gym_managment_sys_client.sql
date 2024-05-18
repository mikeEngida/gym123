-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gym_managment_sys
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `cfame` varchar(20) NOT NULL,
  `clname` varchar(20) NOT NULL,
  `cdob` date NOT NULL,
  `csex` char(1) NOT NULL,
  `cstart_date` date NOT NULL,
  `ctier` varchar(45) NOT NULL,
  `cphone` varchar(10) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `cbid` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid_UNIQUE` (`cid`),
  UNIQUE KEY `cphone_UNIQUE` (`cphone`),
  KEY `bid_idx` (`cbid`),
  CONSTRAINT `cfk` FOREIGN KEY (`cbid`) REFERENCES `branch` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Amanuel','Tewodros','2002-06-28','M','2022-09-06','Golden Tier','0939115953','Yeka subcity, Addis Ababa',2),(2,'Birehanu','Asmamaw','2001-05-04','M','2022-09-06','Silver Tier','0939115943','Yeka subcity, Addis Ababa',2),(3,'Franol','Fekadu','2002-12-12','M','2022-09-06','Silver Tier','0939115944','Arada Subcity, Addis Ababa',2),(4,'Alexander','Kiros','2002-11-04','M','2022-09-06','Silver Tier','0939115941','Yeka subcity, Addis Ababa',2),(5,'Beimnet','Worku','2001-10-10','M','2022-09-06','Silver Tier','0939115144','Yeka Subcity, Addis Ababa',2),(6,'Debora','Berihanu','2002-11-10','F','2022-09-06','Silver Tier','0912115144','Yeka Subcity, Addis Ababa',2),(7,'Ryan','Reyonalds','1980-12-23','M','2021-12-12','Golden Tier','094312313','California, USA',2);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19  4:38:01
