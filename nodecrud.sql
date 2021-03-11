CREATE DATABASE  IF NOT EXISTS `ordercrud` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ordercrud`;
-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: ordercrud
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `frete` decimal(10,2) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `itens` varchar(500) NOT NULL,
  `itens_sku` varchar(45) NOT NULL,
  `itens_description` varchar(45) NOT NULL,
  `itens_value` decimal(10,2) NOT NULL,
  `itens_qtde` int(11) NOT NULL,
  `created` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (4,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(5,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(6,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(7,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(8,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(9,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(10,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(11,'André Luiz','andre@webajax.com.br','22222222222','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(12,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(13,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(14,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(15,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(16,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(17,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(18,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(19,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(20,'André Luiz','andre@webajax.com.br','25093230830','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(21,'André Luiz','andre@webajax.com.br','25093230830','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(22,'André Luiz','andre@webajax.com.br','25093230830','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(23,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(24,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(25,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(26,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(27,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(28,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(29,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(30,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(31,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(32,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(33,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(34,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(35,'','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(36,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(37,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(38,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(39,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(40,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(41,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(42,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(43,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(44,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(45,'André Luiz','andre@webajax.com.br','25093230839','121802',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(46,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(47,'André Luiz','andre@webajax.com.br[::]','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(48,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(49,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(50,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(51,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(52,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(53,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(54,'André Luiz','andre@weba]jax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(55,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03'),(56,'André Luiz','andre@webajax.com.br','25093230839','1218020',10.00,10.00,'{item1,item2}','11111111','produto1',10.00,1,'2021-03-03');
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 21:52:23
