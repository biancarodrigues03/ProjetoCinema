DROP FUNCTION IF EXISTS FCN_VERIFICA_FILME;
DELIMITER $$
CREATE FUNCTION FCN_VERIFICA_FILME(NOME VARCHAR(50)) 
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	RETURN CONCAT('Ola, ',NOME,' bem vindo ao Cinemark!');
END$$
DELIMITER ;