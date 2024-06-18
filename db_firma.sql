CREATE DATABASE firma;
USE firma;

DROP TABLE tbl_produto

CREATE TABLE tbl_produto (
	id_produto	int					NOT NULL,
	nome		varchar(100)		NOT NULL,
	categoria	varchar(50)			NOT NULL,
	preco		float				NOT NULL,
	primary Key (id_produto),
);

DROP TABLE tbl_cliente

CREATE TABLE tbl_cliente (
	id_cliente		int				NOT NULL,
	nome			varchar(100)	NOT NULL,
	endereco		varchar(100)	NOT NULL,
	telefone		varchar(50)		NOT NULL,
	status			varchar(50)		NOT NULL,
	primary key (id_cliente),
);

DROP TABLE tbl_pedido

CREATE TABLE tbl_pedido(
	numero		int		NOT NULL,
	id_cliente	int		NOT NULL,
	id_produto	int		NOT NULL,
	data		date	NOT NULL,
	quantidade	int		NOT NULL,
	primary key (numero),
	FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id_cliente),
	FOREIGN KEY (id_produto) REFERENCES tbl_produto(id_produto),
);

INSERT INTO tbl_cliente
	(id_cliente, nome, endereco, telefone, status) VALUES
	(1234, 'Henrique', 'Rua Fulano', '(11) 98765-4321', 'Bom'), 
	(0987, 'Paulo', 'Rua Deltrano', '(41) 79765-1354', 'Medio'),
	(6855, 'André', 'Rua Ciclano', '(23) 49524-5245', 'Ruim'),
	(5432, 'Samuel', 'Rua Ceu Claro', '(55) 87639-3267', 'Bom'),

INSERT INTO tbl_produto (id_produto, nome, categoria, preco) VALUES
	(123, 'bolacha', 'ALIMENTO', 5.00),
	(124, 'Manteiga', 'ALIMENTO', 10.00)

INSERT INTO tbl_pedido
	(numero, id_cliente, id_produto, data, quantidade) VALUES
	(8955, 1234, 123, '2024-06-11', 50)
	

SELECT * FROM tbl_cliente

SELECT * FROM tbl_produto

SELECT * FROM tbl_produto