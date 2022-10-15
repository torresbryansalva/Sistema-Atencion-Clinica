-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dbclinica
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `turno` varchar(20) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `sintomas` varchar(100) DEFAULT NULL,
  `receta` varchar(100) DEFAULT NULL,
  `dnicliente` int NOT NULL,
  `codempleado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dnicliente` (`dnicliente`),
  KEY `codempleado` (`codempleado`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`dnicliente`) REFERENCES `datosclientes` (`dni`),
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`codempleado`) REFERENCES `empleados` (`codempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'Atendido','2022-09-08 00:00:00','Mañana','Medicina General',50.80,'gripe','paracetamol',334455,'CAD001'),(2,'Pendiente','2022-09-08 00:00:00','Mañana','Medicina General',50.80,NULL,NULL,122222,NULL),(3,'Pendiente','2022-10-20 00:00:00','Tarde','Medicina General',46.70,NULL,NULL,565656,NULL),(4,'Atendido','2022-10-20 00:00:00','Noche','Medicina General',354.50,'Rotura de Tendones','Requiere cirujia, medicamentos 45gr de \nnicotina',121222,'CAD001');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-12 17:24:53
