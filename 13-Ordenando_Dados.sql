-- ORDER BY

CREATE TABLE ALUNOS(

   NUMERO INT,
   NOME VARCHAR(30)

);

INSERT INTO ALUNOS VALUES(3, 'JOÃO');
INSERT INTO ALUNOS VALUES(2, 'WILLIAM');
INSERT INTO ALUNOS VALUES(1, 'FERNANDO');
INSERT INTO ALUNOS VALUES(2, 'RODRIGO');
INSERT INTO ALUNOS VALUES(2, 'LUANA');
INSERT INTO ALUNOS VALUES(5, 'MARIA');
INSERT INTO ALUNOS VALUES(4, 'PEDRO');
INSERT INTO ALUNOS VALUES(4, 'JULIANO');
INSERT INTO ALUNOS VALUES(8, 'JANDERLAN');
INSERT INTO ALUNOS VALUES(10, 'JUNNIO');
INSERT INTO ALUNOS VALUES(8, 'CARLOS');
INSERT INTO ALUNOS VALUES(16, 'JULIAN');
INSERT INTO ALUNOS VALUES(11, 'WESLEY');
INSERT INTO ALUNOS VALUES(13, 'GABRIAL');

SELECT * FROM ALUNOS;
+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|      3 | JOÃO      |
|      2 | WILLIAM   |
|      1 | FERNANDO  |
|      2 | RODRIGO   |
|      2 | LUANA     |
|      5 | MARIA     |
|      4 | PEDRO     |
|      4 | JULIANO   |
|      8 | JANDERLAN |
|     10 | JUNNIO    |
|      8 | CARLOS    |
|     16 | JULIAN    |
|     11 | WESLEY    |
|     13 | GABRIAL   |
+--------+-----------+

SELECT * FROM ALUNOS
ORDER BY 1;

+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|      1 | FERNANDO  |
|      2 | WILLIAM   |
|      2 | RODRIGO   |
|      2 | LUANA     |
|      3 | JOÃO      |
|      4 | PEDRO     |
|      4 | JULIANO   |
|      5 | MARIA     |
|      8 | JANDERLAN |
|      8 | CARLOS    |
|     10 | JUNNIO    |
|     11 | WESLEY    |
|     13 | GABRIAL   |
|     16 | JULIAN    |
+--------+-----------+

-- ORDENANDO POR MAIS DE UMA COLUNA

SELECT * FROM ALUNOS
ORDER BY 1, NOME;

+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|      1 | FERNANDO  |
|      2 | LUANA     |
|      2 | RODRIGO   |
|      2 | WILLIAM   |
|      3 | JOÃO      |
|      4 | JULIANO   |
|      4 | PEDRO     |
|      5 | MARIA     |
|      8 | CARLOS    |
|      8 | JANDERLAN |
|     10 | JUNNIO    |
|     11 | WESLEY    |
|     13 | GABRIAL   |
|     16 | JULIAN    |
+--------+-----------+

/*ORDER BY DESC / ASC*/

SELECT * FROM ALUNOS
ORDER BY 1, 2;

SELECT * FROM ALUNOS
ORDER BY 1 ASC;

-- VEJA QUE A COLUNA NÚMERO ESTÁ INDO DO MENOR PARA O MAIOR.
+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|      1 | FERNANDO  |
|      2 | WILLIAM   |
|      2 | RODRIGO   |
|      2 | LUANA     |
|      3 | JOÃO      |
|      4 | PEDRO     |
|      4 | JULIANO   |
|      5 | MARIA     |
|      8 | JANDERLAN |
|      8 | CARLOS    |
|     10 | JUNNIO    |
|     11 | WESLEY    |
|     13 | GABRIAL   |
|     16 | JULIAN    |
+--------+-----------+



SELECT * FROM ALUNOS
ORDER BY 1 DESC;

-- VEJA QUE A COLUNA NÚMERO ESTÁ INDO DO MAIOR PARA O MENOR.
+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|     16 | JULIAN    |
|     13 | GABRIAL   |
|     11 | WESLEY    |
|     10 | JUNNIO    |
|      8 | JANDERLAN |
|      8 | CARLOS    |
|      5 | MARIA     |
|      4 | PEDRO     |
|      4 | JULIANO   |
|      3 | JOÃO      |
|      2 | WILLIAM   |
|      2 | RODRIGO   |
|      2 | LUANA     |
|      1 | FERNANDO  |
+--------+-----------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;

+--------+-----------+
| NUMERO | NOME      |
+--------+-----------+
|     16 | JULIAN    |
|     13 | GABRIAL   |
|     11 | WESLEY    |
|     10 | JUNNIO    |
|      8 | JANDERLAN |
|      8 | CARLOS    |
|      5 | MARIA     |
|      4 | PEDRO     |
|      4 | JULIANO   |
|      3 | JOÃO      |
|      2 | WILLIAM   |
|      2 | RODRIGO   |
|      2 | LUANA     |
|      1 | FERNANDO  |
+--------+-----------+


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

ORDER BY ESTADO; ---<--- AQUI

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 78558723 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 87668723 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 54456788 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 34523455 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 34235566 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 36285567 | CENTRO     | VITORIA        | ES     |
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

SELECT * FROM V_RELATORIO 
ORDER BY 1; --<--ESSE UM É O NÚMERO DA COLUNA.

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SÃO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 99675768 | BOM RETIRO | CURITIBA       | PR     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 54456788 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 97042985 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89965665 | LAPA       | SÃO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | BELO HORIZONTE | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99676675 | CASCADURA  | BELO HORIZONTE | MG     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 87668723 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 34523455 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 34235566 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 78558723 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 36285567 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPAGABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+