USE pedido_venda;

-- TYPE = ALL. Percorreu todos os registros.
EXPLAIN SELECT * FROM cliente 
	WHERE nome = 'João Silva';

ALTER TABLE cliente
	ADD INDEX ix_nome (nome);

-- TYPE = REF. Modificação na busca.
EXPLAIN SELECT * FROM cliente 
	WHERE nome = 'João Silva';