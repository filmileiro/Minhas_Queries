-- Com multiplas tabelas.


/*NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO*/
SELECT CLIENTES.NOME, CLIENTES.SEXO, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, TELEFONES.TIPO, TELEFONES.NUMERO
FROM CLIENTES
INNER JOIN ENDERECOS
ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
INNER JOIN TELEFONES
ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87668723 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 34523455 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 34235566 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54456788 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 97042985 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 34544555 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 34557765 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 78558723 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 36285567 |
+--------+------+---------+----------------+------+----------+

SELECT CLIENTES.NOME, CLIENTES.SEXO, ENDERECOS.BAIRRO, ENDERECOS.CIDADE, TELEFONES.TIPO, TELEFONES.NUMERO
FROM CLIENTES
INNER JOIN ENDERECOS
ON CLIENTES.IDCLIENTE = ENDERECOS.ID_CLIENTE
INNER JOIN TELEFONES
ON CLIENTES.IDCLIENTE = TELEFONES.ID_CLIENTE
WHERE SEXO = 'M'
ORDER BY NOME;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54456788 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 97042985 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87668723 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 34523455 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 34235566 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 78558723 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 36285567 |
+--------+------+---------+----------------+------+----------+

/*PNTEIRAMENTO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTES C
INNER JOIN ENDERECOS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONES T
ON C.IDCLIENTE = T.ID_CLIENTE
ORDER BY NOME;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 34544555 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 34557765 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54456788 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 97042985 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87668723 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 34523455 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 34235566 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 78558723 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 36285567 |
+--------+------+---------+----------------+------+----------+

