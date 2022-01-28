USE COMERCIO;

SHOW TABLES;

SELECT * FROM CLIENTES;

+-----------+--------+------+---------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF         |
+-----------+--------+------+---------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 96567687557 |
|         3 | ANA    | F    | ANA@IG.COM    | 86567587586 |
|         4 | CLARA  | F    | NULL          | 96588589837 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 16567487837 |
|         6 | CELIA  | F    | CELIA@IG.COM  | 66534587881 |
|         7 | PAULA  | F    | NULL          | 77437493    |
+-----------+--------+------+---------------+-------------+


/*INSERINDO DADOS NA TABELA CLIENTES*/


INSERT INTO CLIENTES VALUES(NULL, 'FLAVIO', 'M', 'FLAVIO@IG.COM', '4657765');
INSERT INTO CLIENTES VALUES(NULL, 'ANDRE', 'M', 'ANDRE@GLOBO.COM', '7678567');
INSERT INTO CLIENTES VALUES(NULL, 'GIOVANNA', 'F', 'NULL', '0876655');
INSERT INTO CLIENTES VALUES(NULL, 'KARLA', 'F', 'KARLA@GMAIL.COM', '565676778');
INSERT INTO CLIENTES VALUES(NULL, 'DANIELE', 'F', 'DANIELE@GMAIL.COM', '43536789');
INSERT INTO CLIENTES VALUES(NULL, 'LORENA', 'F', 'NULL', '774557887');
INSERT INTO CLIENTES VALUES(NULL, 'EDUARDO', 'M', NULL, '54376457');
INSERT INTO CLIENTES VALUES(NULL, 'ANTONIO', 'M', 'ANTONIO@UOL.COM', '34323565');
INSERT INTO CLIENTES VALUES(NULL, 'ANTONIO', 'M', 'ANTONIO@IG.COM', '124365767');
INSERT INTO CLIENTES VALUES(NULL, 'ELAINE', 'F', 'ELAINE@GLOBO.COM', '32567763');
INSERT INTO CLIENTES VALUES(NULL, 'CARMEM', 'F', 'CARMEM@IG.COM', '787832213');
INSERT INTO CLIENTES VALUES(NULL, 'ADRIANA', 'F', 'ADRIANA@GMAIL.COM', '88556942');
INSERT INTO CLIENTES VALUES(NULL, 'JOICE', 'F', 'JOICE@GMAIL.COM', '55412256');

 SELECT * FROM CLIENTES;

 /*PULOU O IDCLIENTE 8 PQ O CLIENTE 8 FOI DELETADO*/
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 96567687557 |
|         3 | ANA     | F    | ANA@IG.COM        | 86567587586 |
|         4 | CLARA   | F    | NULL              | 96588589837 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 |
|         6 | CELIA   | F    | CELIA@IG.COM      | 66534587881 |
|         7 | PAULA   | F    | NULL              | 77437493    |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7678567     |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 565676778   |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    |
|        15 | EDUARDO | M    | NULL              | 54376457    |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 34323565    |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 124365767   |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+

/*INSERINDO DADOS NA TABELA ENDERECOS*/

