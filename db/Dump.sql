CREATE DATABASE  IF NOT EXISTS `noticias` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `noticias`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: noticias
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `contenido` text,
  `fecha` datetime DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Guerra en afganistan','Fabio Camacho ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a venenatis lorem. Sed dapibus odio id laoreet sodales. Fusce scelerisque sem at enim accumsan convallis. Nunc vehicula tempus sem, eu laoreet nisi semper quis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus purus pretium, scelerisque diam vel, laoreet ligula.\r\n\r\nNunc est orci, egestas quis congue a, auctor eget leo. In iaculis mauris dolor, id sodales nisi commodo sit amet. Fusce faucibus quam non neque mollis, nec iaculis lacus egestas. Donec ex ante, pharetra vel tempor vitae, mollis imperdiet ligula. Nulla facilisi. Cras sollicitudin nisl dui, id rhoncus ex maximus sed. Sed id mollis massa. Suspendisse venenatis, risus nec luctus ullamcorper, tellus dui ullamcorper massa, sed posuere nisi mauris sed erat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a venenatis lorem. Sed dapibus odio id laoreet sodales. Fusce scelerisque sem at enim accumsan convallis. Nunc vehicula tempus sem, eu laoreet nisi semper quis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus purus pretium, scelerisque diam vel, laoreet ligula. Nunc est orci,','2024-06-01 09:25:08','/images/1718407985749.jpg'),(5,'Guerra en Iran','Fabio Camacho','Accumsan tortor posuere ac ut consequat semper viverra nam. Massa massa ultricies mi quis hendrerit. Purus semper eget duis at tellus at urna condimentum mattis. Ut enim blandit volutpat maecenas. Sed felis eget velit aliquet. Mauris a diam maecenas sed enim. Est sit amet facilisis magna etiam tempor orci eu. Id semper risus in hendrerit gravida. Ultrices tincidunt arcu non sodales neque sodales ut etiam sit. Luctus venenatis lectus magna fringilla. Tellus elementum sagittis vitae et leo duis. Elit sed vulputate mi sit amet mauris commodo quis. Tempus quam pellentesque nec nam aliquam sem et tortor consequat. Posuere morbi leo urna molestie at elementum eu facilisis sed. Quam id leo in vitae turpis massa sed elementum. Lectus sit amet est placerat in egestas erat. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Accumsan sit amet nulla facilisi morbi. Placerat vestibulum lectus mauris ultrices eros. Mi eget mauris pharetra et ultrices neque ornare aenean euismod.','2024-06-14 23:20:52','/images/1718407991037.jpg'),(6,'Guerra en Mexico','Fabio Camacho','Morbi quis commodo odio aenean sed adipiscing diam donec adipiscing. Semper viverra nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis at erat pellentesque. A diam maecenas sed enim ut sem viverra aliquet eget. Vestibulum rhoncus est pellentesque elit ullamcorper. Libero enim sed faucibus turpis in eu mi bibendum. Et leo duis ut diam quam nulla porttitor massa id. Massa tincidunt dui ut ornare lectus sit amet. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Lacus vestibulum sed arcu non odio euismod lacinia at. Sit amet mattis vulputate enim nulla. Viverra suspendisse potenti nullam ac tortor vitae. Luctus venenatis lectus magna fringilla urna. Tellus cras adipiscing enim eu turpis egestas. Molestie nunc non blandit massa enim. Velit sed ullamcorper morbi tincidunt ornare massa eget. Nulla facilisi etiam dignissim diam quis enim. Eget mauris pharetra et ultrices. Pharetra vel turpis nunc eget lorem dolor sed viverra. Tortor posuere ac ut consequat semper viverra nam libero justo.','2024-06-14 23:22:13','/images/1718407996416.jpg');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 22:19:20
