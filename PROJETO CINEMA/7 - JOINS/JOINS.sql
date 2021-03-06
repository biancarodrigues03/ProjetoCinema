/*TRAZER O NOME, SEXO, NUMERO DE TELEFONE E A CIDADE DO CLIENTE*/
SELECT C.NOMECLIENTE, C.SEXO, T.NUMEROTELEFONE, E.CIDADE
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

/*TRAZER O NOME, SEXO, NUMERO DE TELEFONE E A CIDADE DO CLIENTE DE CLIENTES DO SEXO FEMININO*/
SELECT C.NOMECLIENTE, C.SEXO, T.NUMEROTELEFONE, E.CIDADE
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'F';

/*TRAZER O NOME, SEXO, NUMERO DE TELEFONE E A CIDADE DO CLIENTE DE CLIENTES DO SEXO MASCULINO*/
SELECT C.NOMECLIENTE, C.SEXO, T.NUMEROTELEFONE, E.CIDADE
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'M';

/*TRAZER O NOME E SEXO, CUJO O NOME INICIE COM A LETRA G*/
SELECT C.NOMECLIENTE, C.SEXO
FROM CLIENTE C
WHERE NOMECLIENTE LIKE 'G%';

/*TRAZER DATA E HORA DA SESSÃO, NUMERO DA SALA, TITULO E CLANUMERO DE TELEFONE E A CIDADE DO CLIENTE DE CLIENTES DO SEXO MASCULINO*/
SELECT S.DATASESSAO, S.HORASESSAO, SA.NUMEROSALA, F.TITULOFILME, F.CLASSIFICACAOFILME, I.VALORINGRESSO
FROM SESSAO S
INNER JOIN SALA SA
ON SA.IDSALA = S.ID_SALA
INNER JOIN FILME F
ON S.IDSESSAO = F.ID_SESSAO;
INNER JOIN INGRESSO I
ON I.IDINGRESSO = F.ID_INGRESSO;
