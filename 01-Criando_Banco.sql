DROP DATABASE COMERCIO;


CREATE DATABASE COMERCIO;

USE COMERCIO;


-- TABELA DE CLIENTES:

CREATE TABLE CLIENTE(


	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30) NOT NULL,
	SEXO ENUM ('M', 'F') NOT NULL,
	EMAIL VARCHAR(30) UNIQUE,
	CPF VARCHAR (15) UNIQUE

);

--TABELA DE ENDEREÇOS:

CREATE TABLE ENDERECOS(

	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO VARCHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE, --RELACIONAMENTO (1X1)
	FOREIGN KEY(ID_CLIENTE)REFERENCES CLIENTE(IDCLIENTE)

);

--TABELA TELEFONE

CREATE TABLE TELEFONE (

	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	NUMERO VARCHAR(10)NOT NULL,
	ID_CLIENTE INT, -- RELACIONAMENTO (1XN)
	FOREIGN KEY(ID_CLIENTE)REFERENCES CLIENTE(IDCLIENTE)
	
);