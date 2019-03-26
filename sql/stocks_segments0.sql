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
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `segments` (
  `segment_id` int(11) NOT NULL AUTO_INCREMENT,
  `subsector_id` int(11) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`segment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES (1,1,'Exploração, Refino e Distribuição'),(2,1,'Equipamentos e Serviços'),(3,2,'Minerais Metálicos'),(4,3,'Siderurgia'),(5,3,'Artefatos de Ferro e Aço'),(6,3,'Artefatos de Cobre'),(7,4,'Petroquímicos'),(8,4,'Fertilizantes e Defensivos'),(9,4,'Químicos Diversos'),(10,5,'Madeira'),(11,5,'Papel e Celulose'),(12,6,'Embalagens'),(13,7,'Materiais Diversos'),(14,8,'Produtos para Construção'),(15,8,'Construção Pesada'),(16,8,'Engenharia Consultiva'),(17,13,'Serviços Diversos'),(18,9,'Material Aeronáutico e de Defesa'),(19,9,'Material Rodoviário'),(20,10,'Equipamentos Elétricos'),(21,11,'Motores, Compressores e Outros'),(22,11,'Máq. e Equip. Industriais'),(23,11,'Máq. e Equip. Construção e Agrícolas'),(24,11,'Armas e Munições'),(25,12,'Transporte Aéreo'),(26,12,'Transporte Ferroviário'),(27,12,'Transporte Hidroviário'),(28,12,'Transporte Rodoviário'),(29,12,'Exploração de Rodovias'),(30,12,'Serviços de Apoio e Armazenagem'),(31,8,'Serviços Diversos'),(32,14,'Material de Transporte'),(33,15,'Agricultura'),(34,16,'Açucar e Alcool'),(35,16,'Carnes e Derivados'),(36,16,'Alimentos Diversos'),(37,17,'Cervejas e Refrigerantes'),(38,18,'Produtos de Uso Pessoal'),(39,18,'Produtos de Limpeza'),(40,19,'Alimentos'),(41,20,'Incorporações'),(42,21,'Fios e Tecidos'),(43,21,'Vestuário'),(44,21,'Calçados'),(45,21,'Acessórios'),(46,14,'Eletrodomésticos'),(47,22,'Móveis'),(48,22,'Utensílios Domésticos'),(49,23,'Automóveis e Motocicletas'),(50,24,'Produção e Difusão de Filmes e Programas'),(51,25,'Hotelaria'),(52,25,'Restaurante e Similares'),(53,26,'Bicicletas'),(54,26,'Brinquedos e Jogos'),(55,26,'Produção de Eventos e Shows'),(56,26,'Viagens e Turismo'),(57,26,'Atividades Esportivas'),(58,27,'Serviços Educacionais'),(59,27,'Aluguel de carros'),(60,27,'Programas de Fidelização'),(61,14,'Tecidos, Vestuário e Calçados'),(62,22,'Eletrodomésticos'),(63,14,'Produtos Diversos'),(64,19,'Medicamentos e Outros Produtos'),(65,30,'Serviços Médico - Hospitalares,'),(66,31,'Análises e Diagnósticos'),(67,32,'Equipamentos'),(68,29,'Medicamentos e Outros Produtos'),(69,34,'Computadores e Equipamentos'),(70,35,'Programas e Serviços'),(71,36,'Telecomunicações'),(72,37,'Energia Elétrica'),(73,38,'Água e Saneamento'),(74,39,'Gás'),(75,40,'Bancos'),(76,40,'Soc. Crédito e Financiamento'),(77,40,'Soc. Arrendamento Mercantil'),(78,41,'Securitizadoras de Recebíveis'),(79,42,'Gestão de Recursos e Investimentos'),(80,42,'Serviços Financeiros Diversos'),(81,43,'Seguradoras'),(82,43,'Corretoras de Seguros'),(83,44,'Exploração de Imóveis'),(84,44,'Intermediação Imobiliária'),(85,45,'Holdings Diversificadas'),(86,46,'Outros Títulos'),(87,47,'Outros');
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-26 16:13:09
