-- MariaDB dump 10.19-11.1.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Vetements
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
-- Table structure for table `couleurs`
--

DROP TABLE IF EXISTS `couleurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couleurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couleurs`
--

LOCK TABLES `couleurs` WRITE;
/*!40000 ALTER TABLE `couleurs` DISABLE KEYS */;
INSERT INTO `couleurs` VALUES
(1,'Blanc'),
(2,'Noir'),
(3,'Gris'),
(4,'Bleu'),
(5,'Marron'),
(6,'Violet'),
(7,'Beige');
/*!40000 ALTER TABLE `couleurs` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(5,'New Balance'),
(6,'Reebok');
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tailles`
--

DROP TABLE IF EXISTS `tailles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tailles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tailles`
--

LOCK TABLES `tailles` WRITE;
/*!40000 ALTER TABLE `tailles` DISABLE KEYS */;
INSERT INTO `tailles` VALUES
(1,'XS'),
(2,'S'),
(3,'M'),
(4,'L'),
(5,'XL'),
(6,'XXL');
/*!40000 ALTER TABLE `tailles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesvetements`
--

DROP TABLE IF EXISTS `typesvetements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesvetements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesvetements`
--

LOCK TABLES `typesvetements` WRITE;
/*!40000 ALTER TABLE `typesvetements` DISABLE KEYS */;
INSERT INTO `typesvetements` VALUES
(1,'Pull'),
(2,'T-Shirt'),
(3,'Veste'),
(4,'Bas');
/*!40000 ALTER TABLE `typesvetements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vetements`
--

DROP TABLE IF EXISTS `vetements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vetements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `taille_id` int(11) NOT NULL,
  `marque_id` int(11) NOT NULL,
  `couleur_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vetements`
--

LOCK TABLES `vetements` WRITE;
/*!40000 ALTER TABLE `vetements` DISABLE KEYS */;
INSERT INTO `vetements` VALUES
(1,1,3,1,1,'Pull',49.99,'https://cdn-images.farfetch-contents.com/19/37/04/08/19370408_42611019_1000.jpg'),
(2,2,4,2,2,'T-shirt',19.99,'https://www.tradeinn.com/f/13991/139910446/puma-t-shirt-a-manches-courtes-ess-tape.jpg'),
(3,1,1,1,1,'Pull',49.99,'https://images.vestiairecollective.com/cdn-cgi/image/w=1246,q=70,f=auto,/produit/pullgiletsweat-nike-en-coton-blanc-31058015-1_2.jpg'),
(4,1,2,2,2,'Pull',49.99,'https://www.espace-des-marques.com/252941-EDMFormat/sweat-noir-homme-puma-essential.jpg'),
(5,1,3,3,3,'Pull',49.99,'https://i.etsystatic.com/21561537/r/il/0d248c/3477632835/il_570xN.3477632835_skex.jpg'),
(6,1,4,4,4,'Pull ',49.99,'https://img01.ztat.net/article/spp-media-p1/8043357d116845c69f620825a9aba994/b6d6dba152f74111a6ac3ea2a45c6a4f.jpg?imwidth=1800&filter=packshot'),
(7,1,5,5,5,'Pull ',49.99,'https://www.futbolemotion.com/imagesarticulos/202358/750/sudadera-new-balance-essentials-stacked-logo-french-terry-crewneck-mujer-maroon-0.webp'),
(8,1,6,6,6,'Pull ',49.99,'https://cdn.deporvillage.com/cdn-cgi/image/h=576,w=576,dpr=2,f=auto,q=75,fit=contain,background=white/product/re-hi0628_001.jpg'),
(9,2,1,1,1,'T-shirt classique',19.99,'https://img.sport2000.fr/A5Bbpa5O9rzy5MAkKsR4F5shqixmu1C11ouYQw370xA/resize:fit/aHR0cHM6Ly93d3cu/c3BvcnQyMDAwLmZy/L21lZGlhL2ltYWdl/L2FyNDk5Ny0xMDEt/c3BvcnQyMDAwL3dl/Yi1hcjQ5OTctMTAx/LTAzLmpwZw.webp'),
(10,2,2,2,2,'T-shirt classique',19.99,'https://www.espace-des-marques.com/301946-large_default/t-shirt-noirblanc-garcon-puma-pp-tee.jpg'),
(11,2,3,3,3,'T-shirt classique',19.99,'https://m.media-amazon.com/images/I/41GbvIpQUDL.jpg'),
(12,2,4,4,4,'T-shirt classique',19.99,'https://img01.ztat.net/article/spp-media-p1/88ca2615248d432e85ccec3e59d54031/00da67236c0d4781881f60595a2ed9cf.jpg?imwidth=1800&filter=packshot'),
(13,2,5,5,5,'T-shirt classique',19.99,'https://cdn.mall.adeptmind.ai/https%3A%2F%2Fwww.courir.com%2Fon%2Fdemandware.static%2F-%2FSites-master-catalog-courir%2Fdefault%2Fdw74b8205b%2Fimages%2Fhi-res%2F001498842_101.png_medium.jpg'),
(14,2,6,6,6,'T-shirt classique',19.99,'https://images.reebok.eu/reebok-tee-shirt-dc-x-reebok-logo_19726914_45329513_2048.jpg?c=1'),
(15,3,1,1,1,'gilet ',99.99,'https://www.padel-point.fr/dw/image/v2/BBDP_PRD/on/demandware.static/-/Sites-master-catalog/default/dw9498c8d4/images/004/463/57102000_000.jpg?q=80&sw=2000'),
(16,3,2,2,2,'gilet',99.99,'https://www.lookofsport.com/media/catalog/product/cache/1/image/1500x/c328707a3c432302e119a0cb3e816d26/5/8/583228_01_1.jpg'),
(17,3,3,3,3,'gilet',99.99,'https://assets.adidas.com/images/w_600,f_auto,q_auto/105b6c4d689144daa897ac8400d615e6_9366/Veste_Tito_21_All-Weather_Gris_GM7389_01_laydown.jpg'),
(18,3,4,4,4,'gilet',99.99,'https://www.cdiscount.com/pdt2/8/0/1/1/700x700/mp10488801/rw/nike-veste-a-capuche-jordan-flight-fleece-823064-4.jpg'),
(19,3,5,5,5,'gilet',99.99,'https://cdn.afew-store.com/assets/36/367627/1200/new-balance-athletics-70s-run-track-jacket-rich-oak-mj23550_rok-apparel%20%3E%20jackets-packshots-0.jpg'),
(20,3,6,6,6,'gilet',99.99,'https://www.gabbavintage.com/wp-content/uploads/2021/05/Veste-Windbreaker-Vintage-Reebok-Vintage-annees-90-1.jpg'),
(21,4,1,1,1,'Bas sport',29.99,'https://www.ekinsport.com/media/catalog/product/cache/173ef9ab000c6667578594f63bf9da15/c/z/cz7823-100_bas-jogging-nike-sportswear-repeat-pour-homme-cz7823-100_01_1.jpg'),
(22,4,2,2,2,'Bas sport',29.99,'https://thumblr.uniid.it/product/172778/c255cf06ae49.jpg'),
(23,4,3,3,3,'Bas sport',29.99,'https://thumblr.uniid.it/product/214994/19199b124b02.jpg'),
(24,4,4,4,4,'Bas sport',29.99,'https://www.manelsanchez.fr/uploads/media/images/547662-474.jpg'),
(25,4,5,5,5,'Bas sport',29.99,'https://cdn.fashiola.fr/L778761854/elastic-cuff-pants.jpg'),
(26,4,6,6,6,'Bas sport',29.99,'https://www.espace-des-marques.com/218611-large_default/jogging-rose-fille-reebok-yarn-die-jogger.jpg'),
(27,4,2,3,3,'Bas sport',29.99,'https://assets.adidas.com/images/w_600,f_auto,q_auto/13c4b705c33040988120a8240021b201_9366/Pantalon_de_survetement_Core_18_Gris_CV3752_01_laydown.jpg');
/*!40000 ALTER TABLE `vetements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-22 16:45:29
