-- TABELA DE CLIENTES

-- PARA SABER DETALHES SOBRE CADA TABELA:
DESC CLIENTES;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(30)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

--ISERINDO
INSERT INTO CLIENTES VALUES(NULL,'JOAO', 'M', 'JOAO@IG.COM', '76567587887');
INSERT INTO CLIENTES VALUES(NULL,'CARLOS', 'M', 'CARLOS@IG.COM', '96567687557');
INSERT INTO CLIENTES VALUES(NULL,'ANA', 'F', 'ANA@IG.COM', '86567587586');
INSERT INTO CLIENTES VALUES(NULL,'CLARA', 'F', NULL, '96588589837');
INSERT INTO CLIENTES VALUES(NULL,'JORGE', 'M', 'JORGE@IG.COM', '16567487837');
INSERT INTO CLIENTES VALUES(NULL,'CELIA', 'F', 'CELIA@IG.COM', '66534587881');

SELECT * FROM CLIENTES;

+-----------+--------+------+---------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF         |
+-----------+--------+------+---------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 76567587887 |
|         3 | CARLOS | M    | CARLOS@IG.COM | 96567687557 |
|         4 | ANA    | F    | ANA@IG.COM    | 86567587586 |
|         5 | CLARA  | F    | NULL          | 96588589837 |
|         6 | JORGE  | M    | JORGE@IG.COM  | 16567487837 |
|         7 | CELIA  | F    | CELIA@IG.COM  | 66534587881 |
+-----------+--------+------+---------------+-------------+


-- TABELA ENDEREÇOS

DESC ENDERECOS;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | varchar(2)  | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

--INSERINDO
INSERT INTO ENDERECOS VALUES(NULL,'RUA ANTONIO SA', 'CENTRO', 'B. HORIZONTE', 'MG', 4);
INSERT INTO ENDERECOS VALUES(NULL,'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);
INSERT INTO ENDERECOS VALUES(NULL,'RUA PRESITENTE VARGAS', 'JARDINS', 'SAO PAULO', 'SP', 3);
INSERT INTO ENDERECOS VALUES(NULL,'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 2);
INSERT INTO ENDERECOS VALUES(NULL,'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 6);
INSERT INTO ENDERECOS VALUES(NULL,'RUA URUGUAIANA', 'CENTRO', 'VITORISO', 'ES', 5);

SELECT * FROM ENDERFECOS;
+------------+-----------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                   | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+-----------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO SA        | CENTRO   | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES    | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRESITENTE VARGAS | JARDINS  | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA         | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR        | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA        | CENTRO   | VITORISO       | ES     |          5 |
+------------+-----------------------+----------+----------------+--------+------------+


-- TABELA TELEFONES

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

--INSERINDO
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '78458743', 5);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '78558723', 5);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '87668723', 1);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '54456788', 2);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '34523455', 1);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '34544555', 3);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '34557765', 3);
INSERT INTO TELEFONES VALUES(NULL, 'COM', '34235566', 1);
INSERT INTO TELEFONES VALUES(NULL, 'RES', '36285567', 5);
INSERT INTO TELEFONES VALUES(NULL, 'CEL', '97042985', 2);

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
+------------+------+----------+------------+

