-- TRATA-SE DE UM COMANDO DE DDL;

CREATE TABLE PRODUTOS(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME_PRODUTO VARCHAR (30) NOT NULL,
	PRECO INT,
	FRETE FLOAT(10,2) NOT NULL
);


/*ALTER TABLE : MUDANDO O NOME DE UMA COLUNA: CHANGE.*/
;
ALTER TABLE PRODUTOS
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;

DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+


ALTER TABLE PRODUTOS
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;

DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | YES  |     | NULL    |                | /*NULL = YES*/
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* MODIFY ALTERANDO O TIPO MODIFY*/

ALTER TABLE PRODUTOS
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;


/*ADCIONANDO COLUNAS*/

ALTER TABLE PRODUTOS
ADD PESO FLOAT(10,2) NOT NULL;

DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                | /*COLUNA ADICIONADA*/
+----------------+-------------+------+-----+---------+----------------+


/*APAGANDO UMA COLUNA*/

ALTER TABLE PRODUTOS
DROP COLUMN PESO;

DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/*ADICIONANDO UMA COLUNA EM UMA ORDEM ESPECÍFICA*/

ALTER TABLE PRODUTOS
ADD COLUMN PESO FLOAT(10,2) NOT NULL
AFTER NOME_PRODUTO;

 DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                |/*POSIÇÃO ESPECÍFICA*/
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/*ADICIONANDO UMA COLUNA NA PRIMEIRA POSIÇÃO*/

ALTER TABLE PRODUTOS
ADD COLUMN  PESO FLOAT(10,2) NOT NULL
FIRST;

 DESC PRODUTOS;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| PESO           | float(10,2) | NO   |     | NULL    |                | /*PRIMEIRA POSIÇÃO*/
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------



