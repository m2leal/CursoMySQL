USE pedido_venda;

SELECT * FROM pedido;

INSERT INTO pedido (data_criacao, data_entrega, valor_frete, valor_total, cliente_id)
	VALUES (now(), '2014-08-24', 10.00, 100.00, 1);

SELECT * FROM pedido
	WHERE MONTH(data_criacao) = 7
	 AND YEAR(data_criacao) = 2014;

SELECT * FROM pedido
	WHERE data_criacao >= '2014-07-01 00:00:00'
	  AND data_criacao <= '2014-07-31 23:59:59'