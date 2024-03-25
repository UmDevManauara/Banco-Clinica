-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `estagiario`
--

DROP TABLE IF EXISTS `estagiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estagiario` (
  `Nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(11) NOT NULL,
  `Endereco` varchar(150) DEFAULT NULL,
  `Telefone` varchar(9) DEFAULT NULL,
  `RA` varchar(7) DEFAULT NULL,
  `TipoEstagio` int(11) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estagiario`
--

LOCK TABLES `estagiario` WRITE;
/*!40000 ALTER TABLE `estagiario` DISABLE KEYS */;
INSERT INTO `estagiario` VALUES ('Luisa Souza Martins','00000000000','Rua 11','929111111','',NULL),('Paula','55555555555','Rua 11','000000000','5156444',0),('sdada','asda','asdasd','asdasd','sadsaad',0),('sadasd','sadasd','dsfdsfbkh','bkjjb','kjbjbkj',5);
/*!40000 ALTER TABLE `estagiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Dia` date DEFAULT NULL,
  `sessoes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Nascimento` date NOT NULL,
  `Telefone` varchar(9) NOT NULL,
  `Endereço` varchar(150) NOT NULL,
  `Responsavel` varchar(100) DEFAULT NULL,
  `Observações` text DEFAULT NULL,
  `Genero` text DEFAULT NULL,
  PRIMARY KEY (`Endereço`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES ('00000000000','Lucas Lima Lopes ','0000-00-00','929999999','Rua 10','Ana Paula','','0'),('01236546546','Pedro','0000-00-00','546565465','Rua 4','','sadadas',NULL),('56566565','Nome','0000-00-00','646566565','Rua Rua','','sadaads',NULL),('6546565','Carlos','0000-00-00','51656565','sadas','sadassd','sdasdasda','MASCULINO'),('5','nome','0000-00-00','sadasd','sadasd','sadasda','sadda',NULL),('46545645','Carla','0000-00-00','656556465','sadasdsa','saasd','sadas',''),('7777777777','Maria','0000-00-00','999999999','sdasdasd','sadsaads','sadas','FEMININO');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psicologos`
--

DROP TABLE IF EXISTS `psicologos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psicologos` (
  `Nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(11) NOT NULL,
  `Telefone` varchar(9) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CRP` varchar(100) NOT NULL,
  `TipoEstagio` int(11) DEFAULT NULL,
  `Funcional` varchar(15) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psicologos`
--

LOCK TABLES `psicologos` WRITE;
/*!40000 ALTER TABLE `psicologos` DISABLE KEYS */;
INSERT INTO `psicologos` VALUES ('Marcus Andrade Fonte','22222222222','929222222','marcus@gmail.com','11111111',0,'Funcionando');
/*!40000 ALTER TABLE `psicologos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessoes`
--

DROP TABLE IF EXISTS `sessoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessoes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Dia` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `validade` varchar(8) DEFAULT NULL,
  `StatusPaciente` text DEFAULT NULL,
  `Observacoes` text DEFAULT NULL,
  `cpf_paciente` varchar(11) DEFAULT NULL,
  `crp_psicologo` int(11) DEFAULT NULL,
  `ra_aluno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessoes`
--

LOCK TABLES `sessoes` WRITE;
/*!40000 ALTER TABLE `sessoes` DISABLE KEYS */;
INSERT INTO `sessoes` VALUES (1,'2024-05-10','15:30:00','2025','','saddasda','5165654664',2147483647,'5465656546'),(2,'2025-07-16','10:30:00','2027','','aaaaaaaaaaaaaaaaa','11111111111',2147483647,'1111111111'),(3,'0000-00-00','05:59:00','654654','ATIVO','adssadaa','654465',564655,'564654');
/*!40000 ALTER TABLE `sessoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17 17:20:26
