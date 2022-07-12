USE pedido_venda;

-- Filtro por nome
SELECT * FROM cliente
	WHERE nome = 'João Silva';

-- Filtro por data    
SELECT * from cliente
	WHERE data_nascimento > '1991-01-01';
    
SELECT * FROM pedido
	WHERE observacao IS NOT NULL
      AND valor_total > 200;