USE COMERCIO;

SHOW TABLES;
-- RESULTADO: 
+--------------------+
| Tables_in_comercio |
+--------------------+
| clientes           |
| enderecos          |
| telefones          |
+--------------------+

SELECT NOW() AS DATA_ATUAL;
-- RESULTADO: 
+---------------------+
| DATA_ATUAL          |
+---------------------+
| 2022-01-26 13:40:22 |
+---------------------+

SELECT 2 + 2 AS SOMA;
-- RESULTADO:
+------+
| SOMA |
+------+
|    4 |
+------+

-- SELEÇÃO: 

SELECT NOME, SEXO, EMAIL -- PROJEÇÃO
FROM CLIENTES -- ORIGEM
WHERE SEXO = 'F'; -- SELEÇÃO

+-------+------+--------------+
| NOME  | SEXO | EMAIL        | -- SELET PROJEÇÃO
+-------+------+--------------+
| ANA   | F    | ANA@IG.COM   | -- RESULTADOS
| CLARA | F    | NULL         |
| CELIA | F    | CELIA@IG.COM |
+-------+------+--------------+

SELECT NUMERO -- PROJEÇÃO
FROM TELEFONES -- ORIGEM
WHERE TIPO = 'CEL'; -- SELEÇÃO

+----------+
| NUMERO   |
+----------+
| 78458743 |
| 87668723 |
| 34544555 |
| 34557765 |
| 97042985 |
+----------+


