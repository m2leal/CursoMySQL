USE pedido_venda;

INSERT INTO cliente (nome, email, data_nascimento)
	values ('Marcio', 'marcio@email.com', '1984-04-26');

INSERT INTO cliente (nome, email, data_nascimento)
	values ('Marcio', 'marcio2@email.com', '1990-04-26');

SELECT DISTINCT nome FROM cliente;

