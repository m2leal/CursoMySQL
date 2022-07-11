CREATE DATABASE pedido_venda; -- Criar um novo schema
USE pedido_venda; -- usar schema criado

-- criando tabelas
CREATE TABLE pedido_venda.cliente (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	email VARCHAR(50),
	data_nascimento DATE
) engine=InnoDB;

CREATE TABLE pedido (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	data_criacao DATETIME,
	observacao TEXT,
	data_entrega DATE,
	valor_frete DECIMAL(6,2),
	valor_total DECIMAL(10,2)
) engine=InnoDB;

/*
Acesso por select e insert para usuario 'algaworks' pela máquina 'localhost'
em todas as tabelas do schema 'pedido_venda'
*/
grant select, insert on pedido_venda.* to 'algaworks'@'localhost'
FLUSH PRIVILEGES;

SHOW GRANTS;

-- inserindo valores
INSERT INTO cliente(nome, email, data_nascimento)
	VALUES ('João Silva', 'joao@joao.com', '1990-10-10');
	
INSERT INTO cliente(nome, email, data_nascimento)
	VALUES ('Maria Santos', 'maria@maria.com', '1991-02-20');
	
-- mostrando todos os valores inseridos de todas as colunas
SELECT * FROM cliente;

-- selecionando colunas específicas
SELECT nome FROM cliente;
SELECT nome,email FROM cliente;

-- Inserindo e ignorando uma coluna
INSERT INTO pedido (data_criacao, data_entrega, valor_frete, valor_total)
	VALUES('2014-06-10 10:03:20', '2014-06-12', 30.25, 352.50);
	
SELECT * FROM pedido;