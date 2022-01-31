SELECT  C.SEXO, 
        C.EMAIL, 
        T.TIPO, 
        T.NUMERO, 
        E.BAIRRO, 
        E.CIDADE, 
        E.ESTADO
FROM CLIENTES C
INNER JOIN TELEFONES T
    ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS E
    ON C.IDCLIENTE = E.ID_CLIENTE;

| SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+------+-------------------+------+----------+------------+----------------+--------+
| M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| M    | JORGE@IG.COM      | RES  | 78558723 | CENTRO     | VITORIA        | ES     |
| M    | JOAO@IG.COM       | CEL  | 87668723 | CENTRO     | RIO DE JANEIRO | RJ     |
| M    | CARLOS@IG.COM     | COM  | 54456788 | ESTACIO    | RIO DE JANEIRO | RJ     |
| M    | JOAO@IG.COM       | RES  | 34523455 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| M    | JOAO@IG.COM       | COM  | 34235566 | CENTRO     | RIO DE JANEIRO | RJ     |
| M    | JORGE@IG.COM      | RES  | 36285567 | CENTRO     | VITORIA        | ES     |
| M    | CARLOS@IG.COM     | CEL  | 97042985 | ESTACIO    | RIO DE JANEIRO | RJ     |
| M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | BELO HORIZONTE | MG     |
| M    | FLAVIO@IG.COM     | CEL  | 99676675 | CASCADURA  | BELO HORIZONTE | MG     |
| F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPAGABANA | RIO DE JANEIRO | RJ     |
| F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| M    | NULL              | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SÃO PAULO      | SP     |
| M    | ANTONIO@IG.COM    | CEL  | 99675768 | BOM RETIRO | CURITIBA       | PR     |
| F    | ELAINE@GLOBO.COM  | RES  | 89965665 | LAPA       | SÃO PAULO      | SP     |
| F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+------+-------------------+------+----------+------------+----------------+--------+

/*criando uma view*/

CREATE VIEW RELATORIO AS 
SELECT  C.SEXO, 
        IFNULL(C.EMAIL, "*********") AS "E-MAIL", 
        T.TIPO, 
        T.NUMERO, 
        E.BAIRRO, 
        E.CIDADE, 
        E.ESTADO
FROM CLIENTES C
INNER JOIN TELEFONES T
    ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS E
    ON C.IDCLIENTE = E.ID_CLIENTE;


/*AGORA É SÓ DAR O COMANDO SELECT * FROM RELATORIO*/

SELECT * FROM RELATORIO;

+------+-------------------+------+----------+------------+----------------+--------+
| SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+------+-------------------+------+----------+------------+----------------+--------+
| M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| M    | JORGE@IG.COM      | RES  | 78558723 | CENTRO     | VITORIA        | ES     |
| M    | JOAO@IG.COM       | CEL  | 87668723 | CENTRO     | RIO DE JANEIRO | RJ     |
| M    | CARLOS@IG.COM     | COM  | 54456788 | ESTACIO    | RIO DE JANEIRO | RJ     |
| M    | JOAO@IG.COM       | RES  | 34523455 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| M    | JOAO@IG.COM       | COM  | 34235566 | CENTRO     | RIO DE JANEIRO | RJ     |
| M    | JORGE@IG.COM      | RES  | 36285567 | CENTRO     | VITORIA        | ES     |
| M    | CARLOS@IG.COM     | CEL  | 97042985 | ESTACIO    | RIO DE JANEIRO | RJ     |
| M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | BELO HORIZONTE | MG     |
| M    | FLAVIO@IG.COM     | CEL  | 99676675 | CASCADURA  | BELO HORIZONTE | MG     |
| F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPAGABANA | RIO DE JANEIRO | RJ     |
| F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| M    | *********         | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SÃO PAULO      | SP     |
| M    | ANTONIO@IG.COM    | CEL  | 99675768 | BOM RETIRO | CURITIBA       | PR     |
| F    | ELAINE@GLOBO.COM  | RES  | 89965665 | LAPA       | SÃO PAULO      | SP     |
| F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+------+-------------------+------+----------+------------+----------------+--------+

SHOW TABLES; <-- A VIEW FICA NO RELATORIO QUE VC CHAMA ESSE COMANDO.
+--------------------+
| Tables_in_comercio |
+--------------------+
| clientes           |
| enderecos          |
| relatorio          |<--- Aqui
| telefones          |
+--------------------+

SHOW DATABASES;

/*COMO APAGAR UMA VIEW*/

DROP VIEW V_RELATORIO;

/*FORMA DE CRIAR VIEW*/

--COM PREFIXO

CREATE VIEW V_RELATORIO AS 
SELECT  C.NOME,
        C.SEXO, 
        IFNULL(C.EMAIL, "CLIENTE SEM EMAIL") AS "E-MAIL", 
        T.TIPO, 
        T.NUMERO, 
        E.BAIRRO, 
        E.CIDADE, 
        E.ESTADO
FROM CLIENTES C
INNER JOIN TELEFONES T
    ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECOS E
    ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM V_RELATORIO;

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 78558723 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 87668723 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 54456788 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 34523455 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 34235566 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 36285567 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 97042985 | ESTACIO    | RIO DE JANEIRO | RJ     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | BELO HORIZONTE | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99676675 | CASCADURA  | BELO HORIZONTE | MG     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPAGABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SÃO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 99675768 | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89965665 | LAPA       | SÃO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+


-- SELECIONANDO A PRÓPIA VIEW
SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

+---------+----------+--------+
| NOME    | NUMERO   | ESTADO |
+---------+----------+--------+
| JORGE   | 78458743 | ES     |
| JORGE   | 78558723 | ES     |
| JOAO    | 87668723 | RJ     |
| CARLOS  | 54456788 | RJ     |
| JOAO    | 34523455 | RJ     |
| ANA     | 34544555 | SP     |
| ANA     | 34557765 | SP     |
| JOAO    | 34235566 | RJ     |
| JORGE   | 36285567 | ES     |
| CARLOS  | 97042985 | RJ     |
| FLAVIO  | 68976565 | MG     |
| FLAVIO  | 99676675 | MG     |
| KARLA   | 88687979 | RJ     |
| DANIELE | 88965676 | ES     |
| EDUARDO | 89966809 | PR     |
| ANTONIO | 88679978 | SP     |
| ANTONIO | 99675768 | PR     |
| ELAINE  | 89965665 | SP     |
| CARMEM  | 77455786 | RJ     |
| CARMEM  | 89766554 | RJ     |
| ADRIANA | 77755785 | RJ     |
| ADRIANA | 44522578 | RJ     |
| JOICE   | 44522578 | RJ     |
+---------+----------+--------+