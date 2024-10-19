CREATE DATABASE  IF NOT EXISTS `credicel_BD_VOLUMENES_CAB` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `credicel_BD_VOLUMENES_CAB`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_BD_VOLUMENES_CAB
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.19-MariaDB-cll-lve

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
-- Table structure for table `ingreso_volumenes`
--

DROP TABLE IF EXISTS `ingreso_volumenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso_volumenes` (
  `idingreso_volumenes` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad_ingreso` decimal(10,0) NOT NULL,
  `medida_volumen` varchar(45) NOT NULL,
  `municipio_id` int(6) unsigned NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `vehiculosid` int(11) NOT NULL,
  PRIMARY KEY (`idingreso_volumenes`),
  UNIQUE KEY `idingreso_volumenes_UNIQUE` (`idingreso_volumenes`),
  KEY `usuario_id_idx` (`usuario_id`),
  KEY `municipio_idx` (`municipio_id`),
  KEY `productos_id_idx` (`producto_id`),
  KEY `vehiculosid_idx` (`vehiculosid`),
  CONSTRAINT `municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vehiculosid` FOREIGN KEY (`vehiculosid`) REFERENCES `vehiculos` (`idvehiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_volumenes`
--

LOCK TABLES `ingreso_volumenes` WRITE;
/*!40000 ALTER TABLE `ingreso_volumenes` DISABLE KEYS */;
INSERT INTO `ingreso_volumenes` VALUES (1,1,3,'Tonelada',118,1,'2024-10-01',1),(2,2,8,'Tonelada',349,2,'2024-10-01',2),(3,4,5,'Tonelada',499,1,'2024-10-01',3),(4,11,5,'Tonelada',908,1,'2024-10-01',4),(5,20,6,'Tonelada',897,1,'2024-10-01',5),(6,22,5,'Tonelada',58,1,'2024-10-01',6),(7,28,6,'Tonelada',671,1,'2024-10-01',7),(8,49,13,'Tonelada',984,1,'2024-10-01',8);
/*!40000 ALTER TABLE `ingreso_volumenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 18:31:03
