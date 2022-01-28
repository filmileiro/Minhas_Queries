INSERT INTO CLIENTES VALUES(NULL, 'PAULA', 'M', 'NULL', '77437493');
INSERT INTO ENDERECOS VALUES(NULL, 'RUIA JOAQUIM SILVA', 'ALVORADA', 'NITEROI', 'RJ', 7 );

SELECT * FROM CLIENTES;



/*CORRIGINDO LINHAS*/

SELECT * FROM CLIENTES
WHERE IDCLIENTE = 7;

+-----------+-------+------+-------+----------+
| IDCLIENTE | NOME  | SEXO | EMAIL | CPF      |
+-----------+-------+------+-------+----------+
|         7 | PAULA | F    | NULL  | 77437493 |
+-----------+-------+------+-------+----------+


UPDATE CLIENTES 
SET SEXO = 'F'
WHERE
IDCLIENTE = 7;


/*DELETE*/

SELECT * FROM CLIENTES
WHERE IDCLIENTE = 8;

+-----------+------+------+-------+------+
| IDCLIENTE | NOME | SEXO | EMAIL | CPF  |
+-----------+------+------+-------+------+
|         8 | XXX  | M    | NULL  | XXX  |
+-----------+------+------+-------+------+

INSERT INTO CLIENTES VALUES(NULL, 'XXX', 'M', NULL, 'XXX');

DELETE FROM CLIENTES
WHERE IDCLIENTE = 8;

+-----------+--------+------+---------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF         |
/7
+-----------+--------+------+---------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 96567687557 |
|         3 | ANA    | F    | ANA@IG.COM    | 86567587586 |
|         4 | CLARA  | F    | NULL          | 96588589837 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 16567487837 |
|         6 | CELIA  | F    | CELIA@IG.COM  | 66534587881 |
|         7 | PAULA  | F    | NULL          | 77437493    |
+-----------+--------+------+---------------+-------------+

