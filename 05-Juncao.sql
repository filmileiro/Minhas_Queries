/*junção - join*/

SELECT NOME, EMAIL, IDCLIENTE 
FROM CLIENTES;

+--------+---------------+-----------+
| NOME   | EMAIL         | IDCLIENTE |
+--------+---------------+-----------+
| JOAO   | JOAO@IG.COM   |         1 |
| CARLOS | CARLOS@IG.COM |         2 |
| ANA    | ANA@IG.COM    |         3 |
| CLARA  | NULL          |         4 |
| JORGE  | JORGE@IG.COM  |         5 |
| CELIA  | CELIA@IG.COM  |         6 |
+--------+---------------+-----------+

 SELECT ID_CLIENTE, BAIRRO, CIDADE 
 FROM ENDERECOS;

-- TIVE QUE CORRIGIR A LINHA DA TABELA
UPDATE ENDERECOS SET
CIDADE = 'VITORIA'
WHERE
ID_CLIENTE = 5;

SELECT ID_CLIENTE, BAIRRO, CIDADE 
FROM ENDERECOS;

+------------+----------+----------------+
| ID_CLIENTE | BAIRRO   | CIDADE         |
+------------+----------+----------------+
|          4 | CENTRO   | B. HORIZONTE   |
|          1 | CENTRO   | RIO DE JANEIRO |
|          3 | JARDINS  | SAO PAULO      |
|          2 | ESTACIO  | RIO DE JANEIRO |
|          6 | FLAMENGO | RIO DE JANEIRO |
|          5 | CENTRO   | VITORIA        |
+------------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTES, ENDERECOS 
WHERE IDCLIENTE = ID_CLIENTE;

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+
SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTES, ENDERECOS 
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F';

+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | B. HORIZONTE   |
| CELIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTES
INNER JOIN ENDERECOS
ON IDCLIENTE = ID_CLIENTE;

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE -- PROJEÇÃO 
FROM CLIENTES -- ORIGEM 
    INNER JOIN ENDERECOS -- JUNÇÃO DE TABELA
    ON IDCLIENTE = ID_CLIENTE -- NOME DAS TABELAS 
WHERE SEXO = 'F'; -- SELEÇÃO

+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | B. HORIZONTE   |
| CELIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTES 
    INNER JOIN TELEFONES
    ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'M'
ORDER BY NOME;

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| JOAO   | M    | JOAO@IG.COM   | CEL  | 87668723 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 34523455 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 34235566 |
| CARLOS | M    | CARLOS@IG.COM | COM  | 54456788 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 97042985 |
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78458743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 78558723 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 36285567 |
+--------+------+---------------+------+----------+

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTES 
    INNER JOIN TELEFONES
    ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'M'
ORDER BY NOME; -- ORDENANDO

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| CARLOS | M    | CARLOS@IG.COM | COM  | 54456788 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 97042985 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 87668723 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 34523455 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 34235566 |
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78458743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 78558723 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 36285567 |
+--------+------+---------------+------+----------+