INSERT INTO ENDERECOS VALUES(NULL,'RUA GUEDES', 'CASCADURA', 'BELO HORIZONTE', 'MG', 9);
INSERT INTO ENDERECOS VALUES(NULL,'RUA MAIA LACERDA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 10);
INSERT INTO ENDERECOS VALUES(NULL,'RUA VISCONDESSA', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 11);
INSERT INTO ENDERECOS VALUES(NULL,'RUA NELSON MANDELA', 'COPAGABANA', 'RIO DE JANEIRO', 'RJ', 12);
INSERT INTO ENDERECOS VALUES(NULL,'RUA ARAUJO LIMA', 'CENTRO', 'VITORIA', 'ES', 13);
INSERT INTO ENDERECOS VALUES(NULL,'RUA CASTRO ALVES', 'LEBLON', 'RIO DE JANEIRO', 'RJ', 14);
INSERT INTO ENDERECOS VALUES(NULL,'AV CAPITÃO ANTUNES', 'CENTRO', 'CURITIBA', 'PR', 15);
INSERT INTO ENDERECOS VALUES(NULL,'AV CARLOS BARROSO', 'JARDINS', 'SÃO PAULO', 'SP', 16);
INSERT INTO ENDERECOS VALUES(NULL,'ALAMEDA SAMPAIO', 'BOM RETIRO', 'CURITIBA', 'PR', 17);
INSERT INTO ENDERECOS VALUES(NULL,'RUA DA LAPA', 'LAPA', 'SÃO PAULO', 'SP', 18);
INSERT INTO ENDERECOS VALUES(NULL,'RUA GERÔNIMO', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 19);
INSERT INTO ENDERECOS VALUES(NULL,'RUA GOMES FREIRE', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 20);
INSERT INTO ENDERECOS VALUES(NULL,'RUA GOMES FREIRE', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 21);

SELECT * FROM ENDERECOS;

+------------+-----------------------+------------+----------------+--------+------------+
| IDENDERECO | RUA                   | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+-----------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA        | CENTRO     | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRESITENTE VARGAS | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR        | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     |          5 |
|          7 | RUIA JOAQUIM SILVA    | ALVORADA   | NITEROI        | RJ     |          7 |
|          8 | RUA GUEDES            | CASCADURA  | BELO HORIZONTE | MG     |          9 |
|          9 | RUA MAIA LACERDA      | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|         11 | RUA NELSON MANDELA    | COPAGABANA | RIO DE JANEIRO | RJ     |         12 |
|         12 | RUA ARAUJO LIMA       | CENTRO     | VITORIA        | ES     |         13 |
|         14 | AV CAPITÃO ANTUNES    | CENTRO     | CURITIBA       | PR     |         15 |
|         15 | AV CARLOS BARROSO     | JARDINS    | SÃO PAULO      | SP     |         16 |
|         16 | ALAMEDA SAMPAIO       | BOM RETIRO | CURITIBA       | PR     |         17 |
|         17 | RUA DA LAPA           | LAPA       | SÃO PAULO      | SP     |         18 |
|         18 | RUA GERÔNIMO          | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|         19 | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|         20 | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+------------+-----------------------+------------+----------------+--------+------------+


/*INSERINDO DADOS NA TABELA TELEFONES*/

INSERT INTO TELEFONES VALUES(NULL, 'RES', '68976565', 9);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '99676675', 9);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '33567765', 11);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '88668786', 11);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '55689654', 11);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '88687979', 12);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '88965676', 13);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '89966809', 15);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '88679978', 16);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '99675768', 17);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '89965665', 18);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '77455786', 19);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '89766554', 19);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '77755785', 20);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '44522578', 20);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '44522578', 21);

SELECT * FROM TELEFONES;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 78558723 |          5 |
|          3 | CEL  | 87668723 |          1 |
|          4 | COM  | 54456788 |          2 |
|          5 | RES  | 34523455 |          1 |
|          6 | CEL  | 34544555 |          3 |
|          7 | CEL  | 34557765 |          3 |
|          8 | COM  | 34235566 |          1 |
|          9 | RES  | 36285567 |          5 |
|         10 | CEL  | 97042985 |          2 |
|         11 | RES  | 68976565 |          9 |
|         12 | CEL  | 99676675 |          9 |
|         16 | COM  | 88687979 |         12 |
|         17 | COM  | 88965676 |         13 |
|         18 | CEL  | 89966809 |         15 |
|         19 | COM  | 88679978 |         16 |
|         20 | CEL  | 99675768 |         17 |
|         21 | RES  | 89965665 |         18 |
|         22 | RES  | 77455786 |         19 |
|         23 | RES  | 89766554 |         19 |
|         24 | RES  | 77755785 |         20 |
|         25 | COM  | 44522578 |         20 |
|         26 | COM  | 44522578 |         21 |
+------------+------+----------+------------+



/* 1- RELATORIO GERAL DE TODOS OS CLIENTES*/

SELECT CLIENTES.IDCLIENTE, CLIENTES.NOME, CLIENTES.SEXO, CLIENTES.EMAIL, CLIENTES.CPF, 
	   ENDERECOS.RUA, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, ENDERECOS.ESTADO, 
	   TELEFONES.NUMERO

FROM CLIENTES

INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
INNER JOIN TELEFONES
	ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE
ORDER BY IDCLIENTE;

