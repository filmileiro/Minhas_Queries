SELECT NOW();
+---------------------+
| now()               |
+---------------------+
| 2022-01-28 09:50:23 |
+---------------------+


 /*NOME, EMAIL, NUMERO, ESTADO*/

 SELECT C.NOME, C.EMAIL, T.NUMERO, E.ESTADO
 FROM CLIENTES C
 INNER JOIN TELEFONES T
 	ON C.IDCLIENTE = T.ID_CLIENTE
 INNER JOIN ENDERECOS E
 	ON C.IDCLIENTE = E.ID_CLIENTE;

+---------+-------------------+----------+--------+
| NOME    | EMAIL             | NUMERO   | ESTADO |
+---------+-------------------+----------+--------+
| JORGE   | JORGE@IG.COM      | 78458743 | ES     |
| JORGE   | JORGE@IG.COM      | 78558723 | ES     |
| JOAO    | JOAO@IG.COM       | 87668723 | RJ     |
| CARLOS  | CARLOS@IG.COM     | 54456788 | RJ     |
| JOAO    | JOAO@IG.COM       | 34523455 | RJ     |
| ANA     | ANA@IG.COM        | 34544555 | SP     |
| ANA     | ANA@IG.COM        | 34557765 | SP     |
| JOAO    | JOAO@IG.COM       | 34235566 | RJ     |
| JORGE   | JORGE@IG.COM      | 36285567 | ES     |
| CARLOS  | CARLOS@IG.COM     | 97042985 | RJ     |
| FLAVIO  | FLAVIO@IG.COM     | 68976565 | MG     |
| FLAVIO  | FLAVIO@IG.COM     | 99676675 | MG     |
| KARLA   | KARLA@GMAIL.COM   | 88687979 | RJ     |
| DANIELE | DANIELE@GMAIL.COM | 88965676 | ES     |
| EDUARDO | NULL              | 89966809 | PR     |
| ANTONIO | ANTONIO@UOL.COM   | 88679978 | SP     |
| ANTONIO | ANTONIO@IG.COM    | 99675768 | PR     |
| ELAINE  | ELAINE@GLOBO.COM  | 89965665 | SP     |
| CARMEM  | CARMEM@IG.COM     | 77455786 | RJ     |
| CARMEM  | CARMEM@IG.COM     | 89766554 | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | 77755785 | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | 44522578 | RJ     |
| JOICE   | JOICE@GMAIL.COM   | 44522578 | RJ     |
+---------+-------------------+----------+--------+


