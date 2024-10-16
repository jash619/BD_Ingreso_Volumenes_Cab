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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(45) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `idproducto_UNIQUE` (`id_producto`),
  KEY `categoria_idx` (`categoria_id`),
  CONSTRAINT `categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_productos` (`idcategoria_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Aguacate Sanvicente',1),(2,'Aguacate Hass',1),(3,'Aguacate Papelillo',1),(4,'Banano Criollo',1),(5,'Banano Uraba',1),(6,'Badea',1),(7,'Borojo',1),(8,'Ciruea Forby',1),(9,'Ciruela Criolla',1),(10,'Curuba',1),(11,'Durazno',1),(12,'Fresa',1),(13,'Guanabana',1),(14,'Guayaba Pera',1),(15,'Limon Tahiti',1),(16,'Limon Comun',1),(17,'Limon Mandarino',1),(18,'Lulo Criollo',1),(19,'Mandarina',1),(20,'Maracuya',1),(21,'Mango Tommy',1),(22,'Mora',1),(23,'Naranja Valencia',1),(24,'Papaya Maradol',1),(25,'Patilla',1),(26,'Piña Golden',1),(27,'Tomate De Arbol',1),(28,'Uva Isabela',1),(29,'Arveja',2),(30,'Ahuyama',2),(31,'Ajo Criollo',2),(32,'Cebolla Cabezona Blanca',2),(33,'Cebolla Cabezona Roja',2),(34,'Cebolla Junca Berlin',2),(35,'Frijol Verde',2),(36,'Habichuela',2),(37,'Pepino Cohombreo',2),(38,'Pimenton',2),(39,'Tomate Rio Grande',2),(40,'Tomate Milano',2),(41,'Remolacha',2),(42,'Repollo',2),(43,'Zanahoria',2),(44,'Mazorca',2),(45,'Apio Arracacha',3),(46,'Papa Amarilla',3),(47,'Papa Pastusa',3),(48,'Papa Unica',3),(49,'Yuca Saravena',3),(50,'Yuca Costeña',3),(51,'Yuca Yondo',3),(52,'Platano Saravena',3),(53,'Platano Llanero',3),(54,'Platano Quindiano',3),(55,'Apio en Rama',3),(56,'Brocoli',3),(57,'Espinacas',3),(58,'Cilantro',3),(59,'Lechuga',3),(60,'Perejil',3),(61,'Bagre Criollo',4),(62,'Bagre Saravena',4),(63,'Cachama',4),(64,'Mojarra',4),(65,'Arroz Excelso',5),(66,'Garbanzo Importado',5),(67,'Panela Morena',5),(68,'Panela Blanca',5),(69,'Azucar Refinada',5),(70,'Avena',5),(71,'Aceite',5),(72,'Harina De Trigo',5),(73,'Sal Yodada',5);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 18:31:06