+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                   | BAIRRO     | CIDADE         | ESTADO | NUMERO   |
+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 87668723 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 34523455 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 34235566 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 96567687557 | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | 54456788 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 96567687557 | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | 97042985 |
|         3 | ANA     | F    | ANA@IG.COM        | 86567587586 | RUA PRESITENTE VARGAS | JARDINS    | SAO PAULO      | SP     | 34544555 |
|         3 | ANA     | F    | ANA@IG.COM        | 86567587586 | RUA PRESITENTE VARGAS | JARDINS    | SAO PAULO      | SP     | 34557765 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 78558723 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 36285567 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES            | CASCADURA  | BELO HORIZONTE | MG     | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES            | CASCADURA  | BELO HORIZONTE | MG     | 99676675 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 565676778   | RUA NELSON MANDELA    | COPAGABANA | RIO DE JANEIRO | RJ     | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA       | CENTRO     | VITORIA        | ES     | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITÃO ANTUNES    | CENTRO     | CURITIBA       | PR     | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 34323565    | AV CARLOS BARROSO     | JARDINS    | SÃO PAULO      | SP     | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 124365767   | ALAMEDA SAMPAIO       | BOM RETIRO | CURITIBA       | PR     | 99675768 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA           | LAPA       | SÃO PAULO      | SP     | 89965665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERÔNIMO          | CENTRO     | RIO DE JANEIRO | RJ     | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERÔNIMO          | CENTRO     | RIO DE JANEIRO | RJ     | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 44522578 |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 44522578 |
+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+

/*OU*/

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
	   T.NUMERO

FROM CLIENTES AS C

INNER JOIN ENDERECOS AS E
	ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONES AS T
	ON C.IDCLIENTE = T.ID_CLIENTE
ORDER BY C.IDCLIENTE;

+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                   | BAIRRO     | CIDADE         | ESTADO | NUMERO   |
+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 87668723 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 34523455 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | 34235566 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 96567687557 | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | 54456788 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 96567687557 | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | 97042985 |
|         3 | ANA     | F    | ANA@IG.COM        | 86567587586 | RUA PRESITENTE VARGAS | JARDINS    | SAO PAULO      | SP     | 34544555 |
|         3 | ANA     | F    | ANA@IG.COM        | 86567587586 | RUA PRESITENTE VARGAS | JARDINS    | SAO PAULO      | SP     | 34557765 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 78558723 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 16567487837 | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | 36285567 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES            | CASCADURA  | BELO HORIZONTE | MG     | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES            | CASCADURA  | BELO HORIZONTE | MG     | 99676675 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 565676778   | RUA NELSON MANDELA    | COPAGABANA | RIO DE JANEIRO | RJ     | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA       | CENTRO     | VITORIA        | ES     | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITÃO ANTUNES    | CENTRO     | CURITIBA       | PR     | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 34323565    | AV CARLOS BARROSO     | JARDINS    | SÃO PAULO      | SP     | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 124365767   | ALAMEDA SAMPAIO       | BOM RETIRO | CURITIBA       | PR     | 99675768 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA           | LAPA       | SÃO PAULO      | SP     | 89965665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERÔNIMO          | CENTRO     | RIO DE JANEIRO | RJ     | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERÔNIMO          | CENTRO     | RIO DE JANEIRO | RJ     | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 44522578 |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | 44522578 |
+-----------+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+----------+



/*2- RELATORIO DE HOMENS*/

SELECT * FROM CLIENTES
WHERE SEXO = 'M';

+-----------+---------+------+-----------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF         |
+-----------+---------+------+-----------------+-------------+
|         1 | JOAO    | M    | JOAO@IG.COM     | 76567587887 |
|         2 | CARLOS  | M    | CARLOS@IG.COM   | 96567687557 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 16567487837 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM | 7678567     |
|        15 | EDUARDO | M    | NULL            | 54376457    |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM | 34323565    |
|        17 | ANTONIO | M    | ANTONIO@IG.COM  | 124365767   |
+-----------+---------+------+-----------------+-------------+

/*3- QUANTIDADE DE HOMENS E MULHERES*/

SELECT SUM(SEXO) AS TOTAL_DE_PESSOAS FROM CLIENTES ORDER BY SEXO;

+------------------+
| TOTAL_DE_PESSOAS |
+------------------+
|               28 |
+------------------+

