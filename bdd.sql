-- MariaDB dump 10.19-11.1.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Sneakers
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
INSERT INTO `marques` VALUES
(1,'Nike'),
(2,'Puma'),
(3,'Adidas'),
(4,'Jordan'),
(5,'New Balance');
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeles`
--

DROP TABLE IF EXISTS `modeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modeles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `marque_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `attribut1` varchar(50) DEFAULT NULL,
  `attribut2` varchar(50) DEFAULT NULL,
  `attribut3` varchar(50) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marque_id` (`marque_id`),
  CONSTRAINT `modeles_ibfk_1` FOREIGN KEY (`marque_id`) REFERENCES `marques` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeles`
--

LOCK TABLES `modeles` WRITE;
/*!40000 ALTER TABLE `modeles` DISABLE KEYS */;
INSERT INTO `modeles` VALUES
(1,'Presto',1,'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/071b624e-3ff8-4415-beb0-bea9bc3f8364/chaussure-air-presto-pour-t7rgcs.png','Couleur: blanche','Tailles: 40-45','Type: Running',129.99),
(2,'Air force 1 ',1,'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2eff461f-f3ac-4285-9c6a-2f22173aac42/custom-nike-air-force-1-low-by-you.png','Couleur: bleu-gris','Tailles: 39-46','Type: Basket',119.99),
(3,'Dunk low',1,'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/bb03ed2f-8f81-4e33-848b-462bac16ed6f/chaussure-dunk-low-pour-X0wRQv.png','Couleur: beige','Tailles: 38-44','Type: Tennis',139.99),
(4,'Wired run',2,'https://img.sport2000.fr/7ja20HxtSyqw1jIe6MkUzd5OI5RSVoCb-SIaqIxR3gw/resize:fit/aHR0cHM6Ly93d3cu/c3BvcnQyMDAwLmZy/L21lZGlhL2ltYWdl/LzM3MzAxNS0wMS1z/cG9ydDIwMDAvd2Vi/LTM3MzAxNS0wMS1w/LmpwZw.webp','Couleur: noir','Tailles: 41-47','Type: running',99.99),
(5,'Kaia',2,'https://media.atmosferasport.es/315898-large_default/chaussures-puma-kaia-20-pour-femmes.jpg','Couleur: blanche','Tailles: 35-42','Type: casual',60.99),
(6,'X ray',2,'https://img.modivo.cloud/product(4/f/1/2/4f12172b2482d31c88ef0d89d7e57dee88dca846_10_0000301615668_pl.jpg,jpg)/puma-sneakers-porsche-pl-x-ray-speed-307549-04-jaune.jpg','Couleur: jaune','Tailles: 38-46','Type: Sport',89.99),
(7,'Stan smith',3,'https://www.monpiedceheros.fr/6767-cover_default/adidas-stan-smith.jpg','Couleur: blanche verte','Tailles: 39-46','Type: Basket',129.99),
(8,'Yeezi boost 350',3,'https://heatlab-paris.com/cdn/shop/files/Adidas-Yeezy-Boost-350-V2-Zebra-Product-1_jpg.webp?v=1686840001&width=1024','Couleur: zebra','Tailles: 38-44','Type: Basket',349.99),
(9,'Oozwego',3,'https://images.stockx.com/images/adidas-Ozweego-TR-Hi-Res-Red.jpg?fit=fill&bg=FFFFFF&w=480&h=320&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1642460413&q=60','Couleur: Rouge','Tailles: 40-45','Type: Running',139.99),
(10,'Jordan 3',4,'https://cdn.lesitedelasneaker.com/wp-content/images/2022/05/air-jordan-3-white-cement-reimagined-dn3707-100-pic301.jpeg','Couleur: blanc-gris','Tailles: 40-45','Type: Basket',209.99),
(11,'Jordan 1 low travis scott',4,'https://images.stockx.com/images/Air-Jordan-1-Retro-Low-OG-SP-Travis-Scott-Reverse-Mocha_V2-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1659033979','Couleur: marron','Tailles: 39-46','Type: basket',399.99),
(12,'Jordan 4',4,'https://cdn.shopify.com/s/files/1/0496/4325/8009/products/baskets-air-jordan-4-retro-sb-pine-green-pour-homme-et-femme-disponible-sur-kikikickz-905868.jpg?v=1686635862','Couleur: blanc-verte','Tailles: 38-44','Type: Basket',419.99),
(13,'2002R protection pack',5,'https://cdn.lesitedelasneaker.com/wp-content/images/2022/03/preview-new-balance-2002r-purple-lavender-protection-pack-m2002rdi-banner.jpeg','Couleur: violet','Tailles: 38-46','Type: Running',249.99),
(14,'9060',5,'https://i8.amplience.net/i/jpl/jd_663151_a?qlt=92','Couleur: rose','Tailles: 40-45','Type: Sport',129.99),
(15,'1906r',5,'https://images.stockx.com/images/New-Balance-1906R-Cordura-Pocket-Wheat-Product.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1680768227&q=75','Couleur: orange','Tailles: 39-46','Type: basket',234.99);
/*!40000 ALTER TABLE `modeles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-20  9:10:59
