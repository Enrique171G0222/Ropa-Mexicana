-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ropa_mexicana
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Erick Salazar','Salazar422','SARE');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_afiliada`
--

DROP TABLE IF EXISTS `marca_afiliada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca_afiliada` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Marca` varchar(100) NOT NULL,
  `Contrasena` varchar(200) NOT NULL,
  `ClaveAct` int(10) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_afiliada`
--

LOCK TABLES `marca_afiliada` WRITE;
/*!40000 ALTER TABLE `marca_afiliada` DISABLE KEYS */;
INSERT INTO `marca_afiliada` VALUES (1,'Raúl Martínez','171G0250@rcarbonifera.tecnm.mx','Obzeno','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',3111,''),(3,'Carlos Salazar','TallerElCampeon@outlook.com','Máscara de látex','8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414',2622,''),(4,'Luis Antonio Aguilar Garza','LuisAntonio@outlook.com','Cuidado con el perro','8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414',NULL,'');
/*!40000 ALTER TABLE `marca_afiliada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Descripción` varchar(200) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Material` varchar(80) NOT NULL,
  `Hipervinculo` varchar(200) NOT NULL,
  `IdMarcaAfi` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `fk_IdMarca_MarcaAfi_idx` (`IdMarcaAfi`),
  CONSTRAINT `FK_IdMarcaAfiliada_IdMarcai` FOREIGN KEY (`IdMarcaAfi`) REFERENCES `marca_afiliada` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (3,'Equipo 7',298,'Playera cuello redondo para dama','Negro','100% algodón','https://mascaradelatex.com/collections/playeras-mujer/products/playera-para-mujer-equipo-7',3),(4,'Caution i´m hot',99,'Playera cuello redondo','rojo','100% algodón','https://www.cuidadoconelperro.com.mx/mx/hombre/playeras/playera-caution-i-am-hot/30789',4),(5,'Arbok kai',250,'Playera cuello redondo para caballero','Negro','100% algodón','https://www.obzeno.com/product-page/arbok-kai',1),(6,'Invasor Zim',249,'Playera cuello redondo para caballero','Morado','100% algodón','https://www.obzeno.com/product-page/invasor-zim',1);
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

-- Dump completed on 2021-01-01 20:21:58
