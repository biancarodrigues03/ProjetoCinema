/******************* TABELA CINEMA ********************/
#DROP TRIGGER IF EXISTS TRG_INSERT_CINEMA_BKP;
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_CINEMA
AFTER INSERT ON CINEMA
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_CINEMA VALUES (NULL, NEW.CNPJ, NEW.RAZAOSOCIAL, NEW.NOMEFANTASIA, NEW.CAPACIDADE);   
END $$
DELIMITER ;

/******************* TABELA CLIENTE ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_CLIENTE
AFTER INSERT ON CLIENTE
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_CLIENTE VALUES (NULL, NEW.NOMECLIENTE, NEW.CPF, NEW.SEXO, NEW.DATANASC, NEW.EMAIL);
END $$
DELIMITER ;

/******************* TABELA PRODUTO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PRODUTO VALUES (NULL, NEW.NOMEPRODUTO, NEW.CATPRODUTO, NEW.DESCPRODUTO, NEW.VALORBRUTO);
END $$
DELIMITER ;

/******************* TABELA SALA ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_SALA
AFTER INSERT ON SALA
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SALA VALUES (NULL, NEW.TIPOSALA, NEW.NUMEROSALA);
END $$
DELIMITER ;

/******************* TABELA INGRESSO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_INGRESSO
AFTER INSERT ON INGRESSO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_INGRESSO VALUES (NULL, NEW.TIPOINGRESSO, NEW.VALORINGRESSO);
END $$
DELIMITER ;

/******************* TABELA FUNCIONARIO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_FUNCIONARIO
AFTER INSERT ON FUNCIONARIO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_FUNCIONARIO VALUES (NULL, NEW.MATFUNCIONARIO, NEW.NOMEFUNCIONARIO, NEW.ID_CLIENTE, NEW.ID_CINEMA);
END $$
DELIMITER ;

/******************* TABELA ENDERECO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_ENDERECO
AFTER INSERT ON ENDERECO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_ENDERECO VALUES (NULL, NEW.LOGRADOURO, NEW.BAIRRO, NEW.CIDADE, NEW.ESTADO, NEW.CEP, NEW.ID_CINEMA, NEW.ID_FUNCIONARIO, NEW.ID_CLIENTE);
END $$
DELIMITER ;

/******************* TABELA TELEFONE ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_TELEFONE
AFTER INSERT ON TELEFONE
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_TELEFONE VALUES (NULL, NEW.TIPOTELEFONE, NEW.NUMEROTELEFONE, NEW.ID_CINEMA, NEW.ID_FUNCIONARIO, NEW.ID_CLIENTE);
END $$
DELIMITER ;

/******************* TABELA SERVICO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_SERVICO
AFTER INSERT ON SERVICO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SERVICO VALUES (NULL, NEW.TIPOSERVICO, NEW.DESCSERVICO, NEW.ID_CINEMA, NEW.ID_PRODUTO, NEW.ID_SALA, NEW.ID_INGRESSO);
END $$
DELIMITER ;

/******************* TABELA PEDIDO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_PEDIDO
AFTER INSERT ON PEDIDO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PEDIDO VALUES (NULL, NEW.ID_CLIENTE, NEW.ID_SERVICO);
END $$
DELIMITER ;

/******************* TABELA SESSAO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_SESSAO
AFTER INSERT ON SESSAO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_SESSAO VALUES (NULL, NEW.DATASESSAO, NEW.HORASESSAO, NEW.ID_SALA);
END $$
DELIMITER ;

/******************* TABELA FILME ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_FILME
AFTER INSERT ON FILME
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_FILME VALUES (NULL, NEW.TITULOFILME, NEW.GENEROFILME, NEW.DESCFILME, NEW.CLASSIFICACAOFILME, NEW.DURACAOFILME, NEW.ID_INGRESSO, NEW.ID_SESSAO);
END $$
DELIMITER ;

/******************* TABELA PAGAMENTO ********************/
DELIMITER $$
CREATE TRIGGER TG_INSERT_BKP_PAGAMENTO
AFTER INSERT ON PAGAMENTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP_CINEMA.BKP_PAGAMENTO VALUES (NULL, NEW.TIPOPAGAMENTO, NEW.VALORPAGAMENTO, NEW.DATAPAGAMENTO, NEW.ID_PEDIDO);
END $$
DELIMITER ;