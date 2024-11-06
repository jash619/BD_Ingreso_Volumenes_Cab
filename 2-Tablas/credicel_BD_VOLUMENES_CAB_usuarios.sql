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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `documento_identidad` int(11) NOT NULL,
  `nombres_usuario` varchar(60) NOT NULL,
  `cargo_usuario` varchar(45) NOT NULL,
  `cel_usuario` int(20) NOT NULL,
  `email_usuario` varchar(45) NOT NULL,
  `login_usuario` varchar(45) NOT NULL,
  `clave_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `idusuario_UNIQUE` (`id_usuario`),
  UNIQUE KEY `documento_identidad_UNIQUE` (`documento_identidad`),
  UNIQUE KEY `login_usuario_UNIQUE` (`login_usuario`),
  UNIQUE KEY `email_usuario_UNIQUE` (`email_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1098727043,'Jose Alfonso Sanchez Hernandez','Aux Operacciones',2147483647,'jassh619@gmail.com','JSANCHEZ','Abc_123'),(2,88164264,'Ciro Caceres','Aux Operaciones',2147483647,'ccaceres@gmail.com','CCACERES','Def_123'),(3,91292169,'Jose Excelino Ariza Hernandez','Aux Operaciones',2147483647,'jariza@gmail.com','JARIZA','Fgh_123'),(4,43089745,'Maria Nelly Hernandez Gomez','Aux Opraciones',2147483647,'mhernandez@gmail.com','MHERNANDEZ','Ghj_123');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 20:59:17