SELECT SEXO, SUM(SEXO) AS TOTAL_DE_PESSOAS FROM CLIENTES GROUP BY SEXO;


SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTES
GROUP BY SEXO;

/*4- IDS E MEIAL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E NÃO TENHAM CELULAR*/

SELECT CLIENTES.NOME, CLIENTES.IDCLIENTE, CLIENTES.EMAIL, ENDERECOS.BAIRRO, ENDERECOS.CIDADE
FROM CLIENTES
	INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
WHERE CLIENTES.SEXO = 'F' AND ENDERECOS.BAIRRO = 'CENTRO' AND ENDERECOS.ESTADO = 'RJ';

/*RESPOSTA*/

SELECT CLIENTES.IDCLIENTE, CLIENTES.EMAIL
FROM CLIENTES
	INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
WHERE CLIENTES.SEXO = 'F' AND ENDERECOS.BAIRRO = 'CENTRO' AND ENDERECOS.ESTADO = 'RJ'
ORDER BY IDCLIENTE;


+-----------+-------------------+
| IDCLIENTE | EMAIL             |
+-----------+-------------------+
|        19 | CARMEM@IG.COM     |
|        20 | ADRIANA@GMAIL.COM |
|        21 | JOICE@GMAIL.COM   |
+-----------+-------------------+


/*USANDO DML*/

SEELECT * FROM CLIENTES 
WHERE IDCLIENTE = 12
OR IDCLIENTE = 13
OR IDCLIENTE = 18
OR IDCLIENTE = 18
OR IDCLIENTE = 19;

SELECT * FROM CLIENTES
WHERE IDCLIENTE IN (12,13,18,19);
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 565676778 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789  |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+

/*ATUALIZAR AS LINHAS FICOU MAIS FÁCIL*/

UPDATE CLIENTES SET SEXO = 'F'
WHERE IDCLIENTE IN (12,13,18,19);

SELECT CLIENTES.NOME, CLIENTES.IDCLIENTE, CLIENTES.EMAIL, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, TELEFONES.TIPO
	FROM CLIENTES
	INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
	INNER JOIN TELEFONES 
	ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE
WHERE CLIENTES.SEXO = 'F' 
AND ENDERECOS.BAIRRO = 'CENTRO' 
AND ENDERECOS.CIDADE = 'RIO DE JANEIRO';

SELECT CLIENTES.NOME, CLIENTES.IDCLIENTE, CLIENTES.EMAIL, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, TELEFONES.TIPO
	FROM CLIENTES
	INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
	INNER JOIN TELEFONES 
	ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE
WHERE CLIENTES.SEXO = 'F' 
AND ENDERECOS.BAIRRO = 'CENTRO' 
AND ENDERECOS.CIDADE = 'RIO DE JANEIRO'
AND (TELEFONES.TIPO = 'RES' OR TELEFONES.TIPO = 'COM');

+---------+-----------+-------------------+--------+----------------+--------+----------------+------+
| NOME    | IDCLIENTE | EMAIL             | BAIRRO | CIDADE         | BAIRRO | CIDADE         | TIPO |
+---------+-----------+-------------------+--------+----------------+--------+----------------+------+
| CARMEM  |        19 | CARMEM@IG.COM     | CENTRO | RIO DE JANEIRO | CENTRO | RIO DE JANEIRO | RES  |
| CARMEM  |        19 | CARMEM@IG.COM     | CENTRO | RIO DE JANEIRO | CENTRO | RIO DE JANEIRO | RES  |
| ADRIANA |        20 | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | CENTRO | RIO DE JANEIRO | RES  |
| ADRIANA |        20 | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO | CENTRO | RIO DE JANEIRO | COM  |
+---------+-----------+-------------------+--------+----------------+--------+----------------+------+


SELECT CLIENTES.NOME, CLIENTES.IDCLIENTE, CLIENTES.SEXO, CLIENTES.EMAIL, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, TELEFONES.TIPO
	FROM CLIENTES
	INNER JOIN ENDERECOS
	ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
	INNER JOIN TELEFONES 
	ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE
WHERE CLIENTES.SEXO = 'F' 
AND ENDERECOS.BAIRRO = 'CENTRO' 
AND ENDERECOS.CIDADE = 'RIO DE JANEIRO'
AND TIPO IN ('RES','COM');


