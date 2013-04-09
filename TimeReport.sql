-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: TimeReport
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5.1

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
-- Table structure for table `PROYECTOS`
--

DROP TABLE IF EXISTS `PROYECTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROYECTOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(150) NOT NULL,
  `FE_INICIO` date NOT NULL,
  `FE_FIN` date DEFAULT NULL,
  `TIEMPO` time DEFAULT NULL,
  `NUM_TAREAS` int(11) DEFAULT '0',
  `CERRADO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROYECTOS`
--

LOCK TABLES `PROYECTOS` WRITE;
/*!40000 ALTER TABLE `PROYECTOS` DISABLE KEYS */;
INSERT INTO `PROYECTOS` VALUES (27,'Canciones SMA','2009-12-13',NULL,'00:28:02',8,0),(34,'Ruby','2009-12-13',NULL,'00:00:00',1,1),(29,'Tesis','2009-12-13',NULL,'01:30:00',2,0),(36,'Bateria','2009-12-14',NULL,'00:41:28',5,1),(37,'TimeReport','2009-12-14',NULL,'01:31:21',7,1),(38,'Leer','2009-12-15',NULL,'00:00:00',2,0),(61,'GtdMovil','2009-12-23',NULL,'00:00:00',0,0),(63,'ConceptMaker','2009-12-23',NULL,'03:52:45',10,1),(65,'Servlets','2009-12-28',NULL,'00:00:00',1,0);
/*!40000 ALTER TABLE `PROYECTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAREAS`
--

DROP TABLE IF EXISTS `TAREAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAREAS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(150) NOT NULL,
  `FE_INICIO` date DEFAULT NULL,
  `FE_FIN` date DEFAULT NULL,
  `TIEMPO` time DEFAULT NULL,
  `PROYECTO` varchar(150) NOT NULL,
  `COMENTARIO` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAREAS`
--

LOCK TABLES `TAREAS` WRITE;
/*!40000 ALTER TABLE `TAREAS` DISABLE KEYS */;
INSERT INTO `TAREAS` VALUES (66,'Rudimentos','2009-12-14',NULL,'00:42:28','Bateria',' '),(148,'Poner fecha de creacion a concepto','2009-12-23',NULL,'00:00:00','ConceptMaker',''),(58,'Cancion 1','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(149,'Editar concepto','2009-12-23',NULL,'02:01:38','ConceptMaker',''),(59,'Cancion 2','2009-12-14',NULL,'00:28:02','Canciones SMA',NULL),(60,'Cancion 3','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(61,'Cancion 4','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(62,'Cancion 5','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(63,'Cancion 6','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(64,'Cancion 7','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(65,'Cancion 8','2009-12-14',NULL,'00:00:00','Canciones SMA',NULL),(67,'Cover: Wake the dead','2009-12-14',NULL,'00:00:00','Bateria',NULL),(68,'Cover: Zero','2009-12-14',NULL,'00:00:00','Bateria',NULL),(146,'Doble pedal','2009-12-23',NULL,'00:00:00','Bateria',''),(116,'Comentarios de tareas en ToolTip','2009-12-19',NULL,'00:00:00','TimeReport','Poner los comentarios de las tareas en el toolTipText'),(132,'Banco de ritmos','2009-12-21',NULL,'00:00:00','Bateria',''),(150,'Organizar conceptos alfabeticamente','2009-12-28',NULL,'00:00:57','ConceptMaker',''),(76,'Icono en ventanas','2009-12-14',NULL,'00:40:30','TimeReport',NULL),(154,'Poner todo en una sola pantalla','2010-01-09',NULL,'00:35:08','ConceptMaker',''),(78,'OpenGL en win','2009-11-29','2009-12-14','01:30:00','Tesis','Configurar Visual Studio para trabajar con OpenGL'),(81,'Organizar tareas alfabeticamente','2009-12-14',NULL,'00:11:13','TimeReport',NULL),(145,'Think and Grow Rich','2009-12-22',NULL,'00:00:00','Leer',''),(135,'Dejar seleccionada la tarea al editar tiempo','2009-12-22',NULL,'00:12:24','TimeReport',''),(134,'Disminuir tiempo al eliminar intervalo','2009-12-22',NULL,'00:15:23','TimeReport',''),(139,'No terminar tiempo ya terminado','2009-12-22',NULL,'00:06:11','TimeReport',''),(140,'Actulizar nomTarea de tiempos','2009-12-22',NULL,'00:05:40','TimeReport',''),(152,'Tutorial','2009-12-28',NULL,'00:00:00','Servlets',''),(153,'Filtrar conceptos por letra','2009-12-28',NULL,'00:00:00','ConceptMaker','Que yo pueda filtrar los conceptos que, pej, empiezan por la letra A'),(155,'Eliminar conceptos al eliminar tema','2010-01-10',NULL,'00:11:30','ConceptMaker',''),(156,'Separar daos','2010-01-14',NULL,'00:14:45','ConceptMaker',''),(157,'Iconos en ventanas nueva/edicion','2010-01-15',NULL,'00:04:54','ConceptMaker',''),(158,'Hora en cambio de dia/tarde','2010-01-15',NULL,'00:00:00','TimeReport','Cuando cuando pasa de 12 del dia (o noche) a 1 (de la tarde o mañana) se produce un error, se pone una hora negativa.'),(159,'Elilminar conceptos','2010-01-15',NULL,'00:36:00','ConceptMaker',''),(160,'Editar al hacer doble click al concep','2010-01-15',NULL,'00:07:53','ConceptMaker',''),(162,'Por quien doblan las campanas','2010-01-16',NULL,'00:00:00','Leer',''),(169,'Pasar doc de victor a Latex','2010-01-16',NULL,'00:00:00','Tesis','');
/*!40000 ALTER TABLE `TAREAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TIEMPOS`
--

DROP TABLE IF EXISTS `TIEMPOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TIEMPOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FE_INICIO` datetime DEFAULT NULL,
  `FE_FIN` datetime DEFAULT NULL,
  `TIEMPO` time DEFAULT NULL,
  `TAREA` varchar(100) NOT NULL,
  `PROYECTO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`,`TAREA`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TIEMPOS`
