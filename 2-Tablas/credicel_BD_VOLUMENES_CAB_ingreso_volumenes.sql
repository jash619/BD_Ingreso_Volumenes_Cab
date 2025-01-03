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
  `idingreso_volumen` int(11) unsigned zerofill NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad_ingreso` decimal(10,0) NOT NULL,
  `medida_volumen` varchar(45) NOT NULL,
  `municipio_id` int(6) unsigned NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `vehiculo_id` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`idingreso_volumen`),
  UNIQUE KEY `idingreso_volumenes_UNIQUE` (`idingreso_volumen`),
  KEY `usuario_id_idx` (`usuario_id`),
  KEY `municipio_idx` (`municipio_id`),
  KEY `productos_id_idx` (`producto_id`),
  KEY `vehiculosid_idx` (`vehiculo_id`),
  CONSTRAINT `municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_id` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vehiculo_id` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`idvehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_volumenes`
--

LOCK TABLES `ingreso_volumenes` WRITE;
/*!40000 ALTER TABLE `ingreso_volumenes` DISABLE KEYS */;
INSERT INTO `ingreso_volumenes` VALUES (00000000001,1,3,'Tonelada',118,1,'2024-10-01',00000000001),(00000000002,2,8,'Tonelada',349,2,'2024-10-01',00000000002),(00000000003,4,5,'Tonelada',499,1,'2024-10-01',00000000003),(00000000004,11,5,'Tonelada',908,1,'2024-10-01',00000000004),(00000000005,20,6,'Tonelada',897,1,'2024-10-01',00000000005),(00000000006,22,5,'Tonelada',58,1,'2024-10-01',00000000006),(00000000007,28,6,'Tonelada',671,1,'2024-10-01',00000000007),(00000000008,49,13,'Tonelada',984,1,'2024-10-01',00000000008),(00000000009,49,13,'Tonelada',984,1,'2024-10-03',00000000008),(00000000010,49,13,'Tonelada',984,2,'2024-10-03',00000000001),(00000000011,1,1,'Tonelada',863,1,'2024-11-04',00000000001),(00000000012,74,5,'Tonelada',499,1,'2024-11-04',00000000002),(00000000013,2,5,'Tonelada',547,1,'2024-11-04',00000000003),(00000000014,75,34,'Tonelada',171,1,'2024-11-04',00000000017),(00000000015,76,13,'Tonelada',434,1,'2024-11-04',00000000005),(00000000016,4,1,'Tonelada',499,1,'2024-11-04',00000000006),(00000000017,32,12,'Tonelada',956,1,'2024-11-04',00000000007),(00000000018,34,8,'Tonelada',1000,1,'2024-11-04',00000000008),(00000000019,77,34,'Tonelada',434,1,'2024-11-04',00000000009),(00000000020,11,7,'Tonelada',908,1,'2024-11-04',00000000010),(00000000021,16,5,'Tonelada',499,1,'2024-11-04',00000000011),(00000000022,78,2,'Tonelada',107,1,'2024-11-04',00000000012),(00000000023,21,10,'Tonelada',471,1,'2024-11-04',00000000013),(00000000024,44,4,'Tonelada',380,1,'2024-11-04',00000000014),(00000000025,19,5,'Tonelada',746,1,'2024-11-04',00000000015),(00000000026,23,4,'Tonelada',499,1,'2024-11-04',00000000016),(00000000027,23,7,'Tonelada',499,1,'2024-11-04',00000000001),(00000000028,23,4,'Tonelada',499,1,'2024-11-04',00000000002),(00000000029,24,3,'Tonelada',787,1,'2024-11-04',00000000003),(00000000030,25,10,'Tonelada',179,1,'2024-11-04',00000000004),(00000000031,38,3,'Tonelada',511,1,'2024-11-04',00000000005),(00000000032,47,5,'Tonelada',380,1,'2024-11-04',00000000006),(00000000033,46,7,'Tonelada',908,1,'2024-11-04',00000000007),(00000000034,52,10,'Tonelada',897,1,'2024-11-04',00000000008),(00000000035,41,6,'Tonelada',204,1,'2024-11-04',00000000009),(00000000036,42,7,'Tonelada',283,1,'2024-11-04',00000000010),(00000000037,39,24,'Tonelada',950,1,'2024-11-04',00000000011),(00000000038,43,17,'Tonelada',912,1,'2024-11-04',00000000012),(00000000039,63,2,'Tonelada',85,1,'2024-11-04',00000000013),(00000000040,1,4,'Tonelada',863,2,'2024-11-04',00000000014),(00000000041,76,19,'Tonelada',434,2,'2024-11-04',00000000015),(00000000042,55,3,'Tonelada',586,2,'2024-11-04',00000000016),(00000000043,4,7,'Tonelada',499,2,'2024-11-04',00000000017),(00000000044,56,3,'Tonelada',586,2,'2024-11-05',00000000001),(00000000045,33,5,'Tonelada',612,2,'2024-11-05',00000000002),(00000000046,32,98,'Tonelada',956,2,'2024-11-05',00000000003),(00000000047,34,3,'Tonelada',1000,2,'2024-11-05',00000000004),(00000000048,79,3,'Tonelada',586,2,'2024-11-05',00000000005),(00000000049,13,1,'Tonelada',499,2,'2024-11-05',00000000006),(00000000050,15,3,'Tonelada',499,2,'2024-11-05',00000000007),(00000000051,59,9,'Tonelada',586,2,'2024-11-05',00000000008),(00000000052,21,24,'Tonelada',471,2,'2024-11-05',00000000009),(00000000053,20,5,'Tonelada',897,2,'2024-11-05',00000000010),(00000000054,80,6,'Tonelada',179,2,'2024-11-05',00000000011),(00000000055,22,3,'Tonelada',661,2,'2024-11-05',00000000012),(00000000056,19,18,'Tonelada',499,2,'2024-11-05',00000000013),(00000000057,23,18,'Tonelada',746,2,'2024-11-05',00000000014),(00000000058,24,5,'Tonelada',787,2,'2024-11-05',00000000015),(00000000059,60,1,'Tonelada',661,2,'2024-11-05',00000000016),(00000000060,38,7,'Tonelada',661,2,'2024-11-05',00000000017),(00000000061,44,8,'Tonelada',612,3,'2024-11-03',00000000001),(00000000062,48,25,'Tonelada',1026,3,'2024-11-03',00000000002),(00000000063,46,7,'Tonelada',908,3,'2024-11-03',00000000003),(00000000064,52,8,'Tonelada',897,3,'2024-11-03',00000000004),(00000000065,41,6,'Tonelada',204,3,'2024-11-03',00000000005),(00000000066,42,7,'Tonelada',204,3,'2024-11-03',00000000006),(00000000067,40,20,'Tonelada',103,3,'2024-11-03',00000000007),(00000000068,39,25,'Tonelada',950,3,'2024-11-03',00000000008),(00000000069,39,25,'Tonelada',887,3,'2024-11-03',00000000009),(00000000070,39,25,'Tonelada',1089,3,'2024-11-03',00000000010),(00000000071,27,11,'Tonelada',547,3,'2024-11-03',00000000011),(00000000072,81,20,'Tonelada',120,3,'2024-11-03',00000000012),(00000000073,51,7,'Tonelada',1084,3,'2024-11-03',00000000013),(00000000074,43,6,'Tonelada',912,3,'2024-11-03',00000000014),(00000000075,69,34,'Tonelada',150,3,'2024-11-03',00000000015),(00000000076,44,8,'Tonelada',612,3,'2024-11-03',00000000016);
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

-- Dump completed on 2024-11-05 20:59:10
