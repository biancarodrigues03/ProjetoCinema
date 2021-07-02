-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: backup_cinema
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Current Database: `backup_cinema`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `backup_cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `backup_cinema`;

--
-- Table structure for table `bkp_cinema`
--

DROP TABLE IF EXISTS `bkp_cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_cinema` (
  `IDCINEMA` int NOT NULL AUTO_INCREMENT,
  `CNPJ` varchar(45) NOT NULL,
  `RAZAOSOCIAL` varchar(100) NOT NULL,
  `NOMEFANTASIA` varchar(45) NOT NULL,
  `CAPACIDADE` int NOT NULL,
  PRIMARY KEY (`IDCINEMA`),
  UNIQUE KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_cinema`
--

LOCK TABLES `bkp_cinema` WRITE;
/*!40000 ALTER TABLE `bkp_cinema` DISABLE KEYS */;
INSERT INTO `bkp_cinema` VALUES (1,'00.779.721/0001-41','CINEMARK BRASIL S.A.','Cinemark Brasil',2);
/*!40000 ALTER TABLE `bkp_cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_cliente`
--

DROP TABLE IF EXISTS `bkp_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_cliente` (
  `IDCLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOMECLIENTE` varchar(45) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `SEXO` enum('M','F') DEFAULT NULL,
  `DATANASC` date DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  UNIQUE KEY `CPF` (`CPF`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_cliente`
--

LOCK TABLES `bkp_cliente` WRITE;
/*!40000 ALTER TABLE `bkp_cliente` DISABLE KEYS */;
INSERT INTO `bkp_cliente` VALUES (1,'BIANCA RODRIGUES','256.698.789-92','F','1999-10-12',NULL),(2,'ALEF ARAUJO','369.958.852-15','M','1997-07-10',NULL),(3,'RAFAEL VICTOR','958.852.752-95','M','2009-06-04',NULL),(4,'YARA MARQUES','854.852.456-95','F','1998-09-20',NULL),(5,'BEATRIZ ARAUJO','935.654.123-98','F','1995-08-08',NULL),(6,'GEOVANNA HELOISA','958.947.852-15','F','2018-06-10',NULL),(7,'HAILTON SOUZA','958.741.236-15','M','1982-12-18',NULL),(8,'SARAH LOHANNI','952.632.854-78','F','1997-07-10',NULL),(9,'GABRIEL OLIVEIRA','958.958.852-15','M','1997-07-10',NULL),(10,'FRANCISCO NETO','523.958.852-15','M','1997-07-10',NULL),(11,'THAIS RODRIGUES','123.958.852-15','F','1997-07-10',NULL),(12,'DANIELY RODRIGUES','456.958.852-15','F','1997-07-10',NULL),(13,'YASMIN ARAUJO','789.958.852-15','F','1997-07-10',NULL),(14,'JANAINA SANTOS','987.958.852-15','F','1997-07-10',NULL),(15,'UELLEN SANTOS','654.958.852-15','F','1997-07-10',NULL),(16,'ANA KEYLA','321.958.852-15','F','1997-07-10',NULL),(17,'MARCOS CARVALHO','369.123.852-15','M','1997-07-10',NULL),(18,'DEILTON RODRIGUES','369.456.852-15','M','1997-07-10',NULL),(19,'GABRIEL RODRIGUES','369.789.852-15','M','1997-07-10',NULL),(20,'MARCOS PAULO','369.987.852-15','M','1997-07-10',NULL);
/*!40000 ALTER TABLE `bkp_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_endereco`
--

DROP TABLE IF EXISTS `bkp_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_endereco` (
  `IDENDERECO` int NOT NULL AUTO_INCREMENT,
  `LOGRADOURO` varchar(45) DEFAULT NULL,
  `BAIRRO` varchar(45) DEFAULT NULL,
  `CIDADE` varchar(45) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_FUNCIONARIO` int DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_endereco`
--

LOCK TABLES `bkp_endereco` WRITE;
/*!40000 ALTER TABLE `bkp_endereco` DISABLE KEYS */;
INSERT INTO `bkp_endereco` VALUES (1,'QUADRA 56 LOTE 06','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900442',NULL,2,NULL),(2,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,3,NULL),(3,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,4,NULL),(4,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,5,NULL),(5,'QS 52 LOTE 06','TAGUATINGA','BRASÍLIA','DF','7526987',1,NULL,NULL),(6,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,1),(7,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,2),(8,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,NULL,3),(9,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,4),(10,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,5),(11,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,NULL,6),(12,'QR 414 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320007',NULL,NULL,7),(13,'QUADRA 156 LOTE 14','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72985258',NULL,NULL,8),(14,'QS 12 LOTE 20','RIACHI FUNDO I','BRASÍLIA','DF','7512698',NULL,NULL,9),(15,'QNP 27 CONJUNTO 09 CASA 23','CEILANDIA NORTE','BRASÍLIA','DF','72386504',NULL,NULL,10),(16,'QNL 24 LOTE 09','CHAPARRAL','BRASÍLIA','DF','7270958',NULL,NULL,11),(17,'QSA 124 LOTE 48','TAGUATINGA','BRASÍLIA','DF','7416698',NULL,NULL,12),(18,'QR 502 CONJUNTO 15 CASA 23','SAMAMBAIA SUL','BRASÍLIA','DF','75849604',NULL,NULL,13),(19,'QUADRA 185 LOTE 09','RECANTO DAS EMAS','BRASÍLIA','DF','72958741',NULL,NULL,14),(20,'QNP 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7598698',NULL,NULL,15),(21,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,16),(22,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,17),(23,'QS 85 LOTE 20','AGUAS CLARAS','BRASÍLIA','DF','7485968',NULL,NULL,18),(24,'QI 58 CASA 23','GUARA','BRASÍLIA','DF','95852144',NULL,NULL,19),(25,'QUADRA 16 LOTE 18','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72852158',NULL,NULL,20);
/*!40000 ALTER TABLE `bkp_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_filme`
--

DROP TABLE IF EXISTS `bkp_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_filme` (
  `IDFILME` int NOT NULL AUTO_INCREMENT,
  `TITULOFILME` varchar(45) NOT NULL,
  `GENEROFILME` varchar(45) NOT NULL,
  `DESCFILME` varchar(100) NOT NULL,
  `CLASSIFICACAOFILME` varchar(20) NOT NULL,
  `DURACAOFILME` varchar(10) NOT NULL,
  `ID_INGRESSO` int DEFAULT NULL,
  `ID_SESSAO` int DEFAULT NULL,
  PRIMARY KEY (`IDFILME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_filme`
--

LOCK TABLES `bkp_filme` WRITE;
/*!40000 ALTER TABLE `bkp_filme` DISABLE KEYS */;
INSERT INTO `bkp_filme` VALUES (1,'A VIÚVA DAS SOMBRAS','TERROR','CONTA A HIST DE UM GRUPO QUE ENTRA EM UMA FLORESTA P/ RESGATAR UM GAROTO DESAPARECIDO.','14 ANOS','85 MIN',2,3),(2,'GODZILLA VS KONG','AÇÃO','LENDAS ENTRAM EM ROTA DE COLISÃO EM GODZILLA VS. KONG.','12 ANOS','110 MIN',2,4),(3,'GODZILLA VS KONG','AÇÃO','LENDAS ENTRAM EM ROTA DE COLISÃO EM GODZILLA VS. KONG.','12 ANOS','110 MIN',4,5),(4,'O AUTO DA BOA MENTIRA','COMÉDIA','DIZEM QUE A MENTIRA TEM PERNA CURTA. SE ISSO É VERDADE, A BICHINHA CORRE RÁPIDO, VIU!','12 ANOS','100 MIN',2,6),(5,'TOM E JERRY','ANIMAÇÃO','UMA DAS RIVALIDADES MAIS AMADAS DA HISTÓRIA A BATALHA DE GATO E RATO','LIVRE','100 MIN',3,3);
/*!40000 ALTER TABLE `bkp_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_funcionario`
--

DROP TABLE IF EXISTS `bkp_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_funcionario` (
  `IDFUNCIONARIO` int NOT NULL AUTO_INCREMENT,
  `MATFUNCIONARIO` varchar(45) NOT NULL,
  `NOMEFUNCIONARIO` varchar(45) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  PRIMARY KEY (`IDFUNCIONARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_funcionario`
--

LOCK TABLES `bkp_funcionario` WRITE;
/*!40000 ALTER TABLE `bkp_funcionario` DISABLE KEYS */;
INSERT INTO `bkp_funcionario` VALUES (1,'20210258','MARCELO PEREIRA',1,1),(2,'20200269','JACQUELINE RODRIGUES',3,1),(3,'20210136','BRENDA CAMPOS',5,1),(4,'20195296','JHONATAN GUILHERME',6,1);
/*!40000 ALTER TABLE `bkp_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_ingresso`
--

DROP TABLE IF EXISTS `bkp_ingresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_ingresso` (
  `IDINGRESSO` int NOT NULL AUTO_INCREMENT,
  `TIPOINGRESSO` enum('2D','3D','XD','D-BOX') DEFAULT NULL,
  `VALORINGRESSO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IDINGRESSO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_ingresso`
--

LOCK TABLES `bkp_ingresso` WRITE;
/*!40000 ALTER TABLE `bkp_ingresso` DISABLE KEYS */;
INSERT INTO `bkp_ingresso` VALUES (1,'2D',24.00),(2,'3D',26.00),(3,'XD',32.00),(4,'D-BOX',34.00);
/*!40000 ALTER TABLE `bkp_ingresso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_pagamento`
--

DROP TABLE IF EXISTS `bkp_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_pagamento` (
  `IDPAGAMENTO` int NOT NULL AUTO_INCREMENT,
  `TIPOPAGAMENTO` enum('CREDITO','DEBITO','PIX','A VISTA') DEFAULT NULL,
  `VALORPAGAMENTO` decimal(10,2) DEFAULT NULL,
  `DATAPAGAMENTO` date DEFAULT NULL,
  `ID_PEDIDO` int DEFAULT NULL,
  PRIMARY KEY (`IDPAGAMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_pagamento`
--

LOCK TABLES `bkp_pagamento` WRITE;
/*!40000 ALTER TABLE `bkp_pagamento` DISABLE KEYS */;
INSERT INTO `bkp_pagamento` VALUES (1,'A VISTA',3000.00,'2021-05-10',1),(2,'CREDITO',3500.00,'2021-05-10',2),(3,'A VISTA',3000.00,'2021-05-10',3),(4,'A VISTA',3500.00,'2021-05-10',4),(5,'A VISTA',3500.00,'2021-05-10',6),(6,'CREDITO',9.50,'2021-05-10',7),(7,'A VISTA',9.50,'2021-05-10',8),(8,'A VISTA',18.00,'2021-05-10',9),(9,'DEBITO',24.00,'2021-05-10',10),(10,'A VISTA',9.50,'2021-05-10',11),(11,'A VISTA',32.00,'2021-05-10',12),(12,'DEBITO',20.50,'2021-05-10',13),(13,'A VISTA',34.00,'2021-05-10',16);
/*!40000 ALTER TABLE `bkp_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_pedido`
--

DROP TABLE IF EXISTS `bkp_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_pedido` (
  `IDPEDIDO` int NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_SERVICO` int DEFAULT NULL,
  PRIMARY KEY (`IDPEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_pedido`
--

LOCK TABLES `bkp_pedido` WRITE;
/*!40000 ALTER TABLE `bkp_pedido` DISABLE KEYS */;
INSERT INTO `bkp_pedido` VALUES (1,1,4),(2,1,5),(3,2,4),(4,2,6),(5,2,8),(6,3,12),(7,4,14),(8,4,18),(9,4,22),(10,9,13),(11,9,24),(12,10,19),(13,10,24),(14,10,15);
/*!40000 ALTER TABLE `bkp_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_produto`
--

DROP TABLE IF EXISTS `bkp_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_produto` (
  `IDPRODUTO` int NOT NULL AUTO_INCREMENT,
  `NOMEPRODUTO` varchar(45) NOT NULL,
  `CATPRODUTO` varchar(45) NOT NULL,
  `DESCPRODUTO` varchar(45) NOT NULL,
  `VALORBRUTO` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IDPRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_produto`
--

LOCK TABLES `bkp_produto` WRITE;
/*!40000 ALTER TABLE `bkp_produto` DISABLE KEYS */;
INSERT INTO `bkp_produto` VALUES (1,'COCA COLA 500ML','REFRIGERANTE','BEBIDA GASEIFICADA COCA COLA',9.50),(2,'SPRITE 500ML','REFRIGERANTE','BEBIDA GASEIFICADA SABOR LIMÃO',9.50),(3,'GUARANA 500ML','REFRIGERANTE','BEBIDA GASEIFICADA SABOR GUARANÁ',9.50),(4,'SUCO MARACUJA 500ML','SUCO','SUCO NATURAL SABOR MARACUJA',9.00),(5,'SUCO LARANJA 500ML','SUCO','SUCO NATURAL SABOR LARANJA',9.00),(6,'CHOCOLATE KIT KAT','CHOCOLATE','CHOCOLATE 100% CACAU',6.00),(7,'PIPOCA TRADICIONAL','PIPOCAS','PIPOCA GOURMET SABOR TRADICIONAL',18.00),(8,'PIPOCA C/ MANTEIGA','PIPOCAS','PIPOCA GOURMET COM MANTEIGA',20.50),(9,'PIPOCA CHOCOLATE','PIPOCAS','PIPOCA GOURMET SABOR CHOCOLATE',22.00),(10,'PIPOCA CREAM','PIPOCAS','PIPOCA GOURMET SABOR CREAM',25.00);
/*!40000 ALTER TABLE `bkp_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_sala`
--

DROP TABLE IF EXISTS `bkp_sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_sala` (
  `IDSALA` int NOT NULL AUTO_INCREMENT,
  `TIPOSALA` varchar(45) NOT NULL,
  `NUMEROSALA` int NOT NULL,
  PRIMARY KEY (`IDSALA`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_sala`
--

LOCK TABLES `bkp_sala` WRITE;
/*!40000 ALTER TABLE `bkp_sala` DISABLE KEYS */;
INSERT INTO `bkp_sala` VALUES (1,'2D',1),(2,'2D',2),(3,'3D',3),(4,'3D',4),(5,'3D',5),(6,'XD',6),(7,'XD',7),(8,'XD',8),(9,'D-BOX',9);
/*!40000 ALTER TABLE `bkp_sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_servico`
--

DROP TABLE IF EXISTS `bkp_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_servico` (
  `IDSERVICO` int NOT NULL AUTO_INCREMENT,
  `TIPOSERVICO` varchar(45) DEFAULT NULL,
  `DESCSERVICO` varchar(45) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_PRODUTO` int DEFAULT NULL,
  `ID_SALA` int DEFAULT NULL,
  `ID_INGRESSO` int DEFAULT NULL,
  PRIMARY KEY (`IDSERVICO`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_servico`
--

LOCK TABLES `bkp_servico` WRITE;
/*!40000 ALTER TABLE `bkp_servico` DISABLE KEYS */;
INSERT INTO `bkp_servico` VALUES (1,'ALUGUEL DE SALAS','SALA 2D',1,NULL,1,NULL),(2,'ALUGUEL DE SALAS','SALA 2D',1,NULL,2,NULL),(3,'ALUGUEL DE SALAS','SALA 3D',1,NULL,3,NULL),(4,'ALUGUEL DE SALAS','SALA 3D',1,NULL,4,NULL),(5,'ALUGUEL DE SALAS','SALA 3D',1,NULL,5,NULL),(6,'ALUGUEL DE SALAS','SALA XD',1,NULL,6,NULL),(7,'ALUGUEL DE SALAS','SALA XD',1,NULL,7,NULL),(8,'ALUGUEL DE SALAS','SALA XD',1,NULL,8,NULL),(9,'ALUGUEL DE SALAS','SALA D-BOX',1,NULL,9,NULL),(10,'BEBIDAS','BEBIDA GASEIFICADA',1,1,NULL,NULL),(11,'BEBIDAS','BEBIDA GASEIFICADA',1,2,NULL,NULL),(12,'BEBIDAS','BEBIDA GASEIFICADA',1,3,NULL,NULL),(13,'BEBIDAS','BEBIDA NATURAL',1,4,NULL,NULL),(14,'BEBIDAS','BEBIDA NATURAL',1,5,NULL,NULL),(15,'GULOUSEMAS','CHOCOLATE',1,6,NULL,NULL),(16,'COMIDAS','PIPOCA GOURMET',1,7,NULL,NULL),(17,'COMIDAS','PIPOCA GOURMET',1,8,NULL,NULL),(18,'COMIDAS','PIPOCA GOURMET',1,9,NULL,NULL),(19,'COMIDAS','PIPOCA GOURMET',1,10,NULL,NULL),(20,'INGRESSO','INGRESSO 2D',1,NULL,NULL,1),(21,'INGRESSO','INGRESSO 3D',1,NULL,NULL,2),(22,'INGRESSO','INGRESSO XD',1,NULL,NULL,3),(23,'INGRESSO','INGRESSO D-BOX',1,NULL,NULL,4);
/*!40000 ALTER TABLE `bkp_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_sessao`
--

DROP TABLE IF EXISTS `bkp_sessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_sessao` (
  `IDSESSAO` int NOT NULL AUTO_INCREMENT,
  `DATASESSAO` date DEFAULT NULL,
  `HORASESSAO` time DEFAULT NULL,
  `ID_SALA` int DEFAULT NULL,
  PRIMARY KEY (`IDSESSAO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_sessao`
--

LOCK TABLES `bkp_sessao` WRITE;
/*!40000 ALTER TABLE `bkp_sessao` DISABLE KEYS */;
INSERT INTO `bkp_sessao` VALUES (1,'2021-05-10','16:40:00',1),(2,'2021-05-10','16:20:00',2),(3,'2021-05-10','17:10:00',3),(4,'2021-05-10','15:40:00',4),(5,'2021-05-10','15:00:00',5),(6,'2021-05-10','18:30:00',6);
/*!40000 ALTER TABLE `bkp_sessao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bkp_telefone`
--

DROP TABLE IF EXISTS `bkp_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_telefone` (
  `IDTELEFONE` int NOT NULL AUTO_INCREMENT,
  `TIPOTELEFONE` enum('CEL','RES','COM') DEFAULT NULL,
  `NUMEROTELEFONE` varchar(20) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_FUNCIONARIO` int DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONE`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_telefone`
--

LOCK TABLES `bkp_telefone` WRITE;
/*!40000 ALTER TABLE `bkp_telefone` DISABLE KEYS */;
INSERT INTO `bkp_telefone` VALUES (1,'CEL','(61)98540-5777',NULL,2,NULL),(2,'CEL','(61)98598-9587',NULL,3,NULL),(3,'CEL','(61)94562-8521',NULL,4,NULL),(4,'CEL','(61)97452-9658',NULL,5,NULL),(5,'COM','(61)3039-7852',1,NULL,NULL),(6,'CEL','(61)98632-6541',NULL,NULL,1),(7,'RES','(61)3043-6996',NULL,NULL,2),(8,'RES','(61)4004-3535',NULL,NULL,3),(9,'RES','(61)3563-0007',NULL,NULL,4),(10,'CEL','(61)3626-2485',NULL,NULL,5),(11,'RES','(61)3525-6985',NULL,NULL,6),(12,'CEL','(61)99285-6002',NULL,NULL,7),(13,'CEL','(61)99985-6274',NULL,NULL,8),(14,'RES','(61)3256-9874',NULL,NULL,9),(15,'CEL','(61)99652-8541',NULL,NULL,10),(16,'CEL','(61)9452-8523',NULL,NULL,11),(17,'RES','(61)3032-5874',NULL,NULL,12),(18,'RES','(61)3852-9874',NULL,NULL,13),(19,'CEL','(61)98542-9563',NULL,NULL,14),(20,'CEL','(61)98423-5612',NULL,NULL,15),(21,'COM','(61)3663-5263',NULL,NULL,16),(22,'CEL','(61)98563-2548',NULL,NULL,17);
/*!40000 ALTER TABLE `bkp_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'backup_cinema'
--

--
-- Dumping routines for database 'backup_cinema'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_CINEMA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_CINEMA`(IN CNPJ_DO_CINEMA VARCHAR(45), RAZAO_SOCIAL VARCHAR(100), NOME_FANTASIA VARCHAR(45), CAPACIDADE_CINE INT)
BEGIN
	IF EXISTS (SELECT CNPJ FROM CINEMA WHERE CNPJ = CNPJ_DO_CINEMA)
	THEN
		SELECT 'CINEMA JÁ CADASTRADO';
	ELSE
		INSERT INTO CINEMA VALUES (NULL, CNPJ_DO_CINEMA, RAZAO_SOCIAL, NOME_FANTASIA, CAPACIDADE_CINE);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_CLIENTE`(IN NOME_CLIENTE VARCHAR(45), CPF_CLIENTE VARCHAR(20), SEXO ENUM('M','F'), DATA_NASCIMENTO DATE, EMAIL_CLIENTE VARCHAR(100))
BEGIN
	IF EXISTS (SELECT CPF FROM CLIENTE WHERE CPF = CPF_CLIENTE)
	THEN
		SELECT 'CLIENTE JÁ CADASTRADO';
	ELSE
		INSERT INTO CLIENTE VALUES (NULL, NOME_CLIENTE, CPF_CLIENTE, SEXO, DATA_NASCIMENTO, EMAIL_CLIENTE);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_ENDERECO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_ENDERECO`(IN LOGRADOURO VARCHAR(45), BAIRRO VARCHAR(45), CIDADE VARCHAR(45), ESTADO CHAR(2), 
									  CEP VARCHAR(20), ID_CINEMA INT, ID_FUNCIONARIO INT, ID_CLIENTE INT)
BEGIN
	INSERT INTO ENDERECO VALUES(NULL, LOGRADOURO, BAIRRO, CIDADE, ESTADO, CEP, ID_CINEMA, ID_FUNCIONARIO, ID_CLIENTE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_FILME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_FILME`(IN TITULO_FILME VARCHAR(45), GENERO_FILME VARCHAR(45),
								  DESCRICAO_FILME VARCHAR(150), CLASSIFICACAO_FILME VARCHAR(20), 
								  DURACAO_FILME VARCHAR(10), ID_INGRESSO INT, ID_SESSAO INT)
BEGIN
	INSERT INTO ENDERECO VALUES(NULL, TITULO_FILME, GENERO_FILME, DESCRICAO_FILME, CLASSIFICACAO_FILME, DURACAO_FILME,
								ID_INGRESSO, ID_SESSAO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_FUNCIONARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_FUNCIONARIO`(IN MATRICULA_FUNCIONARIO VARCHAR(45), NOME_FUNCIONARIO VARCHAR(45), ID_CLIENTE INT, ID_CINEMA INT)
BEGIN
	IF EXISTS (SELECT MATFUNCIONARIO FROM FUNCIONARIO WHERE MATFUNCIONARIO = MATRICULA_FUNCIONARIO)
	THEN
		SELECT 'FUNCIONARIO JÁ CADASTRADO';
	ELSE
		INSERT INTO FUNCIONARIO VALUES (NULL, MATRICULA_FUNCIONARIO, NOME_FUNCIONARIO, ID_CLIENTE, ID_CINEMA);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_INGRESSO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_INGRESSO`(IN TIPO_INGRESSO VARCHAR(45), VALOR_INGRESSO DECIMAL(10,2))
BEGIN
	IF EXISTS (SELECT TIPOINGRESSO FROM INGRESSO WHERE TIPOINGRESO = TIPO_INGRESSO)
	THEN
		SELECT 'INGRESSO JÁ CADASTRADO';
	ELSE
		INSERT INTO INGRESSO VALUES (NULL, TIPO_INGRESSO, VALOR_INGRESSO);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_PAGAMENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_PAGAMENTO`(IN TIPOPAGAMENTO ENUM('CREDITO', 'DEBITO', 'PIX', 'A VISTA'),
									  VALOR_PAGAMENTO DECIMAL(10,2), DATA_PAGAMENTO DATE, ID_PEDIDO INT)
BEGIN
	INSERT INTO PAGAMENTO VALUES (NULL, TIPOPAGAMENTO, VALOR_PAGAMENTO, DATA_PAGAMENTO, ID_PEDIDO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_PEDIDO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_PEDIDO`(IN ID_CLIENTE INT, ID_SERVICO INT)
BEGIN
	INSERT INTO PEDIDO VALUES (NULL, ID_CLIENTE, ID_SERVICO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_PRODUTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_PRODUTO`(IN NOME_PRODUTO VARCHAR(45), CATEGORIA_PRODUTO VARCHAR(45), DESCRICAO_PRODUTO VARCHAR(45), VALOR_BRUTO DECIMAL(10,2))
BEGIN
	IF EXISTS (SELECT NOMEPRODUTO FROM PRODUTO WHERE NOMEPRODUTO = NOME_PRODUTO)
	THEN
		SELECT 'PRODUTO JÁ CADASTRADO';
	ELSE
		INSERT INTO PRODUTO VALUES (NULL, NOME_PRODUTO, CATEGORIA_PRODUTO, DESCRICAO_PRODUTO, VALOR_BRUTO);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_SALA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_SALA`(IN TIPO_SALA VARCHAR(45), NUMERO_SALA INT)
BEGIN
	IF EXISTS (SELECT TIPOSALA FROM SALA WHERE TIPOSALA = TIPO_SALA AND NUMEROSALA = NUMERO_SALA)
	THEN
		SELECT 'SALA JÁ CADASTRADA';
	ELSE
		INSERT INTO SALA VALUES (NULL, TIPO_SALA, NUMERO_SALA);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_SERVICO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_SERVICO`(IN TIPO_SERVICO VARCHAR(45), DESCRICAO_SERVICO VARCHAR(45), ID_CINEMA INT,
									 ID_PRODUTO INT, ID_SALA INT, ID_INGRESSO INT)
BEGIN
	INSERT INTO SERVICO VALUES (NULL, TIPO_SERVICO, DESCRICAO_SERVICO, ID_CINEMA, ID_PRODUTO, ID_SALA, ID_INGRESSO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_SESSAO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_SESSAO`(IN DATA_SESSAO DATE, HORA_SESSAO TIME, ID_SALA INT)
BEGIN
	INSERT INTO SESSAO VALUES (NULL, DATA_SESSAO, HORA_SESSAO, ID_SALA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_TELEFONE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_TELEFONE`(IN TIPO_TELEFONE ENUM ('CEL', 'RES', 'COM'), NUMERO_TELEFONE VARCHAR(20), ID_CINEMA INT,
									  ID_FUNCIONARIO INT, ID_CLIENTE INT)
BEGIN
	IF EXISTS (SELECT NUMEROTELEFONE FROM TELEFONE WHERE NUMEROTELEFONE = NUMERO_TELEFONE)
	THEN
		SELECT 'TELEFONE JÁ CADASTRADO';
	ELSE
		INSERT INTO TELEFONE VALUES (NULL, TIPO_TELEFONE, NUMERO_TELEFONE, ID_CINEMA, ID_FUNCIONARIO, ID_CLIENTE);
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `cinema`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cinema`;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `IDCINEMA` int NOT NULL AUTO_INCREMENT,
  `CNPJ` varchar(45) NOT NULL,
  `RAZAOSOCIAL` varchar(100) NOT NULL,
  `NOMEFANTASIA` varchar(45) NOT NULL,
  `CAPACIDADE` int NOT NULL,
  PRIMARY KEY (`IDCINEMA`),
  UNIQUE KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'00.779.721/0001-41','CINEMARK BRASIL S.A.','Cinemark Brasil',2023);
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_CINEMA` AFTER INSERT ON `cinema` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_CINEMA VALUES (NULL, NEW.CNPJ, NEW.RAZAOSOCIAL, NEW.NOMEFANTASIA, NEW.CAPACIDADE);   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOMECLIENTE` varchar(45) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `SEXO` enum('M','F') DEFAULT NULL,
  `DATANASC` date DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  UNIQUE KEY `CPF` (`CPF`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'BIANCA RODRIGUES','256.698.789-92','F','1999-10-12',NULL),(2,'ALEF ARAUJO','369.958.852-15','M','1997-07-10',NULL),(3,'RAFAEL VICTOR','958.852.752-95','M','2009-06-04',NULL),(4,'YARA MARQUES','854.852.456-95','F','1998-09-20',NULL),(5,'BEATRIZ ARAUJO','935.654.123-98','F','1995-08-08',NULL),(6,'GEOVANNA HELOISA','958.947.852-15','F','2018-06-10',NULL),(7,'HAILTON SOUZA','958.741.236-15','M','1982-12-18',NULL),(8,'SARAH LOHANNI','952.632.854-78','F','1997-07-10',NULL),(9,'GABRIEL OLIVEIRA','958.958.852-15','M','1997-07-10',NULL),(10,'FRANCISCO NETO','523.958.852-15','M','1997-07-10',NULL),(11,'THAIS RODRIGUES','123.958.852-15','F','1997-07-10',NULL),(12,'DANIELY RODRIGUES','456.958.852-15','F','1997-07-10',NULL),(13,'YASMIN ARAUJO','789.958.852-15','F','1997-07-10',NULL),(14,'JANAINA SANTOS','987.958.852-15','F','1997-07-10',NULL),(15,'UELLEN SANTOS','654.958.852-15','F','1997-07-10',NULL),(16,'ANA KEYLA','321.958.852-15','F','1997-07-10',NULL),(17,'MARCOS CARVALHO','369.123.852-15','M','1997-07-10',NULL),(18,'DEILTON RODRIGUES','369.456.852-15','M','1997-07-10',NULL),(19,'GABRIEL RODRIGUES','369.789.852-15','M','1997-07-10',NULL),(20,'MARCOS PAULO','369.987.852-15','M','1997-07-10',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_CLIENTE` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_CLIENTE VALUES (NULL, NEW.NOMECLIENTE, NEW.CPF, NEW.SEXO, NEW.DATANASC, NEW.EMAIL);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `IDENDERECO` int NOT NULL AUTO_INCREMENT,
  `LOGRADOURO` varchar(45) DEFAULT NULL,
  `BAIRRO` varchar(45) DEFAULT NULL,
  `CIDADE` varchar(45) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_FUNCIONARIO` int DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`),
  KEY `FK_CINEMA_ENDERECO` (`ID_CINEMA`),
  KEY `FK_FUNCIONARIO_ENDERECO` (`ID_FUNCIONARIO`),
  KEY `FK_CLIENTE_ENDERECO` (`ID_CLIENTE`),
  CONSTRAINT `FK_CINEMA_ENDERECO` FOREIGN KEY (`ID_CINEMA`) REFERENCES `cinema` (`IDCINEMA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CLIENTE_ENDERECO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUNCIONARIO_ENDERECO` FOREIGN KEY (`ID_FUNCIONARIO`) REFERENCES `funcionario` (`IDFUNCIONARIO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,'QUADRA 56 LOTE 06','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900442',NULL,2,NULL),(3,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,3,NULL),(4,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,4,NULL),(5,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,5,NULL),(6,'QS 52 LOTE 06','TAGUATINGA','BRASÍLIA','DF','7526987',1,NULL,NULL),(7,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,1),(8,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,2),(9,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,NULL,3),(10,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,4),(11,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,5),(12,'QS 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7512698',NULL,NULL,6),(13,'QR 414 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320007',NULL,NULL,7),(14,'QUADRA 156 LOTE 14','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72985258',NULL,NULL,8),(15,'QS 12 LOTE 20','RIACHI FUNDO I','BRASÍLIA','DF','7512698',NULL,NULL,9),(16,'QNP 27 CONJUNTO 09 CASA 23','CEILANDIA NORTE','BRASÍLIA','DF','72386504',NULL,NULL,10),(17,'QNL 24 LOTE 09','CHAPARRAL','BRASÍLIA','DF','7270958',NULL,NULL,11),(18,'QSA 124 LOTE 48','TAGUATINGA','BRASÍLIA','DF','7416698',NULL,NULL,12),(19,'QR 502 CONJUNTO 15 CASA 23','SAMAMBAIA SUL','BRASÍLIA','DF','75849604',NULL,NULL,13),(20,'QUADRA 185 LOTE 09','RECANTO DAS EMAS','BRASÍLIA','DF','72958741',NULL,NULL,14),(21,'QNP 12 LOTE 20','TAGUATINGA','BRASÍLIA','DF','7598698',NULL,NULL,15),(22,'QR 410 CONJUNTO 09 CASA 23','SAMAMBAIA NORTE','BRASÍLIA','DF','72320004',NULL,NULL,16),(23,'QUADRA 185 LOTE 09','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72900958',NULL,NULL,17),(24,'QS 85 LOTE 20','AGUAS CLARAS','BRASÍLIA','DF','7485968',NULL,NULL,18),(25,'QI 58 CASA 23','GUARA','BRASÍLIA','DF','95852144',NULL,NULL,19),(26,'QUADRA 16 LOTE 18','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','GO','72852158',NULL,NULL,20);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_ENDERECO` AFTER INSERT ON `endereco` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_ENDERECO VALUES (NULL, NEW.LOGRADOURO, NEW.BAIRRO, NEW.CIDADE, NEW.ESTADO, NEW.CEP, NEW.ID_CINEMA, NEW.ID_FUNCIONARIO, NEW.ID_CLIENTE);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `IDFILME` int NOT NULL AUTO_INCREMENT,
  `TITULOFILME` varchar(45) NOT NULL,
  `GENEROFILME` varchar(45) NOT NULL,
  `DESCFILME` varchar(100) NOT NULL,
  `CLASSIFICACAOFILME` varchar(20) NOT NULL,
  `DURACAOFILME` varchar(10) NOT NULL,
  `ID_INGRESSO` int DEFAULT NULL,
  `ID_SESSAO` int DEFAULT NULL,
  PRIMARY KEY (`IDFILME`),
  KEY `FK_INGRESSO_FILME` (`ID_INGRESSO`),
  KEY `FK_SESSAO_FILME` (`ID_SESSAO`),
  CONSTRAINT `FK_INGRESSO_FILME` FOREIGN KEY (`ID_INGRESSO`) REFERENCES `ingresso` (`IDINGRESSO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SESSAO_FILME` FOREIGN KEY (`ID_SESSAO`) REFERENCES `sessao` (`IDSESSAO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'A VIÚVA DAS SOMBRAS','TERROR','CONTA A HIST DE UM GRUPO QUE ENTRA EM UMA FLORESTA P/ RESGATAR UM GAROTO DESAPARECIDO.','14 ANOS','85 MIN',2,3),(2,'GODZILLA VS KONG','AÇÃO','LENDAS ENTRAM EM ROTA DE COLISÃO EM GODZILLA VS. KONG.','12 ANOS','110 MIN',2,4),(3,'GODZILLA VS KONG','AÇÃO','LENDAS ENTRAM EM ROTA DE COLISÃO EM GODZILLA VS. KONG.','12 ANOS','110 MIN',4,5),(4,'O AUTO DA BOA MENTIRA','COMÉDIA','DIZEM QUE A MENTIRA TEM PERNA CURTA. SE ISSO É VERDADE, A BICHINHA CORRE RÁPIDO, VIU!','12 ANOS','100 MIN',2,6),(5,'TOM E JERRY','ANIMAÇÃO','UMA DAS RIVALIDADES MAIS AMADAS DA HISTÓRIA A BATALHA DE GATO E RATO','LIVRE','100 MIN',3,3);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_FILME` AFTER INSERT ON `filme` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_FILME VALUES (NULL, NEW.TITULOFILME, NEW.GENEROFILME, NEW.DESCFILME, NEW.CLASSIFICACAOFILME, NEW.DURACAOFILME, NEW.ID_INGRESSO, NEW.ID_SESSAO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `IDFUNCIONARIO` int NOT NULL AUTO_INCREMENT,
  `MATFUNCIONARIO` varchar(45) NOT NULL,
  `NOMEFUNCIONARIO` varchar(45) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  PRIMARY KEY (`IDFUNCIONARIO`),
  KEY `FK_CLIENTE_FUNCIONARIO` (`ID_CLIENTE`),
  KEY `FK_CINEMA_FUNCIONARIO` (`ID_CINEMA`),
  CONSTRAINT `FK_CINEMA_FUNCIONARIO` FOREIGN KEY (`ID_CINEMA`) REFERENCES `cinema` (`IDCINEMA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CLIENTE_FUNCIONARIO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (2,'20210258','MARCELO PEREIRA',1,1),(3,'20200269','JACQUELINE RODRIGUES',3,1),(4,'20210136','BRENDA CAMPOS',5,1),(5,'20195296','JHONATAN GUILHERME',6,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_FUNCIONARIO` AFTER INSERT ON `funcionario` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_FUNCIONARIO VALUES (NULL, NEW.MATFUNCIONARIO, NEW.NOMEFUNCIONARIO, NEW.ID_CLIENTE, NEW.ID_CINEMA);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ingresso`
--

DROP TABLE IF EXISTS `ingresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresso` (
  `IDINGRESSO` int NOT NULL AUTO_INCREMENT,
  `TIPOINGRESSO` enum('2D','3D','XD','D-BOX') DEFAULT NULL,
  `VALORINGRESSO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IDINGRESSO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresso`
--

LOCK TABLES `ingresso` WRITE;
/*!40000 ALTER TABLE `ingresso` DISABLE KEYS */;
INSERT INTO `ingresso` VALUES (1,'2D',24.00),(2,'3D',26.00),(3,'XD',32.00),(4,'D-BOX',34.00);
/*!40000 ALTER TABLE `ingresso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_INGRESSO` AFTER INSERT ON `ingresso` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_INGRESSO VALUES (NULL, NEW.TIPOINGRESSO, NEW.VALORINGRESSO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `IDPAGAMENTO` int NOT NULL AUTO_INCREMENT,
  `TIPOPAGAMENTO` enum('CREDITO','DEBITO','PIX','A VISTA') DEFAULT NULL,
  `VALORPAGAMENTO` decimal(10,2) DEFAULT NULL,
  `DATAPAGAMENTO` date DEFAULT NULL,
  `ID_PEDIDO` int DEFAULT NULL,
  PRIMARY KEY (`IDPAGAMENTO`),
  KEY `FK_PEDIDO_PAGAMENTO` (`ID_PEDIDO`),
  CONSTRAINT `FK_PEDIDO_PAGAMENTO` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`IDPEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'A VISTA',3000.00,'2021-05-10',1),(2,'CREDITO',3500.00,'2021-05-10',2),(3,'A VISTA',3000.00,'2021-05-10',3),(4,'A VISTA',3500.00,'2021-05-10',4),(6,'A VISTA',3500.00,'2021-05-10',6),(7,'CREDITO',9.50,'2021-05-10',7),(8,'A VISTA',9.50,'2021-05-10',8),(9,'A VISTA',18.00,'2021-05-10',9),(10,'DEBITO',24.00,'2021-05-10',10),(11,'A VISTA',9.50,'2021-05-10',11),(12,'A VISTA',32.00,'2021-05-10',12),(13,'DEBITO',20.50,'2021-05-10',13),(15,'A VISTA',34.00,'2021-05-10',16);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_PAGAMENTO` AFTER INSERT ON `pagamento` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PAGAMENTO VALUES (NULL, NEW.TIPOPAGAMENTO, NEW.VALORPAGAMENTO, NEW.DATAPAGAMENTO, NEW.ID_PEDIDO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `IDPEDIDO` int NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_SERVICO` int DEFAULT NULL,
  PRIMARY KEY (`IDPEDIDO`),
  KEY `FK_CLIENTE_PEDIDO` (`ID_CLIENTE`),
  KEY `FK_SERVICO_PEDIDO` (`ID_SERVICO`),
  CONSTRAINT `FK_CLIENTE_PEDIDO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SERVICO_PEDIDO` FOREIGN KEY (`ID_SERVICO`) REFERENCES `servico` (`IDSERVICO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,4),(2,1,5),(3,2,4),(4,2,6),(6,2,8),(7,3,12),(8,4,14),(9,4,18),(10,4,22),(11,9,13),(12,9,24),(13,10,19),(15,10,24),(16,10,15);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_PEDIDO` AFTER INSERT ON `pedido` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PEDIDO VALUES (NULL, NEW.ID_CLIENTE, NEW.ID_SERVICO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `IDPRODUTO` int NOT NULL AUTO_INCREMENT,
  `NOMEPRODUTO` varchar(45) NOT NULL,
  `CATPRODUTO` varchar(45) NOT NULL,
  `DESCPRODUTO` varchar(45) NOT NULL,
  `VALORBRUTO` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IDPRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'COCA COLA 500ML','REFRIGERANTE','BEBIDA GASEIFICADA COCA COLA',9.50),(2,'SPRITE 500ML','REFRIGERANTE','BEBIDA GASEIFICADA SABOR LIMÃO',9.50),(3,'GUARANA 500ML','REFRIGERANTE','BEBIDA GASEIFICADA SABOR GUARANÁ',9.50),(4,'SUCO MARACUJA 500ML','SUCO','SUCO NATURAL SABOR MARACUJA',9.00),(5,'SUCO LARANJA 500ML','SUCO','SUCO NATURAL SABOR LARANJA',9.00),(6,'CHOCOLATE KIT KAT','CHOCOLATE','CHOCOLATE 100% CACAU',6.00),(7,'PIPOCA TRADICIONAL','PIPOCAS','PIPOCA GOURMET SABOR TRADICIONAL',18.00),(8,'PIPOCA C/ MANTEIGA','PIPOCAS','PIPOCA GOURMET COM MANTEIGA',20.50),(9,'PIPOCA CHOCOLATE','PIPOCAS','PIPOCA GOURMET SABOR CHOCOLATE',22.00),(10,'PIPOCA CREAM','PIPOCAS','PIPOCA GOURMET SABOR CREAM',25.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_PRODUTO` AFTER INSERT ON `produto` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PRODUTO VALUES (NULL, NEW.NOMEPRODUTO, NEW.CATPRODUTO, NEW.DESCPRODUTO, NEW.VALORBRUTO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `IDSALA` int NOT NULL AUTO_INCREMENT,
  `TIPOSALA` varchar(45) NOT NULL,
  `NUMEROSALA` int NOT NULL,
  PRIMARY KEY (`IDSALA`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'2D',1),(2,'2D',2),(3,'3D',3),(4,'3D',4),(5,'3D',5),(6,'XD',6),(7,'XD',7),(8,'XD',8),(9,'D-BOX',9);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_SALA` AFTER INSERT ON `sala` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SALA VALUES (NULL, NEW.TIPOSALA, NEW.NUMEROSALA);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `IDSERVICO` int NOT NULL AUTO_INCREMENT,
  `TIPOSERVICO` varchar(45) DEFAULT NULL,
  `DESCSERVICO` varchar(45) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_PRODUTO` int DEFAULT NULL,
  `ID_SALA` int DEFAULT NULL,
  `ID_INGRESSO` int DEFAULT NULL,
  PRIMARY KEY (`IDSERVICO`),
  KEY `FK_CINEMA_SERVICO` (`ID_CINEMA`),
  KEY `FK_PRODUTO_SERVICO` (`ID_PRODUTO`),
  KEY `FK_SALA_SERVICO` (`ID_SALA`),
  KEY `FK_INGRESSO_SERVICO` (`ID_INGRESSO`),
  CONSTRAINT `FK_CINEMA_SERVICO` FOREIGN KEY (`ID_CINEMA`) REFERENCES `cinema` (`IDCINEMA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_INGRESSO_SERVICO` FOREIGN KEY (`ID_INGRESSO`) REFERENCES `ingresso` (`IDINGRESSO`),
  CONSTRAINT `FK_PRODUTO_SERVICO` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `produto` (`IDPRODUTO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALA_SERVICO` FOREIGN KEY (`ID_SALA`) REFERENCES `sala` (`IDSALA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'ALUGUEL DE SALAS','SALA 2D',1,NULL,1,NULL),(2,'ALUGUEL DE SALAS','SALA 2D',1,NULL,2,NULL),(3,'ALUGUEL DE SALAS','SALA 3D',1,NULL,3,NULL),(4,'ALUGUEL DE SALAS','SALA 3D',1,NULL,4,NULL),(5,'ALUGUEL DE SALAS','SALA 3D',1,NULL,5,NULL),(6,'ALUGUEL DE SALAS','SALA XD',1,NULL,6,NULL),(8,'ALUGUEL DE SALAS','SALA XD',1,NULL,7,NULL),(9,'ALUGUEL DE SALAS','SALA XD',1,NULL,8,NULL),(10,'ALUGUEL DE SALAS','SALA D-BOX',1,NULL,9,NULL),(11,'BEBIDAS','BEBIDA GASEIFICADA',1,1,NULL,NULL),(12,'BEBIDAS','BEBIDA GASEIFICADA',1,2,NULL,NULL),(13,'BEBIDAS','BEBIDA GASEIFICADA',1,3,NULL,NULL),(14,'BEBIDAS','BEBIDA NATURAL',1,4,NULL,NULL),(15,'BEBIDAS','BEBIDA NATURAL',1,5,NULL,NULL),(16,'GULOUSEMAS','CHOCOLATE',1,6,NULL,NULL),(17,'COMIDAS','PIPOCA GOURMET',1,7,NULL,NULL),(18,'COMIDAS','PIPOCA GOURMET',1,8,NULL,NULL),(19,'COMIDAS','PIPOCA GOURMET',1,9,NULL,NULL),(20,'COMIDAS','PIPOCA GOURMET',1,10,NULL,NULL),(21,'INGRESSO','INGRESSO 2D',1,NULL,NULL,1),(22,'INGRESSO','INGRESSO 3D',1,NULL,NULL,2),(23,'INGRESSO','INGRESSO XD',1,NULL,NULL,3),(24,'INGRESSO','INGRESSO D-BOX',1,NULL,NULL,4);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_SERVICO` AFTER INSERT ON `servico` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SERVICO VALUES (NULL, NEW.TIPOSERVICO, NEW.DESCSERVICO, NEW.ID_CINEMA, NEW.ID_PRODUTO, NEW.ID_SALA, NEW.ID_INGRESSO);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sessao`
--

DROP TABLE IF EXISTS `sessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessao` (
  `IDSESSAO` int NOT NULL AUTO_INCREMENT,
  `DATASESSAO` date DEFAULT NULL,
  `HORASESSAO` time DEFAULT NULL,
  `ID_SALA` int DEFAULT NULL,
  PRIMARY KEY (`IDSESSAO`),
  KEY `FK_SALA_SESSAO` (`ID_SALA`),
  CONSTRAINT `FK_SALA_SESSAO` FOREIGN KEY (`ID_SALA`) REFERENCES `sala` (`IDSALA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessao`
--

LOCK TABLES `sessao` WRITE;
/*!40000 ALTER TABLE `sessao` DISABLE KEYS */;
INSERT INTO `sessao` VALUES (1,'2021-05-10','16:40:00',1),(2,'2021-05-10','16:20:00',2),(3,'2021-05-10','17:10:00',3),(4,'2021-05-10','15:40:00',4),(5,'2021-05-10','15:00:00',5),(6,'2021-05-10','18:30:00',6);
/*!40000 ALTER TABLE `sessao` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_SESSAO` AFTER INSERT ON `sessao` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SESSAO VALUES (NULL, NEW.DATASESSAO, NEW.HORASESSAO, NEW.ID_SALA);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `IDTELEFONE` int NOT NULL AUTO_INCREMENT,
  `TIPOTELEFONE` enum('CEL','RES','COM') DEFAULT NULL,
  `NUMEROTELEFONE` varchar(20) DEFAULT NULL,
  `ID_CINEMA` int DEFAULT NULL,
  `ID_FUNCIONARIO` int DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONE`),
  KEY `FK_CINEMA_TELEFONE` (`ID_CINEMA`),
  KEY `FK_FUNCIONARIO_TELEFONE` (`ID_FUNCIONARIO`),
  KEY `FK_CLIENTE_TELEFONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CINEMA_TELEFONE` FOREIGN KEY (`ID_CINEMA`) REFERENCES `cinema` (`IDCINEMA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUNCIONARIO_TELEFONE` FOREIGN KEY (`ID_FUNCIONARIO`) REFERENCES `funcionario` (`IDFUNCIONARIO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (2,'CEL','(61)98540-5777',NULL,2,NULL),(3,'CEL','(61)98598-9587',NULL,3,NULL),(4,'CEL','(61)94562-8521',NULL,4,NULL),(5,'CEL','(61)97452-9658',NULL,5,NULL),(6,'COM','(61)3039-7852',1,NULL,NULL),(7,'CEL','(61)98632-6541',NULL,NULL,1),(8,'RES','(61)3043-6996',NULL,NULL,2),(9,'RES','(61)4004-3535',NULL,NULL,3),(10,'RES','(61)3563-0007',NULL,NULL,4),(11,'CEL','(61)3626-2485',NULL,NULL,5),(12,'RES','(61)3525-6985',NULL,NULL,6),(13,'CEL','(61)99285-6002',NULL,NULL,7),(14,'CEL','(61)99985-6274',NULL,NULL,8),(15,'RES','(61)3256-9874',NULL,NULL,9),(16,'CEL','(61)99652-8541',NULL,NULL,10),(17,'CEL','(61)9452-8523',NULL,NULL,11),(18,'RES','(61)3032-5874',NULL,NULL,12),(19,'RES','(61)3852-9874',NULL,NULL,13),(20,'CEL','(61)98542-9563',NULL,NULL,14),(21,'CEL','(61)98423-5612',NULL,NULL,15),(22,'COM','(61)3663-5263',NULL,NULL,16),(23,'CEL','(61)98563-2548',NULL,NULL,17);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_INSERT_BKP_TELEFONE` AFTER INSERT ON `telefone` FOR EACH ROW BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_TELEFONE VALUES (NULL, NEW.TIPOTELEFONE, NEW.NUMEROTELEFONE, NEW.ID_CINEMA, NEW.ID_FUNCIONARIO, NEW.ID_CLIENTE);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'cinema'
--

--
-- Dumping routines for database 'cinema'
--
/*!50003 DROP FUNCTION IF EXISTS `FCN_VERIFICA_FILME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FCN_VERIFICA_FILME`(NOME VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	RETURN CONCAT('Ola, ',NOME,' bem vindo ao Cinemark!');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 14:55:52
