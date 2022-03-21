CREATE DATABASE  IF NOT EXISTS `DMLejercicio1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DMLejercicio1`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 192.168.1.208    Database: DMLejercicio1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Despachos`
--

DROP TABLE IF EXISTS `Despachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Despachos` (
  `numero` int NOT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Despachos`
--

LOCK TABLES `Despachos` WRITE;
/*!40000 ALTER TABLE `Despachos` DISABLE KEYS */;
INSERT INTO `Despachos` VALUES (1,10),(2,15),(3,30),(4,20),(5,40),(6,50),(7,30),(8,22),(9,44),(10,60);
/*!40000 ALTER TABLE `Despachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Directores`
--

DROP TABLE IF EXISTS `Directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Directores` (
  `DNI` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DNIJefe` varchar(8) DEFAULT NULL,
  `despacho` int DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `FK_despachos` (`DNIJefe`),
  KEY `FK_despachos2` (`despacho`),
  CONSTRAINT `FK_despachos` FOREIGN KEY (`DNIJefe`) REFERENCES `Directores` (`DNI`),
  CONSTRAINT `FK_despachos2` FOREIGN KEY (`despacho`) REFERENCES `Despachos` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Directores`
--

LOCK TABLES `Directores` WRITE;
/*!40000 ALTER TABLE `Directores` DISABLE KEYS */;
INSERT INTO `Directores` VALUES ('0031325F','Carlos Paria','6546456A',6),('1541547C','Jose Garcia','6546456A',3),('3541564H','Natalia Vidal','6546456A',8),('6456135M','Alberto Lopez','6546456A',9),('6546456A','Fernando Hulea',NULL,1),('6546466B','Antonio Santos','6546456A',2),('6554876A','Dani Pizarro','6546456A',10),('6843257D','Pablo Motos','6546456A',4),('7987465E','Pepe Tevez','6546456A',5),('9898795K','Marta Martin','6546456A',7);
/*!40000 ALTER TABLE `Directores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 12:36:09
