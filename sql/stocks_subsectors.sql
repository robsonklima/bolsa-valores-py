-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stocks
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `subsectors`
--

DROP TABLE IF EXISTS `subsectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subsectors` (
  `subsector_id` int(11) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`subsector_id`),
  KEY `fk_sectors_subsectors_idx` (`sector_id`),
  CONSTRAINT `fk_sectors_subsectors` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`sector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsectors`
--

LOCK TABLES `subsectors` WRITE;
/*!40000 ALTER TABLE `subsectors` DISABLE KEYS */;
INSERT INTO `subsectors` VALUES (1,1,'Petróleo, Gás e Biocombustíveis'),(2,2,'Mineração'),(3,2,'Siderurgia e Metalurgia'),(4,2,'Químicos'),(5,2,'Madeira e Papel'),(6,2,'Embalagens'),(7,2,'Materiais Diversos'),(8,3,'Construção e Engenharia'),(9,3,'Material de Transporte'),(10,3,'Equipamentos Elétricos'),(11,3,'Máquinas e Equipamentos'),(12,3,'Transporte'),(13,3,'Serviços Diversos'),(14,5,'Comércio'),(15,4,'Agropecuária'),(16,4,'Alimentos Processados'),(17,4,'Bebidas'),(18,4,'Produtos de Uso Pessoal e de Limpeza'),(19,7,'Comércio e Distribuição'),(20,5,'Construção Civil'),(21,5,'Tecidos, Vestuário e Calçados'),(22,5,'Utilidades Domésticas'),(23,5,'Automóveis e Motocicletas'),(24,5,'Mídia'),(25,5,'Hoteis e Restaurantes'),(26,5,'Viagens e Lazer'),(27,5,'Diversos'),(28,3,'Comércio'),(29,7,'Medicamentos e Outros Produtos'),(30,7,'Serviços Médico - Hospitalares,'),(31,7,'Análises e Diagnósticos'),(32,7,'Equipamentos'),(34,8,'Computadores e Equipamentos'),(35,8,'Programas e Serviços'),(36,9,'Telecomunicações'),(37,10,'Energia Elétrica'),(38,10,'Água e Saneamento'),(39,10,'Gás'),(40,11,'Intermediários Financeiros'),(41,11,'Securitizadoras de Recebíveis'),(42,11,'Serviços Financeiros Diversos'),(43,11,'Previdência e Seguros'),(44,11,'Exploração de Imóveis'),(45,11,'Holdings Diversificadas'),(46,11,'Outros Títulos'),(47,13,'Outros');
/*!40000 ALTER TABLE `subsectors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-26 18:20:18