--

LOCK TABLES `TIEMPOS` WRITE;
/*!40000 ALTER TABLE `TIEMPOS` DISABLE KEYS */;
INSERT INTO `TIEMPOS` VALUES (70,'2009-12-22 07:49:22','2009-12-22 07:55:02','00:05:40','Actulizar nomTarea de tiempos','TimeReport'),(57,'2009-12-22 07:17:06','2009-12-22 07:29:30','00:12:24','Dejar seleccionada la tarea al editar tiempo','TimeReport'),(84,'2009-12-22 09:49:58','2009-12-22 09:50:43','00:00:45','Icono en ventanas','TimeReport'),(69,'2009-12-22 07:40:54','2009-12-22 07:47:05','00:06:11','No terminar tiempo ya terminado','TimeReport'),(85,'2009-12-22 10:15:23','2009-12-22 10:55:08','00:39:45','Icono en ventanas','TimeReport'),(76,'2009-12-22 08:25:58','2009-12-22 08:28:03','00:02:05','Disminuir tiempo al eliminar intervalo','TimeReport'),(77,'2009-12-22 08:28:12','2009-12-22 08:32:15','00:04:03','Disminuir tiempo al eliminar intervalo','TimeReport'),(78,'2009-12-22 08:34:49','2009-12-22 08:44:04','00:09:15','Disminuir tiempo al eliminar intervalo','TimeReport'),(86,'2009-12-22 11:44:02','2009-12-23 12:02:25','00:18:23','Rudimentos','Bateria'),(94,'2010-01-13 06:21:24','2010-01-13 06:49:26','00:28:02','Cancion 2','Canciones SMA'),(93,NULL,NULL,NULL,'Tutorial','Servlets'),(90,'2009-12-23 09:49:04','2009-12-23 10:13:09','00:24:05','Rudimentos','Bateria'),(95,NULL,NULL,NULL,'Cancion 5','Canciones SMA'),(97,'2010-01-09 03:14:39','2010-01-09 03:49:47','00:35:08','Poner todo en una sola pantalla','ConceptMaker'),(98,'2010-01-10 04:10:59','2010-01-10 04:22:29','00:11:30','Eliminar conceptos al eliminar tema','ConceptMaker'),(100,'2010-01-15 12:11:01','2010-01-15 12:40:38','00:29:37','Editar concepto','ConceptMaker'),(101,'2010-01-14 11:54:46','2010-01-15 12:09:31','00:14:45','Separar daos','ConceptMaker'),(102,'2010-01-15 12:55:58','2010-01-15 01:48:06','00:58:08','Editar concepto','ConceptMaker'),(103,'2010-01-15 10:01:09','2010-01-15 10:35:02','00:33:53','Editar concepto','ConceptMaker'),(104,'2010-01-15 10:37:18','2010-01-15 11:13:18','00:36:00','Elilminar conceptos','ConceptMaker'),(105,'2010-01-16 06:38:19','2010-01-16 06:43:13','00:04:54','Iconos en ventanas nueva/edicion','ConceptMaker'),(112,'2010-01-16 07:07:39','2010-01-16 07:15:32','00:07:53','Editar al hacer doble click al concep','ConceptMaker'),(113,'2010-01-16 07:26:37','2010-01-16 07:27:34','00:00:57','Organizar conceptos alfabeticamente','ConceptMaker'),(128,'2010-01-16 11:38:46','2010-01-16 11:49:59','00:11:13','Organizar tareas alfabeticamente','TimeReport');
/*!40000 ALTER TABLE `TIEMPOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-02-15 14:35:25
