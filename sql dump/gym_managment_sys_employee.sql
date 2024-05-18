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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `efname` varchar(20) NOT NULL,
  `elname` varchar(20) NOT NULL,
  `esex` char(1) NOT NULL,
  `edob` date NOT NULL,
  `estart_date` date NOT NULL,
  `ephone` char(10) NOT NULL,
  `eaddress` varchar(50) NOT NULL,
  `edep` varchar(25) NOT NULL,
  `ebranch` int(11) NOT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `id_UNIQUE` (`eid`),
  KEY `empfk1_idx` (`edep`,`ebranch`),
  CONSTRAINT `empfk1` FOREIGN KEY (`edep`, `ebranch`) REFERENCES `department` (`dept_name`, `dept_branch`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'employeeF1','employeeL1','F','1999-12-10','2021-09-09','0938231210','Yeka Abado, Addis Ababa','Executives and Heads',2),(2,'employeeF2','employeeL2','M','1999-12-11','2021-09-09','0938231211','Yeka Abado, Addis Ababa','Executives and Heads',2),(3,'employeeF3','employeeL3','F','1999-12-12','2021-09-09','0938231212','Yeka Abado, Addis Ababa','Executives and Heads',2),(4,'employeeF4','employeeL4','F','1999-12-13','2021-09-09','0938231213','Yeka Abado, Addis Ababa','Executives and Heads',2),(5,'employeeF5','employeeL5','F','1999-12-14','2021-09-09','0938231214','Yeka Abado, Addis Ababa','Instructors',2),(6,'employeeF6','employeeL6','M','1999-12-15','2021-09-09','0938231215','Yeka Abado, Addis Ababa','Instructors',2),(7,'employeeF7','employeeL7','F','1999-12-16','2021-09-09','0938231216','Yeka Abado, Addis Ababa','Instructors',2),(8,'employeeF8','employeeL8','M','1999-12-17','2021-09-09','0938231217','Yeka Abado, Addis Ababa','Instructors',2),(9,'employeeF9','employeeL9','M','1999-12-18','2021-09-09','0938231218','Yeka Abado, Addis Ababa','Instructors',2),(10,'employeeF10','employeeL10','F','1999-12-19','2021-09-09','0938231219','Yeka Abado, Addis Ababa','Health and Paramedics',2),(11,'employeeF11','employeeL11','M','1999-12-20','2021-09-09','0938231220','Yeka Abado, Addis Ababa','Health and Paramedics',2),(12,'employeeF12','employeeL12','F','1999-12-21','2021-09-09','0938231221','Yeka Abado, Addis Ababa','Health and Paramedics',2),(13,'employeeF13','employeeL13','F','1999-12-22','2021-09-09','0938231222','Yeka Abado, Addis Ababa','Human Resources',2),(14,'employeeF14','employeeL14','F','1999-12-23','2021-09-09','0938231223','Yeka Abado, Addis Ababa','Human Resources',2),(15,'employeeF15','employeeL15','F','1999-12-24','2021-09-09','0938231224','Yeka Abado, Addis Ababa','Others',2),(16,'employeeF16','employeeL16','F','1999-12-10','2021-09-09','0938231277','Yeka Abado, Addis Ababa','Executives and Heads',2);
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

-- Dump completed on 2022-09-19  4:37:58
