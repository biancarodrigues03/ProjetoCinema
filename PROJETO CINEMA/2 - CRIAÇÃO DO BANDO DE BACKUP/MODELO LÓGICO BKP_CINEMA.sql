/* CRIANDO O BANCO DE BACKUP*/
CREATE DATABASE BACKUP_CINEMA;

/* SELECIONANDO O BANCO */
USE BACKUP_CINEMA;


/*CRIANDO AS TABELAS DO BANCO*/
CREATE TABLE BKP_CINEMA (
	IDCINEMA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CNPJ VARCHAR(45) NOT NULL UNIQUE,
	RAZAOSOCIAL VARCHAR(100) NOT NULL,
	NOMEFANTASIA VARCHAR(45) NOT NULL,
	CAPACIDADE INT NOT NULL
);

CREATE TABLE BKP_CLIENTE (
	IDCLIENTE INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOMECLIENTE VARCHAR(45) NOT NULL,
	CPF VARCHAR(20) NOT NULL UNIQUE,
	SEXO ENUM('M','F'),
	DATANASC DATE,
	EMAIL VARCHAR(100) UNIQUE
);

CREATE TABLE BKP_PRODUTO (
	IDPRODUTO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOMEPRODUTO VARCHAR(45) NOT NULL,
	CATPRODUTO VARCHAR(45) NOT NULL,
	DESCPRODUTO VARCHAR(45) NOT NULL, 
	VALORBRUTO DECIMAL(10,2) NOT NULL
);

CREATE TABLE BKP_SALA (
	IDSALA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TIPOSALA VARCHAR(45) NOT NULL,
	NUMEROSALA INT NOT NULL
);

CREATE TABLE BKP_INGRESSO (
	IDINGRESSO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TIPOINGRESSO ENUM('2D', '3D', 'XD', 'D-BOX'),
	VALORINGRESSO DECIMAL(10,2)
);

CREATE TABLE BKP_FUNCIONARIO (
	IDFUNCIONARIO INT  PRIMARY KEY AUTO_INCREMENT,
	MATFUNCIONARIO VARCHAR(45) NOT NULL,
	NOMEFUNCIONARIO VARCHAR(45) NOT NULL,
	ID_CLIENTE INT,
	ID_CINEMA INT
);

CREATE TABLE BKP_ENDERECO (
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	LOGRADOURO VARCHAR(45),
	BAIRRO VARCHAR(45),
	CIDADE VARCHAR(45),
	ESTADO CHAR(2),
	CEP VARCHAR(20),
	ID_CINEMA INT,
	ID_FUNCIONARIO INT,
	ID_CLIENTE INT
);

CREATE TABLE BKP_TELEFONE (
	IDTELEFONE INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TIPOTELEFONE ENUM ('CEL', 'RES', 'COM'),
	NUMEROTELEFONE VARCHAR(20),
	ID_CINEMA INT,
	ID_FUNCIONARIO INT,
	ID_CLIENTE INT
);

CREATE TABLE BKP_SERVICO (
	IDSERVICO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TIPOSERVICO VARCHAR(45),
	DESCSERVICO VARCHAR(45),
	ID_CINEMA INT,
	ID_PRODUTO INT,
	ID_SALA INT,
	ID_INGRESSO INT
);

CREATE TABLE BKP_PEDIDO (
	IDPEDIDO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_CLIENTE INT,
	ID_SERVICO INT
);

CREATE TABLE BKP_SESSAO (
	IDSESSAO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DATASESSAO DATE,
	HORASESSAO TIME,
	ID_SALA INT
);

CREATE TABLE BKP_FILME (
	IDFILME INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TITULOFILME VARCHAR(45) NOT NULL,
	GENEROFILME VARCHAR(45) NOT NULL,
	DESCFILME VARCHAR(100) NOT NULL,
	CLASSIFICACAOFILME VARCHAR(20) NOT NULL,
	DURACAOFILME VARCHAR(10) NOT NULL,
	ID_INGRESSO INT,
	ID_SESSAO INT
);


CREATE TABLE BKP_PAGAMENTO (
	IDPAGAMENTO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TIPOPAGAMENTO ENUM ('CREDITO', 'DEBITO', 'PIX', 'A VISTA'),
	VALORPAGAMENTO DECIMAL(10,2),
	DATAPAGAMENTO DATE,
	ID_PEDIDO INT
);