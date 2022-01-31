SELECT NOW();
+---------------------+
| now()               |
+---------------------+
| 2022-01-28 09:50:23 |
+---------------------+


 /*NOME, EMAIL, NUMERO, ESTADO*/

 SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
 FROM CLIENTES C
 INNER JOIN TELEFONES T
 	ON C.IDCLIENTE = T.ID_CLIENTE
 INNER JOIN ENDERECOS E
 	ON C.IDCLIENTE = E.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 78558723 |
| JOAO    | JOAO@IG.COM       | RJ     | 87668723 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 54456788 |
| JOAO    | JOAO@IG.COM       | RJ     | 34523455 |
| ANA     | ANA@IG.COM        | SP     | 34544555 |
| ANA     | ANA@IG.COM        | SP     | 34557765 |
| JOAO    | JOAO@IG.COM       | RJ     | 34235566 |
| JORGE   | JORGE@IG.COM      | ES     | 36285567 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 97042985 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 99676675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88965676 |
| EDUARDO | NULL              | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 99675768 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 89965665 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+

/*É feio aparecer o email nulo*/


 SELECT C.NOME, 
		IFNULL(C.EMAIL,'NÃO TEM EMAIL'), 
		E.ESTADO, 
		T.NUMERO
 FROM CLIENTES C
 INNER JOIN TELEFONES T
 	ON C.IDCLIENTE = T.ID_CLIENTE
 INNER JOIN ENDERECOS E
 	ON C.IDCLIENTE = E.ID_CLIENTE;
+---------+---------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'NÃO TEM EMAIL') | ESTADO | NUMERO   |
+---------+---------------------------------+--------+----------+
| JORGE   | JORGE@IG.COM                    | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                    | ES     | 78558723 |
| JOAO    | JOAO@IG.COM                     | RJ     | 87668723 |
| CARLOS  | CARLOS@IG.COM                   | RJ     | 54456788 |
| JOAO    | JOAO@IG.COM                     | RJ     | 34523455 |
| ANA     | ANA@IG.COM                      | SP     | 34544555 |
| ANA     | ANA@IG.COM                      | SP     | 34557765 |
| JOAO    | JOAO@IG.COM                     | RJ     | 34235566 |
| JORGE   | JORGE@IG.COM                    | ES     | 36285567 |
| CARLOS  | CARLOS@IG.COM                   | RJ     | 97042985 |
| FLAVIO  | FLAVIO@IG.COM                   | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM                   | MG     | 99676675 |
| KARLA   | KARLA@GMAIL.COM                 | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM               | ES     | 88965676 |
| EDUARDO | NÃO TEM EMAIL                   | PR     | 89966809 | <--- aqui não tem email
| ANTONIO | ANTONIO@UOL.COM                 | SP     | 88679978 |
| ANTONIO | ANTONIO@IG.COM                  | PR     | 99675768 |
| ELAINE  | ELAINE@GLOBO.COM                | SP     | 89965665 |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM                 | RJ     | 44522578 |
+---------+---------------------------------+--------+----------+


/*OU*/

 SELECT C.NOME, 
		IFNULL(C.EMAIL,'************'), 
		E.ESTADO, 
		T.NUMERO
 FROM CLIENTES C
 INNER JOIN TELEFONES T
 	ON C.IDCLIENTE = T.ID_CLIENTE
 INNER JOIN ENDERECOS E
 	ON C.IDCLIENTE = E.ID_CLIENTE;
+---------+--------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'************') | ESTADO | NUMERO   | <--- isso aquio não pode ocorrer
+---------+--------------------------------+--------+----------+
| JORGE   | JORGE@IG.COM                   | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                   | ES     | 78558723 |
| JOAO    | JOAO@IG.COM                    | RJ     | 87668723 |
| CARLOS  | CARLOS@IG.COM                  | RJ     | 54456788 |
| JOAO    | JOAO@IG.COM                    | RJ     | 34523455 |
| ANA     | ANA@IG.COM                     | SP     | 34544555 |
| ANA     | ANA@IG.COM                     | SP     | 34557765 |
| JOAO    | JOAO@IG.COM                    | RJ     | 34235566 |
| JORGE   | JORGE@IG.COM                   | ES     | 36285567 |
| CARLOS  | CARLOS@IG.COM                  | RJ     | 97042985 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 99676675 |
| KARLA   | KARLA@GMAIL.COM                | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM              | ES     | 88965676 |
| EDUARDO | ************                   | PR     | 89966809 | <--- aqui
| ANTONIO | ANTONIO@UOL.COM                | SP     | 88679978 |
| ANTONIO | ANTONIO@IG.COM                 | PR     | 99675768 |
| ELAINE  | ELAINE@GLOBO.COM               | SP     | 89965665 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM                | RJ     | 44522578 |
+---------+--------------------------------+--------+----------+


/*correção*/

 SELECT C.NOME, 
		IFNULL(C.EMAIL,'************') AS "EMAIL", 
		E.ESTADO, 
		T.NUMERO
 FROM CLIENTES C
 INNER JOIN TELEFONES T
 	ON C.IDCLIENTE = T.ID_CLIENTE
 INNER JOIN ENDERECOS E
 	ON C.IDCLIENTE = E.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   | <--- sumiu
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 78558723 |
| JOAO    | JOAO@IG.COM       | RJ     | 87668723 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 54456788 |
| JOAO    | JOAO@IG.COM       | RJ     | 34523455 |
| ANA     | ANA@IG.COM        | SP     | 34544555 |
| ANA     | ANA@IG.COM        | SP     | 34557765 |
| JOAO    | JOAO@IG.COM       | RJ     | 34235566 |
| JORGE   | JORGE@IG.COM      | ES     | 36285567 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 97042985 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 99676675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88965676 |
| EDUARDO | ************      | PR     | 89966809 |<--- aqui tá ok
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 99675768 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 89965665 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+	 