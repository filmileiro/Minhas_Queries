/*inserindo valores em views*/

INSERT INTO V_RELATORIO VALUES(
   'ANDREIA', 'F', 'ANDREIA@UOL.COM', 'CEL', '873547864', 'CENTRO', 'VITORIA', 'ES'
);

ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list

CREATE TABLE JOGADORES(

    IDJOGADOR INT,
    NOME VARCHAR (30),
    ESTADO VARCHAR(2)
);

INSERT INTO JOGADORES VALUES(1, 'GUERREIRO', 'RS');
INSERT INTO JOGADORES VALUES(2, 'GABIGOL', 'RJ');
INSERT INTO JOGADORES VALUES(3, 'GANSO', 'RJ');
INSERT INTO JOGADORES VALUES(4, 'NENE', 'RJ');
INSERT INTO JOGADORES VALUES(5, 'LOVE', 'SP');

+-----------+-----------+--------+
| IDJOGADOR | NOME      | ESTADO |
+-----------+-----------+--------+
|         1 | GUERREIRO | RS     |
|         2 | GABIGOL   | RJ     |
|         3 | GANSO     | RJ     |
|         4 | NENE      | RJ     |
|         5 | LOVE      | SP     |
+-----------+-----------+--------+

CREATE VIEW v_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

+--------------------+
| Tables_in_comercio |
+--------------------+
| clientes           |
| enderecos          |
| jogadores          |
| telefones          |
| v_jogadores        |<--- aqui
| v_relatorio        |
+--------------------+

/*AGORA TEMOS DUAS VIEWS
A VIEW RELATÓRIO POSSUI JOIN NA QUERIE E A VIEW JOGADORES NÃO POSSUI QUANDO TENTAMOS 
FAZER OPERAÇÕES DE DML NÃO PODEMOS FAZER COM VIEWS COM JOIN*/

-- EX: 
INSERT INTO V_RELATORIO VALUES(
   'ANDREIA', 'F', 'ANDREIA@UOL.COM', 'CEL', '873547864', 'CENTRO', 'VITORIA', 'ES'
);

ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list

-- VEJA QUE APRESENTA ERRO

-- NÃO POSSO FAZER INSERTS E DELETS EM VIEWS COM  JOIN.

--PORÉM 

-- É PERMITIDO EFETUAR UPDATES EM VIEWS COM JOIN

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

-- FAZENDO UPDATE NA VIEW

UPDATE V_RELATORIO
SET NOME = 'JOSE'
WHERE NOME = 'JORGE';

-- VEJA QUE DEU CERTO
--Query OK, 1 row affected (0.01 sec)
--Rows matched: 1  Changed: 1  Warnings: 0

-- VEJA
SELECT * FROM V_RELATORIO;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |<--- ONDE HAVIA JORGE AGORA É JOSÉ
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

-- A VIEW É TIPO UM PONTEIRO. ELA VAI LÁ NA TABELA E ALTERTA, PORÉM, ELA NÃO PODE
-- DELETAR OU ADCIONAR NOVAS LINHAS OU COLUNAS NA TABELA ISSO NA CONDIÇÃO JOIN.


-- CONDIÇÃO SEM JOIN:

DELETE FROM v_JOGADORES
WHERE NOME = 'GUERREIRO';

Query OK, 1 row affected (0.01 sec)

SELECT * FROM V_JOGADORES;

--GUERREIRO SUMIU
+---------+--------+
| NOME    | ESTADO |
+---------+--------+
| GABIGOL | RJ     |
| GANSO   | RJ     |
| NENE    | RJ     |
| LOVE    | SP     |
+---------+--------+

-- SELECIONANDO A TABELA JOGADORES.
SELECT * FROM JOGADORES;
--VEJA QUE GUERREIRO FOI DELETADO DA TABELA PRINCIPAL
+-----------+---------+--------+
| IDJOGADOR | NOME    | ESTADO |
+-----------+---------+--------+
|         2 | GABIGOL | RJ     |
|         3 | GANSO   | RJ     |
|         4 | NENE    | RJ     |
|         5 | LOVE    | SP     |
+-----------+---------+--------+

--INSERINDO DADOS NA TABELA: 
INSERT INTO JOGADORES VALUES(1,'GUERREIRO', 'RS');
--INSERIU
mysql> SELECT * FROM V_JOGADORES;
+-----------+--------+
| NOME      | ESTADO |
+-----------+--------+
| GABIGOL   | RJ     |
| GANSO     | RJ     |
| NENE      | RJ     |
| LOVE      | SP     |
| GUERREIRO | RS     |
+-----------+--------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM JOGADORES;
+-----------+-----------+--------+
| IDJOGADOR | NOME      | ESTADO |
+-----------+-----------+--------+
|         2 | GABIGOL   | RJ     |
|         3 | GANSO     | RJ     |
|         4 | NENE      | RJ     |
|         5 | LOVE      | SP     |
|         1 | GUERREIRO | RS     |
+-----------+-----------+--------+
5 rows in set (0.00 sec)

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ANA     | F    | ANA@IG.COM        | CEL  | 34544555 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 34557765 | JARDINS    | SAO PAULO      | SP     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPAGABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89965665 | LAPA       | SÃO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