/*6- PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRIO COM O NOME,
 EMAIL E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO VOCÊ 
 TERÁ QUE PASSAR A QUERY PARA GERAR O RELATÓRIO PARA O PROGRAMADOR.*/


SELECT * FROM ENDERECOS;

SELECT C.NOME, C.EMAIL, T.NUMERO, E.CIDADE
FROM CLIENTES AS C
INNER JOIN TELEFONES AS T
	ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS AS E
	ON C.IDCLIENTE = E.ID_CLIENTE

+---------+-------------------+----------+----------------+
| NOME    | EMAIL             | NUMERO   | CIDADE         |
+---------+-------------------+----------+----------------+
| JORGE   | JORGE@IG.COM      | 78458743 | VITORIA        |
| JORGE   | JORGE@IG.COM      | 78558723 | VITORIA        |
| JOAO    | JOAO@IG.COM       | 87668723 | RIO DE JANEIRO |
| CARLOS  | CARLOS@IG.COM     | 54456788 | RIO DE JANEIRO |
| JOAO    | JOAO@IG.COM       | 34523455 | RIO DE JANEIRO |
| ANA     | ANA@IG.COM        | 34544555 | SAO PAULO      |
| ANA     | ANA@IG.COM        | 34557765 | SAO PAULO      |
| JOAO    | JOAO@IG.COM       | 34235566 | RIO DE JANEIRO |
| JORGE   | JORGE@IG.COM      | 36285567 | VITORIA        |
| CARLOS  | CARLOS@IG.COM     | 97042985 | RIO DE JANEIRO |
| FLAVIO  | FLAVIO@IG.COM     | 68976565 | BELO HORIZONTE |
| FLAVIO  | FLAVIO@IG.COM     | 99676675 | BELO HORIZONTE |
| KARLA   | KARLA@GMAIL.COM   | 88687979 | RIO DE JANEIRO |
| DANIELE | DANIELE@GMAIL.COM | 88965676 | VITORIA        |
| EDUARDO | NULL              | 89966809 | CURITIBA       |
| ANTONIO | ANTONIO@UOL.COM   | 88679978 | SÃO PAULO      |
| ANTONIO | ANTONIO@IG.COM    | 99675768 | CURITIBA       |
| ELAINE  | ELAINE@GLOBO.COM  | 89965665 | SÃO PAULO      |
| CARMEM  | CARMEM@IG.COM     | 77455786 | RIO DE JANEIRO |
| CARMEM  | CARMEM@IG.COM     | 89766554 | RIO DE JANEIRO |
| ADRIANA | ADRIANA@GMAIL.COM | 77755785 | RIO DE JANEIRO |
| ADRIANA | ADRIANA@GMAIL.COM | 44522578 | RIO DE JANEIRO |
| JOICE   | JOICE@GMAIL.COM   | 44522578 | RIO DE JANEIRO |
+---------+-------------------+----------+----------------+

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTES AS C
INNER JOIN TELEFONES AS T
	ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS AS E
	ON C.IDCLIENTE = E.ID_CLIENTE

WHERE E.ESTADO = 'RJ'
AND T.TIPO = 'CEL'
ORDER BY IDCLIENTE;

+--------+-----------------+----------+
| NOME   | EMAIL           | CELULAR  |
+--------+-----------------+----------+
| JOAO   | JOAO@IG.COM     | 87668723 |
| CARLOS | CARLOS@IG.COM   | 97042985 |
| JOICE  | JOICE@GMAIL.COM | 44522578 |
+--------+-----------------+----------+

/*7- PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU 
UM RELATÓRIO COM NOME, EMAIL E TELEFONE CELULAR DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO*/

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR, T.TIPO ,E.ESTADO 
FROM CLIENTES AS C
INNER JOIN TELEFONES AS T
	ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS AS E
	ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'F'
AND TIPO = 'CEL'
AND ESTADO = 'SP'
ORDER BY NOME;

+------+------------+----------+--------+
| NOME | EMAIL      | CELULAR  | ESTADO |
+------+------------+----------+--------+
| ANA  | ANA@IG.COM | 34544555 | SP     |
| ANA  | ANA@IG.COM | 34557765 | SP     |
+------+------------+----------+--------+