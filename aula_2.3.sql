ALTER TABLE pedido
	ADD COLUMN cliente_id BIGINT,
    ADD CONSTRAINT fk_cliente_id
		FOREIGN KEY (cliente_id) REFERENCES cliente(id);
        
INSERT INTO pedido (data_criacao, observacao, data_entrega, valor_frete, valor_total, cliente_id)
	VALUES ('2014-08-20', 'Pedido urgente', '2014-08-22', 30.22, 400.00, 1);
    
SELECT * FROM pedido;
