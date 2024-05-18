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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `prop_id` int(11) NOT NULL AUTO_INCREMENT,
  `prop_type` varchar(15) NOT NULL,
  `prop_model` varchar(20) NOT NULL,
  `prop_purchase_date` date NOT NULL,
  `number` int(11) NOT NULL,
  `prop_branch` int(11) NOT NULL,
  PRIMARY KEY (`prop_id`),
  UNIQUE KEY `prop_id_UNIQUE` (`prop_id`),
  KEY `prop_fk_idx` (`prop_branch`),
  CONSTRAINT `prop_fk` FOREIGN KEY (`prop_branch`) REFERENCES `branch` (`bid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,' Property1','XEty213','2021-09-09',5,2),(2,' Property2','XEty214','2021-09-09',5,2),(3,' Property3','XEty215','2021-09-09',5,2),(4,' Property4','XEty216','2021-09-09',5,2),(5,' Property5','XEty217','2021-09-09',5,2),(6,' Property6','XEty218','2021-09-09',5,2),(7,' Property7','XEty219','2021-09-09',5,2),(8,' Property8','XEty220','2021-09-09',5,2),(9,' Property9','XEty221','2021-09-09',5,2),(10,' Property10','XEty222','2021-09-09',5,2),(11,' Property11','XEty223','2021-09-09',5,2),(12,' Property12','XEty224','2021-09-09',5,2),(13,' Property13','XEty225','2021-09-09',5,2),(14,' Property14','XEty226','2021-09-09',5,2),(15,' Property15','XEty227','2021-09-09',5,2);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19  4:37:56
